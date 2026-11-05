# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 TileQuarterList_AnyPredicateFailure(undefined4 param_1, int * param_2, undefined * param_3)
Owned ranges: [[00acfe30, 00acfe4c] [00acfe50, 00acfe78]]

00acfe30  53  PUSH EBX
00acfe31  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00acfe35  55  PUSH EBP
00acfe36  56  PUSH ESI
00acfe37  57  PUSH EDI
00acfe38  8b7b04  MOV EDI,dword ptr [EBX + 0x4]
00acfe3b  2b3b  SUB EDI,dword ptr [EBX]
00acfe3d  be00000000  MOV ESI,0x0
00acfe42  c1ff02  SAR EDI,0x2
00acfe45  7424  JZ 0x00acfe6b
00acfe47  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
00acfe4b  eb03  JMP 0x00acfe50
00acfe4d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00acfe50  8b03  MOV EAX,dword ptr [EBX]
00acfe52  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00acfe56  8d04b0  LEA EAX,[EAX + ESI*0x4]
00acfe59  50  PUSH EAX
00acfe5a  51  PUSH ECX
00acfe5b  ffd5  CALL EBP
00acfe5d  83c408  ADD ESP,0x8
00acfe60  84c0  TEST AL,AL
00acfe62  750e  JNZ 0x00acfe72
00acfe64  83c601  ADD ESI,0x1
00acfe67  3bf7  CMP ESI,EDI
00acfe69  72e5  JC 0x00acfe50
00acfe6b  5f  POP EDI
00acfe6c  5e  POP ESI
00acfe6d  5d  POP EBP
00acfe6e  32c0  XOR AL,AL
00acfe70  5b  POP EBX
00acfe71  c3  RET
00acfe72  5f  POP EDI
00acfe73  5e  POP ESI
00acfe74  5d  POP EBP
00acfe75  b001  MOV AL,0x1
00acfe77  5b  POP EBX
00acfe78  c3  RET
