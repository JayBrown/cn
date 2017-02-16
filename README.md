The **cn** command line interface to CommonNumerics routines has been published by Apple as part of their **[Open Source](https://opensource.apple.com)** project.

It belongs to the **[CommonCrypto library](https://opensource.apple.com/source/CommonCrypto/)**, but it has not been built/installed into macOS.

You can **[install cn](https://github.com/JayBrown/cn-tap)** using **[Homebrew](https://brew.sh)** (recommended) with `brew tap JayBrown/cn && brew install cn`, or you can **manually make/build** with `make clean` and `make cn`.

## Functionality (man page)
```
cn(1)                     BSD General Commands Manual                    cn(1)

NAME
     cn -- Command line interface to CommonNumerics routines.

SYNOPSIS
     cn [-p prompt] [command] [command_options] [command_args]

DESCRIPTION
     A simple command line utility allowing you to perform CRC and Base Encode/Decode with the Common Numerics functions.

     cn has the following standard options for all sub-commands:

     -h            Show help information.

     -a            Use the specified algorithm.  The CRC, Encode, and Decode commands have various algorithms that can be used
                   on data provided to them.

     -s -<string>  Performs the operation on the specified string value.

     -v            Function in Verbose mode.

CN COMMAND SUMMARY
     cn currently only provides functions for two activities: CRC calculation and Base Encoding and Decoding (base16, base32,
     base64).

     Here are brief descriptions of all the cn commands:

     crc            Perform a CRC on the data provided either as a string or on stdin.

                    Algorithms
                    10 - kCN_CRC_8
                    11 - kCN_CRC_8_ICODE
                    12 - kCN_CRC_8_ITU
                    13 - kCN_CRC_8_ROHC
                    14 - kCN_CRC_8_WCDMA
                    20 - kCN_CRC_16
                    21 - kCN_CRC_16_CCITT_TRUE
                    22 - kCN_CRC_16_CCITT_FALSE
                    23 - kCN_CRC_16_USB
                    24 - kCN_CRC_16_XMODEM
                    25 - kCN_CRC_16_DECT_R
                    26 - kCN_CRC_16_DECT_X
                    27 - kCN_CRC_16_ICODE
                    28 - kCN_CRC_16_VERIFONE
                    29 - kCN_CRC_16_A
                    30 - kCN_CRC_16_B
                    31 - kCN_CRC_16_Fletcher
                    40 - kCN_CRC_32_Adler
                    41 - kCN_CRC_32
                    42 - kCN_CRC_32_CASTAGNOLI
                    43 - kCN_CRC_32_BZIP2
                    44 - kCN_CRC_32_MPEG_2
                    45 - kCN_CRC_32_POSIX
                    46 - kCN_CRC_32_XFER
                    60 - kCN_CRC_64_ECMA_182

     Encode|Decode  Encode or Decode data provided either as a string or on stdin using one of the algorithms specified below.

                    Algorithms
                    1 - kCNEncodingBase64
                    2 - kCNEncodingBase32
                    3 - kCNEncodingBase32Recovery
                    4 - kCNEncodingBase32HEX
                    5 - kCNEncodingBase16

ENVIRONMENT
     CN_READ_SIZE  The "read size" to use when processing incoming data.

     CN_WIDTH      The number of columns in which to output data when performing a base encoding.  The default is 64 columns.

HISTORY
     cn was introduced in Mac OS X version 10.9 and iOS version 7.0.

Darwin                         February 16, 2017                        Darwin
```
