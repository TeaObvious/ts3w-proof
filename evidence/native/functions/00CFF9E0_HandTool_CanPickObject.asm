# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool HandTool_CanPickObject(void * this, void * param_1)
Owned ranges: [[00cff9e0, 00cffa86]]

00cff9e0  56  PUSH ESI
00cff9e1  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00cff9e5  85f6  TEST ESI,ESI
00cff9e7  7506  JNZ 0x00cff9ef
00cff9e9  32c0  XOR AL,AL
00cff9eb  5e  POP ESI
00cff9ec  c20400  RET 0x4
00cff9ef  53  PUSH EBX
00cff9f0  57  PUSH EDI
00cff9f1  8db970020000  LEA EDI,[ECX + 0x270]
00cff9f7  8bcf  MOV ECX,EDI
00cff9f9  b301  MOV BL,0x1
00cff9fb  e8d07dddff  CALL 0x00ad77d0
00cffa00  56  PUSH ESI
00cffa01  e87a4fe0ff  CALL 0x00b04980
00cffa06  83c404  ADD ESP,0x4
00cffa09  84c0  TEST AL,AL
00cffa0b  740b  JZ 0x00cffa18
00cffa0d  a0b9e71e01  MOV AL,[0x011ee7b9]
00cffa12  5f  POP EDI
00cffa13  5b  POP EBX
00cffa14  5e  POP ESI
00cffa15  c20400  RET 0x4
00cffa18  803db8e71e0100  CMP byte ptr [0x011ee7b8],0x0
00cffa1f  7408  JZ 0x00cffa29
00cffa21  5f  POP EDI
00cffa22  5b  POP EBX
00cffa23  b001  MOV AL,0x1
00cffa25  5e  POP ESI
00cffa26  c20400  RET 0x4
00cffa29  6a00  PUSH 0x0
00cffa2b  6a00  PUSH 0x0
00cffa2d  6a00  PUSH 0x0
00cffa2f  6a00  PUSH 0x0
00cffa31  57  PUSH EDI
00cffa32  56  PUSH ESI
00cffa33  e8f8d8fcff  CALL 0x00ccd330
00cffa38  83c418  ADD ESP,0x18
00cffa3b  84c0  TEST AL,AL
00cffa3d  7502  JNZ 0x00cffa41
00cffa3f  32db  XOR BL,BL
00cffa41  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cffa47  83c618  ADD ESI,0x18
00cffa4a  56  PUSH ESI
00cffa4b  e860f1f8ff  CALL 0x00c8ebb0
00cffa50  85c0  TEST EAX,EAX
00cffa52  7419  JZ 0x00cffa6d
00cffa54  8b80d0000000  MOV EAX,dword ptr [EAX + 0xd0]
00cffa5a  8bc8  MOV ECX,EAX
00cffa5c  c1e906  SHR ECX,0x6
00cffa5f  f6c101  TEST CL,0x1
00cffa62  7507  JNZ 0x00cffa6b
00cffa64  c1e807  SHR EAX,0x7
00cffa67  a801  TEST AL,0x1
00cffa69  7402  JZ 0x00cffa6d
00cffa6b  32db  XOR BL,BL
00cffa6d  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cffa73  56  PUSH ESI
00cffa74  e837f1f8ff  CALL 0x00c8ebb0
00cffa79  85c0  TEST EAX,EAX
00cffa7b  7502  JNZ 0x00cffa7f
00cffa7d  32db  XOR BL,BL
00cffa7f  5f  POP EDI
00cffa80  8ac3  MOV AL,BL
00cffa82  5b  POP EBX
00cffa83  5e  POP ESI
00cffa84  c20400  RET 0x4
