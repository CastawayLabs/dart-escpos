/*
 * esc_pos_printer
 * Created by Andrey Ushakov
 * 
 * Copyright (c) 2019-2020. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'dart:io';
import 'ticket.dart';

class PosPrintResult {
  const PosPrintResult._internal(this.value);
  final int value;
  static const success = PosPrintResult._internal(1);
  static const timeout = PosPrintResult._internal(2);
  static const printerNotSelected = PosPrintResult._internal(3);
  static const ticketEmpty = PosPrintResult._internal(4);
  static const printInProgress = PosPrintResult._internal(5);
  static const scanInProgress = PosPrintResult._internal(6);

  String get msg {
    if (value == PosPrintResult.success.value) {
      return 'Success';
    } else if (value == PosPrintResult.timeout.value) {
      return 'Error. Printer connection timeout';
    } else if (value == PosPrintResult.printerNotSelected.value) {
      return 'Error. Printer not selected';
    } else if (value == PosPrintResult.ticketEmpty.value) {
      return 'Error. Ticket is empty';
    } else if (value == PosPrintResult.printInProgress.value) {
      return 'Error. Another print in progress';
    } else if (value == PosPrintResult.scanInProgress.value) {
      return 'Error. Printer scanning in progress';
    } else {
      return 'Unknown error';
    }
  }
}

/// Printer Network Manager
class PrinterNetworkManager {
  String _host = '';
  int _port = 9100;
  Duration _timeout = Duration(seconds: 5);

  /// Select a network printer
  ///
  /// [timeout] is used to specify the maximum allowed time to wait
  /// for a connection to be established.
  void selectPrinter(
    String host, {
    int port = 9100,
    Duration timeout = const Duration(seconds: 5),
  }) {
    _host = host;
    _port = port;
    _timeout = timeout;
  }

  Future<PosPrintResult> printTicket(List<int> data) {
    if (_host.isEmpty) {
      return Future<PosPrintResult>.value(PosPrintResult.printerNotSelected);
    } else if (data.isEmpty) {
      return Future<PosPrintResult>.value(PosPrintResult.ticketEmpty);
    }

    return Socket.connect(_host, _port, timeout: _timeout)
        .then((Socket socket) {
      socket.add(data);
      socket.destroy();
      return Future<PosPrintResult>.value(PosPrintResult.success);
    }).catchError((dynamic e) {
      return Future<PosPrintResult>.value(PosPrintResult.timeout);
    });
  }
}
