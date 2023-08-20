## [6.0.0-test]

- Upgrade dependencies

## [5.0.2]

- Add NetworkPrinterManager
## [5.0.0]

- Merge esc_pos_utils into this package
- Add setModeReadOnline which queries if printer is available
- Rename to escpos

## [4.0.3]

- Added optional delay param to `disconnect` method

## [4.0.2]

- Fixed IP bug

## [4.0.1]

- `NetworkPrinter`: added `paperSize`, `profile`, `host`, `port` getters

## [4.0.0]

- New code generation concept: instead of generating the whole ticket, commands sent separately for each command
- `PrinterNetworkManager` replaced by `NetworkPrinter`
- Bump esc_pos_utils

## [3.2.9]

- Bump esc_pos_utils

## [3.2.8]

- Bump esc_pos_utils

## [3.2.7]

- Bump esc_pos_utils

## [3.2.6]

- Bump esc_pos_utils

## [3.2.5]

- Updated example and README (using CapabilityProfiles)
- Bump esc_pos_utils

## [3.2.4]

- Bump esc_pos_utils

## [3.2.3]

- Bump esc_pos_utils

## [3.2.2]

- Bump esc_pos_utils

## [3.2.1]

- Bump esc_pos_utils

## [3.2.0]

- Bump esc_pos_utils

## [3.1.6]

- Bump esc_pos_utils

## [3.1.5]

- Updated `esc_pos_utils` package version to `0.3.5`.

## [3.1.4]

- Updated `esc_pos_utils` package version to `0.3.4`.

## [3.1.3]

- Updated `esc_pos_utils` package version to `0.3.3`.

## [3.1.2]

- Updated `esc_pos_utils` package version to `0.3.2`.

## [3.1.1]

- Updated `esc_pos_utils` package version to `0.3.1` (Open Cash Drawer).

## [3.1.0]

- Updated `esc_pos_utils` package version to `0.3.0` (Image and Barcode alignment).

## [3.0.2]

- Updated `esc_pos_utils` package version

## [3.0.1]

- Removed rxdart dependency

## [3.0.0]

- Basic ESC/POS classes moved to [esc_pos_utils](https://github.com/andrey-ushakov/esc_pos_utils) library
- Bluetooth printing moved to [esc_pos_bluetooth](https://github.com/andrey-ushakov/esc_pos_bluetooth) library
- This library is used to print using a WiFi/Ethernet printer

## [2.1.2]

- Bluetooth printing support for Android

## [2.1.0]

- Printer class replaced by PrinterNetworkManager
- Generate tickets using Ticket class
- Unified interfaces for WiFi/Bluetooth printings
- Better error handling using PosPrintResult class
- Examples updated

## [2.0.0]

- Bluetooth printers support (beta version, iOS-only)

## [1.5.0]

- printlnMixedKanji merged to println
- Can print rows/cols with mixed chinese/non-chinese texts

## [1.4.1]

- Print mixed (chinese + latin) text. Only for printers supporting Kanji mode

## [1.4.0]

- Print barcodes

## [1.3.2]

- Added alternative printImageRaster method using (GS v 0) obsolete command
- Code refactoring

## [1.3.1]

- Removed raw lib
- Code refactoring

## [1.3.0]

- Image printing method has been improved
- Using ESC \* command to print images instead of outdated GS v 0
- Added print image Flutter example

## [1.2.0]

- Printing images (beta)

## [1.1.3]

- printCodeTable bug fixed
- Updated test print example

## [1.1.2]

- Better alignment

## [1.1.1]

- Fixed columns alignment bug

## [1.1.0]

- Added code page support

## [1.0.2]

- Send raw command(s)
- Turn 90° clockwise rotation mode on/off
- Flutter example: discover active Wi-Fi printers
- Select character code table

## [1.0.1]

- exported PosColumn

## [1.0.0]

- Removed PosString class
- Added PosStyles and PosColumn classes
- Updated examples and readme

## [0.9.0] - [0.9.1]

- Initial release
- Added basic functions (cut paper, write line, ...)
- Text styling (bold, underline, reverted, ...)
- Text align
- Table row printing (up to 12 columns of different width)
