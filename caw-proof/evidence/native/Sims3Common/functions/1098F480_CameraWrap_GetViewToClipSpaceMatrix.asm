# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1098f480..1098f4ae; CameraWrap_GetViewToClipSpaceMatrix
1098f480: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
1098f484: 83ec40  SUB ESP,0x40
1098f487: 56  PUSH ESI
1098f488: 57  PUSH EDI
1098f489: 83c070  ADD EAX,0x70
1098f48c: 50  PUSH EAX
1098f48d: 8d4c240c  LEA ECX,[ESP + 0xc]
1098f491: 51  PUSH ECX
1098f492: e8890bffff  CALL 0x10980020
1098f497: 8bf0  MOV ESI,EAX
1098f499: 8b442454  MOV EAX,dword ptr [ESP + 0x54]
1098f49d: 83c408  ADD ESP,0x8
1098f4a0: b910000000  MOV ECX,0x10
1098f4a5: 8bf8  MOV EDI,EAX
1098f4a7: f3a5  MOVSD.REP ES:EDI,ESI
1098f4a9: 5f  POP EDI
1098f4aa: 5e  POP ESI
1098f4ab: 83c440  ADD ESP,0x40
1098f4ae: c3  RET
