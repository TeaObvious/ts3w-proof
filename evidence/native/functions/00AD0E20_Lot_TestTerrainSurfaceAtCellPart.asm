# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: Lot_TestTerrainSurfaceAtCellPart
; Owned ranges: [[00ad0e20, 00ad0edb]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. Physical cdecl lot pointer plus packed cell-part pointer, two caller-cleaned stack words/plainRET; Boolean only inAL, upperEAX is not normalized. Require packed bytelevel+2==0. Fetch concrete four-key pattern block through A8FA90; compare first16-byte key against nullkey011EC8A0 with fourDWORD comparisons. Then reject ACF070, AD0470(lot,part,null,0) or AD0D00(lot,part,1,1,null) lowbyte results. Optional lotbyte+4BC additionally requires807670 ALtrue. This complete predicate includes water/collection/special admission beyond a host pattern-key bit. No inferred UInt32 Boolean, sign widening or child-policy names are adopted. Complete188ownedbytes; ABI/types/bytes unchanged.

00ad0e20  83ec40  SUB ESP,0x40
00ad0e23  57  PUSH EDI
00ad0e24  8b7c244c  MOV EDI,dword ptr [ESP + 0x4c]
00ad0e28  807f0200  CMP byte ptr [EDI + 0x2],0x0
00ad0e2c  7407  JZ 0x00ad0e35
00ad0e2e  32c0  XOR AL,AL
00ad0e30  5f  POP EDI
00ad0e31  83c440  ADD ESP,0x40
00ad0e34  c3  RET
00ad0e35  56  PUSH ESI
00ad0e36  8d4c2408  LEA ECX,[ESP + 0x8]
00ad0e3a  e831ac0200  CALL 0x00afba70
00ad0e3f  8b74244c  MOV ESI,dword ptr [ESP + 0x4c]
00ad0e43  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00ad0e49  8d442408  LEA EAX,[ESP + 0x8]
00ad0e4d  50  PUSH EAX
00ad0e4e  57  PUSH EDI
00ad0e4f  e83cecfbff  CALL 0x00a8fa90
00ad0e54  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00ad0e58  3b0da0c81e01  CMP ECX,dword ptr [0x011ec8a0]
00ad0e5e  756c  JNZ 0x00ad0ecc
00ad0e60  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00ad0e64  3b15a8c81e01  CMP EDX,dword ptr [0x011ec8a8]
00ad0e6a  7560  JNZ 0x00ad0ecc
00ad0e6c  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ad0e70  3b05acc81e01  CMP EAX,dword ptr [0x011ec8ac]
00ad0e76  7554  JNZ 0x00ad0ecc
00ad0e78  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00ad0e7c  3b0da4c81e01  CMP ECX,dword ptr [0x011ec8a4]
00ad0e82  7548  JNZ 0x00ad0ecc
00ad0e84  57  PUSH EDI
00ad0e85  56  PUSH ESI
00ad0e86  e8e5e1ffff  CALL 0x00acf070
00ad0e8b  83c408  ADD ESP,0x8
00ad0e8e  84c0  TEST AL,AL
00ad0e90  753a  JNZ 0x00ad0ecc
00ad0e92  6a00  PUSH 0x0
00ad0e94  6a00  PUSH 0x0
00ad0e96  57  PUSH EDI
00ad0e97  56  PUSH ESI
00ad0e98  e8d3f5ffff  CALL 0x00ad0470
00ad0e9d  83c410  ADD ESP,0x10
00ad0ea0  84c0  TEST AL,AL
00ad0ea2  7528  JNZ 0x00ad0ecc
00ad0ea4  6a00  PUSH 0x0
00ad0ea6  6a01  PUSH 0x1
00ad0ea8  6a01  PUSH 0x1
00ad0eaa  57  PUSH EDI
00ad0eab  56  PUSH ESI
00ad0eac  e84ffeffff  CALL 0x00ad0d00
00ad0eb1  83c414  ADD ESP,0x14
00ad0eb4  84c0  TEST AL,AL
00ad0eb6  7514  JNZ 0x00ad0ecc
00ad0eb8  3886bc040000  CMP byte ptr [ESI + 0x4bc],AL
00ad0ebe  7414  JZ 0x00ad0ed4
00ad0ec0  57  PUSH EDI
00ad0ec1  8bce  MOV ECX,ESI
00ad0ec3  e8a867d3ff  CALL 0x00807670
00ad0ec8  84c0  TEST AL,AL
00ad0eca  7508  JNZ 0x00ad0ed4
00ad0ecc  5e  POP ESI
00ad0ecd  32c0  XOR AL,AL
00ad0ecf  5f  POP EDI
00ad0ed0  83c440  ADD ESP,0x40
00ad0ed3  c3  RET
00ad0ed4  5e  POP ESI
00ad0ed5  b001  MOV AL,0x1
00ad0ed7  5f  POP EDI
00ad0ed8  83c440  ADD ESP,0x40
00ad0edb  c3  RET
