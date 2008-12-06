require 'machinery/arch'

module Machinery::Architecture

  ##
  # Erlang virtual machine (BEAM) opcodes.
  #
  # @see http://github.com/mfoemmel/erlang-otp/tree/master/lib/compiler/src/beam_opcodes.erl
  module BEAM extend RegisterMachine

    module Opcodes
      LABEL                = 0x01 # 001
      FUNC_INFO            = 0x02 # 002
      INT_CODE_END         = 0x03 # 003
      CALL                 = 0x04 # 004
      CALL_LAST            = 0x05 # 005
      CALL_ONLY            = 0x06 # 006
      CALL_EXT             = 0x07 # 007
      CALL_EXT_LAST        = 0x08 # 008
      BIF0                 = 0x09 # 009
      BIF1                 = 0x0a # 010
      BIF2                 = 0x0b # 011
      ALLOCATE             = 0x0c # 012
      ALLOCATE_HEAP        = 0x0d # 013
      ALLOCATE_ZERO        = 0x0e # 014
      ALLOCATE_HEAP_ZERO   = 0x0f # 015
      TEST_HEAP            = 0x10 # 016
      INIT                 = 0x11 # 017
      DEALLOCATE           = 0x12 # 018
      RETURN               = 0x13 # 019
      SEND                 = 0x14 # 020
      REMOVE_MESSAGE       = 0x15 # 021
      TIMEOUT              = 0x16 # 022
      LOOP_REC             = 0x17 # 023
      LOOP_REC_END         = 0x18 # 024
      WAIT                 = 0x19 # 025
      WAIT_TIMEOUT         = 0x1a # 026
      M_PLUS               = 0x1b # 027
      M_MINUS              = 0x1c # 028
      M_TIMES              = 0x1d # 029
      M_DIV                = 0x1e # 030
      INT_DIV              = 0x1f # 031
      INT_REM              = 0x20 # 032
      INT_BAND             = 0x21 # 033
      INT_BOR              = 0x22 # 034
      INT_BXOR             = 0x23 # 035
      INT_BSL              = 0x24 # 036
      INT_BSR              = 0x25 # 037
      INT_BNOT             = 0x26 # 038
      IS_LT                = 0x27 # 039
      IS_GE                = 0x28 # 040
      IS_EQ                = 0x29 # 041
      IS_NE                = 0x2a # 042
      IS_EQ_EXACT          = 0x2b # 043
      IS_NE_EXACT          = 0x2c # 044
      IS_INTEGER           = 0x2d # 045
      IS_FLOAT             = 0x2e # 046
      IS_NUMBER            = 0x2f # 047
      IS_ATOM              = 0x30 # 048
      IS_PID               = 0x31 # 049
      IS_REFERENCE         = 0x32 # 050
      IS_PORT              = 0x33 # 051
      IS_NIL               = 0x34 # 052
      IS_BINARY            = 0x35 # 053
      IS_CONSTANT          = 0x36 # 054
      IS_LIST              = 0x37 # 055
      IS_NONEMPTY_LIST     = 0x38 # 056
      IS_TUPLE             = 0x39 # 057
      TEST_ARITY           = 0x3a # 058
      SELECT_VAL           = 0x3b # 059
      SELECT_TUPLE_ARITY   = 0x3c # 060
      JUMP                 = 0x3d # 061
      CATCH                = 0x3e # 062
      CATCH_END            = 0x3f # 063
      MOVE                 = 0x40 # 064
      GET_LIST             = 0x41 # 065
      GET_TUPLE_ELEMENT    = 0x42 # 066
      SET_TUPLE_ELEMENT    = 0x43 # 067
      PUT_STRING           = 0x44 # 068
      PUT_LIST             = 0x45 # 069
      PUT_TUPLE            = 0x46 # 070
      PUT                  = 0x47 # 071
      BADMATCH             = 0x48 # 072
      IF_END               = 0x49 # 073
      CASE_END             = 0x4a # 074
      CALL_FUN             = 0x4b # 075
      MAKE_FUN             = 0x4c # 076
      IS_FUNCTION          = 0x4d # 077
      CALL_EXT_ONLY        = 0x4e # 078
      BS_START_MATCH       = 0x4f # 079
      BS_GET_INTEGER       = 0x50 # 080
      BS_GET_FLOAT         = 0x51 # 081
      BS_GET_BINARY        = 0x52 # 082
      BS_SKIP_BITS         = 0x53 # 083
      BS_TEST_TAIL         = 0x54 # 084
      BS_SAVE              = 0x55 # 085
      BS_RESTORE           = 0x56 # 086
      BS_INIT              = 0x57 # 087
      BS_FINAL             = 0x58 # 088
      BS_PUT_INTEGER       = 0x59 # 089
      BS_PUT_BINARY        = 0x5a # 090
      BS_PUT_FLOAT         = 0x5b # 091
      BS_PUT_STRING        = 0x5c # 092
      BS_NEED_BUF          = 0x5d # 093
      FCLEARERROR          = 0x5e # 094
      FCHECKERROR          = 0x5f # 095
      FMOVE                = 0x60 # 096
      FCONV                = 0x61 # 097
      FADD                 = 0x62 # 098
      FSUB                 = 0x63 # 099
      FMUL                 = 0x64 # 100
      FDIV                 = 0x65 # 101
      FNEGATE              = 0x66 # 102
      MAKE_FUN2            = 0x67 # 103
      TRY                  = 0x68 # 104
      TRY_END              = 0x69 # 105
      TRY_CASE             = 0x6a # 106
      TRY_CASE_END         = 0x6b # 107
      RAISE                = 0x6c # 108
      BS_INIT2             = 0x6d # 109
      BS_BITS_TO_BYTES     = 0x6e # 110
      BS_ADD               = 0x6f # 111
      APPLY                = 0x70 # 112
      APPLY_LAST           = 0x71 # 113
      IS_BOOLEAN           = 0x72 # 114
      IS_FUNCTION2         = 0x73 # 115
      BS_START_MATCH2      = 0x74 # 116
      BS_GET_INTEGER2      = 0x75 # 117
      BS_GET_FLOAT2        = 0x76 # 118
      BS_GET_BINARY2       = 0x77 # 119
      BS_SKIP_BITS2        = 0x78 # 120
      BS_TEST_TAIL2        = 0x79 # 121
      BS_SAVE2             = 0x7a # 122
      BS_RESTORE2          = 0x7b # 123
      GC_BIF1              = 0x7c # 124
      GC_BIF2              = 0x7d # 125
      BS_FINAL2            = 0x7e # 126
      BS_BITS_TO_BYTES2    = 0x7f # 127
      PUT_LITERAL          = 0x80 # 128
      IS_BITSTR            = 0x81 # 129
      BS_CONTEXT_TO_BINARY = 0x82 # 130
      BS_TEST_UNIT         = 0x83 # 131
      BS_MATCH_STRING      = 0x84 # 132
      BS_INIT_WRITABLE     = 0x85 # 133
      BS_APPEND            = 0x86 # 134
      BS_PRIVATE_APPEND    = 0x87 # 135
      TRIM                 = 0x88 # 136
      BS_INIT_BITS         = 0x89 # 137
      BS_GET_UTF8          = 0x8a # 138
      BS_SKIP_UTF8         = 0x8b # 139
      BS_GET_UTF16         = 0x8c # 140
      BS_SKIP_UTF16        = 0x8d # 141
      BS_GET_UTF32         = 0x8e # 142
      BS_SKIP_UTF32        = 0x8f # 143
      BS_UTF8_SIZE         = 0x90 # 144
      BS_PUT_UTF8          = 0x91 # 145
      BS_UTF16_SIZE        = 0x92 # 146
      BS_PUT_UTF16         = 0x93 # 147
      BS_PUT_UTF32         = 0x94 # 148
    end

    module Utilities #:nodoc:
      def self.parse_opcodes(filename = 'beam_opcodes.erl')
        opcodes = {}
        File.foreach(filename) do |line|
          next unless line =~ /^opname\((\d+)\) -> \{'?(\w+)'?,\d+\};$/
          opcodes[$1.to_i] = $2.upcase.to_sym
        end
        opcodes
      end
    end
  end

end

if $0 == __FILE__
  Machinery::Architecture::BEAM::Utilities.send(:parse_opcodes, *$*).sort.each do |opcode, opname|
    puts "%-20s = 0x%02x # %03d" % [opname, opcode, opcode]
  end
end
