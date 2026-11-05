# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: Lot_TestFloorSurfaceAtCellPart
; Owned ranges: [[00ad0ee0, 00ad0fbc]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. Physical cdecl lot and packed cell-part pointers, two caller-cleaned stack words/plainRET; AL-only Boolean despite inferred int return. A8FA90 fetches64-byte keyquad,7892B0 compares all64bytes against nullquad011EC8E0; equal fails. MOVSX reads signedbyteX/Z/level. Only when within signed lotbounds, repack same coordinates/level with partmask0F and callAB67D0(...,0), then reject region type3 or6 viaAFE300. Outside that bounds branch does not itself fail: it still reaches AD0D00(lot,part,1,1,null), whose ALtrue fails; otherwise AL1. This owner is not just nonzero catalogkey or universal bounds validation. Complete221ownedbytes; existing ABI/types/bytes retained.

00ad0ee0  83ec40  SUB ESP,0x40
00ad0ee3  56  PUSH ESI
00ad0ee4  57  PUSH EDI
00ad0ee5  8d4c2408  LEA ECX,[ESP + 0x8]
00ad0ee9  e882ab0200  CALL 0x00afba70
00ad0eee  8b742450  MOV ESI,dword ptr [ESP + 0x50]
00ad0ef2  8b7c244c  MOV EDI,dword ptr [ESP + 0x4c]
00ad0ef6  8b8f90020000  MOV ECX,dword ptr [EDI + 0x290]
00ad0efc  8d442408  LEA EAX,[ESP + 0x8]
00ad0f00  50  PUSH EAX
00ad0f01  56  PUSH ESI
00ad0f02  e889ebfbff  CALL 0x00a8fa90
00ad0f07  68e0c81e01  PUSH 0x11ec8e0
00ad0f0c  8d4c240c  LEA ECX,[ESP + 0xc]
00ad0f10  e89b83cbff  CALL 0x007892b0
00ad0f15  84c0  TEST AL,AL
00ad0f17  7408  JZ 0x00ad0f21
00ad0f19  5f  POP EDI
00ad0f1a  32c0  XOR AL,AL
00ad0f1c  5e  POP ESI
00ad0f1d  83c440  ADD ESP,0x40
00ad0f20  c3  RET
00ad0f21  0fbe06  MOVSX EAX,byte ptr [ESI]
00ad0f24  85c0  TEST EAX,EAX
00ad0f26  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ad0f2a  53  PUSH EBX
00ad0f2b  7c6a  JL 0x00ad0f97
00ad0f2d  3b8774010000  CMP EAX,dword ptr [EDI + 0x174]
00ad0f33  7d62  JGE 0x00ad0f97
00ad0f35  85c9  TEST ECX,ECX
00ad0f37  7c5e  JL 0x00ad0f97
00ad0f39  3b8f78010000  CMP ECX,dword ptr [EDI + 0x178]
00ad0f3f  7d56  JGE 0x00ad0f97
00ad0f41  0fbe4602  MOVSX EAX,byte ptr [ESI + 0x2]
00ad0f45  3b877c010000  CMP EAX,dword ptr [EDI + 0x17c]
00ad0f4b  7c4a  JL 0x00ad0f97
00ad0f4d  3b8780010000  CMP EAX,dword ptr [EDI + 0x180]
00ad0f53  7f42  JG 0x00ad0f97
00ad0f55  668b0e  MOV CX,word ptr [ESI]
00ad0f58  8a5602  MOV DL,byte ptr [ESI + 0x2]
00ad0f5b  6a00  PUSH 0x0
00ad0f5d  8d442454  LEA EAX,[ESP + 0x54]
00ad0f61  66894c2454  MOV word ptr [ESP + 0x54],CX
00ad0f66  50  PUSH EAX
00ad0f67  8bcf  MOV ECX,EDI
00ad0f69  8854245a  MOV byte ptr [ESP + 0x5a],DL
00ad0f6d  c644245b0f  MOV byte ptr [ESP + 0x5b],0xf
00ad0f72  e85958feff  CALL 0x00ab67d0
00ad0f77  8bd8  MOV EBX,EAX
00ad0f79  6a03  PUSH 0x3
00ad0f7b  53  PUSH EBX
00ad0f7c  e87fd30200  CALL 0x00afe300
00ad0f81  83c408  ADD ESP,0x8
00ad0f84  84c0  TEST AL,AL
00ad0f86  752c  JNZ 0x00ad0fb4
00ad0f88  6a06  PUSH 0x6
00ad0f8a  53  PUSH EBX
00ad0f8b  e870d30200  CALL 0x00afe300
00ad0f90  83c408  ADD ESP,0x8
00ad0f93  84c0  TEST AL,AL
00ad0f95  751d  JNZ 0x00ad0fb4
00ad0f97  6a00  PUSH 0x0
00ad0f99  6a01  PUSH 0x1
00ad0f9b  6a01  PUSH 0x1
00ad0f9d  56  PUSH ESI
00ad0f9e  57  PUSH EDI
00ad0f9f  e85cfdffff  CALL 0x00ad0d00
00ad0fa4  83c414  ADD ESP,0x14
00ad0fa7  84c0  TEST AL,AL
00ad0fa9  7509  JNZ 0x00ad0fb4
00ad0fab  5b  POP EBX
00ad0fac  5f  POP EDI
00ad0fad  b001  MOV AL,0x1
00ad0faf  5e  POP ESI
00ad0fb0  83c440  ADD ESP,0x40
00ad0fb3  c3  RET
00ad0fb4  5b  POP EBX
00ad0fb5  5f  POP EDI
00ad0fb6  32c0  XOR AL,AL
00ad0fb8  5e  POP ESI
00ad0fb9  83c440  ADD ESP,0x40
00ad0fbc  c3  RET
