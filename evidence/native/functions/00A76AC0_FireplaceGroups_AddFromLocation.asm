# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FireplaceGroups_AddFromLocation(void * this, pointer location, pointer objectIds)
Owned ranges: [[00a76ac0, 00a76b10]]

00a76ac0  51  PUSH ECX
00a76ac1  56  PUSH ESI
00a76ac2  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00a76ac6  f30f1006  MOVSS XMM0,dword ptr [ESI]
00a76aca  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00a76ad0  f30f104604  MOVSS XMM0,dword ptr [ESI + 0x4]
00a76ad5  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00a76adb  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00a76adf  57  PUSH EDI
00a76ae0  8bf9  MOV EDI,ECX
00a76ae2  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00a76ae6  50  PUSH EAX
00a76ae7  51  PUSH ECX
00a76ae8  e8235c0800  CALL 0x00afc710
00a76aed  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a76af0  52  PUSH EDX
00a76af1  50  PUSH EAX
00a76af2  e8195c0800  CALL 0x00afc710
00a76af7  8bf0  MOV ESI,EAX
00a76af9  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00a76afd  83c410  ADD ESP,0x10
00a76b00  50  PUSH EAX
00a76b01  56  PUSH ESI
00a76b02  8bcf  MOV ECX,EDI
00a76b04  e8e7feffff  CALL 0x00a769f0
00a76b09  5f  POP EDI
00a76b0a  8bc6  MOV EAX,ESI
00a76b0c  5e  POP ESI
00a76b0d  59  POP ECX
00a76b0e  c20800  RET 0x8
