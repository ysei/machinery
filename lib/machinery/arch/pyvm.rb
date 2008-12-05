require 'machinery/arch'

module Machinery::Architecture

  ##
  # Python 2.6 virtual machine opcodes.
  #
  # @see bin/pyc-opcodes.py
  # @see doc/pyc/opcodes-2.6.txt
  module PythonVM
    STOP_CODE            = 0x00 # 000
    POP_TOP              = 0x01 # 001
    ROT_TWO              = 0x02 # 002
    ROT_THREE            = 0x03 # 003
    DUP_TOP              = 0x04 # 004
    ROT_FOUR             = 0x05 # 005
    NOP                  = 0x09 # 009
    UNARY_POSITIVE       = 0x0a # 010
    UNARY_NEGATIVE       = 0x0b # 011
    UNARY_NOT            = 0x0c # 012
    UNARY_CONVERT        = 0x0d # 013
    UNARY_INVERT         = 0x0f # 015
    LIST_APPEND          = 0x12 # 018
    BINARY_POWER         = 0x13 # 019
    BINARY_MULTIPLY      = 0x14 # 020
    BINARY_DIVIDE        = 0x15 # 021
    BINARY_MODULO        = 0x16 # 022
    BINARY_ADD           = 0x17 # 023
    BINARY_SUBTRACT      = 0x18 # 024
    BINARY_SUBSCR        = 0x19 # 025
    BINARY_FLOOR_DIVIDE  = 0x1a # 026
    BINARY_TRUE_DIVIDE   = 0x1b # 027
    INPLACE_FLOOR_DIVIDE = 0x1c # 028
    INPLACE_TRUE_DIVIDE  = 0x1d # 029
    SLICE                = 0x1e # 030
    SLICE_0              = 0x1e # 030 # SLICE+0
    SLICE_1              = 0x1f # 031 # SLICE+1
    SLICE_2              = 0x20 # 032 # SLICE+2
    SLICE_3              = 0x21 # 033 # SLICE+3
    STORE_SLICE          = 0x28 # 040
    STORE_SLICE_0        = 0x28 # 040 # STORE_SLICE+0
    STORE_SLICE_1        = 0x29 # 041 # STORE_SLICE+1
    STORE_SLICE_2        = 0x2a # 042 # STORE_SLICE+2
    STORE_SLICE_3        = 0x2b # 043 # STORE_SLICE+3
    DELETE_SLICE         = 0x32 # 050
    DELETE_SLICE_0       = 0x32 # 050 # DELETE_SLICE+0
    DELETE_SLICE_1       = 0x33 # 051 # DELETE_SLICE+1
    DELETE_SLICE_2       = 0x34 # 052 # DELETE_SLICE+2
    DELETE_SLICE_3       = 0x35 # 053 # DELETE_SLICE+3
    STORE_MAP            = 0x36 # 054
    INPLACE_ADD          = 0x37 # 055
    INPLACE_SUBTRACT     = 0x38 # 056
    INPLACE_MULTIPLY     = 0x39 # 057
    INPLACE_DIVIDE       = 0x3a # 058
    INPLACE_MODULO       = 0x3b # 059
    STORE_SUBSCR         = 0x3c # 060
    DELETE_SUBSCR        = 0x3d # 061
    BINARY_LSHIFT        = 0x3e # 062
    BINARY_RSHIFT        = 0x3f # 063
    BINARY_AND           = 0x40 # 064
    BINARY_XOR           = 0x41 # 065
    BINARY_OR            = 0x42 # 066
    INPLACE_POWER        = 0x43 # 067
    GET_ITER             = 0x44 # 068
    PRINT_EXPR           = 0x46 # 070
    PRINT_ITEM           = 0x47 # 071
    PRINT_NEWLINE        = 0x48 # 072
    PRINT_ITEM_TO        = 0x49 # 073
    PRINT_NEWLINE_TO     = 0x4a # 074
    INPLACE_LSHIFT       = 0x4b # 075
    INPLACE_RSHIFT       = 0x4c # 076
    INPLACE_AND          = 0x4d # 077
    INPLACE_XOR          = 0x4e # 078
    INPLACE_OR           = 0x4f # 079
    BREAK_LOOP           = 0x50 # 080
    WITH_CLEANUP         = 0x51 # 081
    LOAD_LOCALS          = 0x52 # 082
    RETURN_VALUE         = 0x53 # 083
    IMPORT_STAR          = 0x54 # 084
    EXEC_STMT            = 0x55 # 085
    YIELD_VALUE          = 0x56 # 086
    POP_BLOCK            = 0x57 # 087
    END_FINALLY          = 0x58 # 088
    BUILD_CLASS          = 0x59 # 089
    STORE_NAME           = 0x5a # 090
    DELETE_NAME          = 0x5b # 091
    UNPACK_SEQUENCE      = 0x5c # 092
    FOR_ITER             = 0x5d # 093
    STORE_ATTR           = 0x5f # 095
    DELETE_ATTR          = 0x60 # 096
    STORE_GLOBAL         = 0x61 # 097
    DELETE_GLOBAL        = 0x62 # 098
    DUP_TOPX             = 0x63 # 099
    LOAD_CONST           = 0x64 # 100
    LOAD_NAME            = 0x65 # 101
    BUILD_TUPLE          = 0x66 # 102
    BUILD_LIST           = 0x67 # 103
    BUILD_MAP            = 0x68 # 104
    LOAD_ATTR            = 0x69 # 105
    COMPARE_OP           = 0x6a # 106
    IMPORT_NAME          = 0x6b # 107
    IMPORT_FROM          = 0x6c # 108
    JUMP_FORWARD         = 0x6e # 110
    JUMP_IF_FALSE        = 0x6f # 111
    JUMP_IF_TRUE         = 0x70 # 112
    JUMP_ABSOLUTE        = 0x71 # 113
    LOAD_GLOBAL          = 0x74 # 116
    CONTINUE_LOOP        = 0x77 # 119
    SETUP_LOOP           = 0x78 # 120
    SETUP_EXCEPT         = 0x79 # 121
    SETUP_FINALLY        = 0x7a # 122
    LOAD_FAST            = 0x7c # 124
    STORE_FAST           = 0x7d # 125
    DELETE_FAST          = 0x7e # 126
    RAISE_VARARGS        = 0x82 # 130
    CALL_FUNCTION        = 0x83 # 131
    MAKE_FUNCTION        = 0x84 # 132
    BUILD_SLICE          = 0x85 # 133
    MAKE_CLOSURE         = 0x86 # 134
    LOAD_CLOSURE         = 0x87 # 135
    LOAD_DEREF           = 0x88 # 136
    STORE_DEREF          = 0x89 # 137
    CALL_FUNCTION_VAR    = 0x8c # 140
    CALL_FUNCTION_KW     = 0x8d # 141
    CALL_FUNCTION_VAR_KW = 0x8e # 142
    EXTENDED_ARG         = 0x8f # 143
  end

end