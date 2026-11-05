# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool CurvedPoolTool_AdmitDescriptionProduct(void * this, void * description)
Owned ranges: [[00cd5cc0, 00cd5db2]]

00cd5cc0  56  PUSH ESI
00cd5cc1  57  PUSH EDI
00cd5cc2  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00cd5cc6  57  PUSH EDI
00cd5cc7  8bf1  MOV ESI,ECX
00cd5cc9  e862d0ffff  CALL 0x00cd2d30
00cd5cce  84c0  TEST AL,AL
00cd5cd0  744f  JZ 0x00cd5d21
00cd5cd2  8bce  MOV ECX,ESI
00cd5cd4  e8f7faffff  CALL 0x00cd57d0
00cd5cd9  85ff  TEST EDI,EDI
00cd5cdb  0f84cb000000  JZ 0x00cd5dac
00cd5ce1  8bcf  MOV ECX,EDI
00cd5ce3  e8f89d0100  CALL 0x00cefae0
00cd5ce8  8b08  MOV ECX,dword ptr [EAX]
00cd5cea  894e60  MOV dword ptr [ESI + 0x60],ECX
00cd5ced  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00cd5cf0  8d5660  LEA EDX,[ESI + 0x60]
00cd5cf3  894a04  MOV dword ptr [EDX + 0x4],ECX
00cd5cf6  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00cd5cf9  894a08  MOV dword ptr [EDX + 0x8],ECX
00cd5cfc  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00cd5cff  89420c  MOV dword ptr [EDX + 0xc],EAX
00cd5d02  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cd5d08  85c9  TEST ECX,ECX
00cd5d0a  7415  JZ 0x00cd5d21
00cd5d0c  52  PUSH EDX
00cd5d0d  e8ce90fbff  CALL 0x00c8ede0
00cd5d12  85c0  TEST EAX,EAX
00cd5d14  7512  JNZ 0x00cd5d28
00cd5d16  8bce  MOV ECX,ESI
00cd5d18  c6465401  MOV byte ptr [ESI + 0x54],0x1
00cd5d1c  e82ffbffff  CALL 0x00cd5850
00cd5d21  5f  POP EDI
00cd5d22  32c0  XOR AL,AL
00cd5d24  5e  POP ESI
00cd5d25  c20400  RET 0x4
00cd5d28  8b88e0000000  MOV ECX,dword ptr [EAX + 0xe0]
00cd5d2e  898ea8000000  MOV dword ptr [ESI + 0xa8],ECX
00cd5d34  8b90e4000000  MOV EDX,dword ptr [EAX + 0xe4]
00cd5d3a  8996ac000000  MOV dword ptr [ESI + 0xac],EDX
00cd5d40  8b8888000000  MOV ECX,dword ptr [EAX + 0x88]
00cd5d46  898e18010000  MOV dword ptr [ESI + 0x118],ECX
00cd5d4c  8b90c0000000  MOV EDX,dword ptr [EAX + 0xc0]
00cd5d52  895670  MOV dword ptr [ESI + 0x70],EDX
00cd5d55  8b88c4000000  MOV ECX,dword ptr [EAX + 0xc4]
00cd5d5b  894e74  MOV dword ptr [ESI + 0x74],ECX
00cd5d5e  8b90c8000000  MOV EDX,dword ptr [EAX + 0xc8]
00cd5d64  895678  MOV dword ptr [ESI + 0x78],EDX
00cd5d67  8b88cc000000  MOV ECX,dword ptr [EAX + 0xcc]
00cd5d6d  894e7c  MOV dword ptr [ESI + 0x7c],ECX
00cd5d70  8b90b0000000  MOV EDX,dword ptr [EAX + 0xb0]
00cd5d76  05b0000000  ADD EAX,0xb0
00cd5d7b  899680000000  MOV dword ptr [ESI + 0x80],EDX
00cd5d81  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00cd5d84  898e84000000  MOV dword ptr [ESI + 0x84],ECX
00cd5d8a  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00cd5d8d  899688000000  MOV dword ptr [ESI + 0x88],EDX
00cd5d93  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00cd5d96  6a01  PUSH 0x1
00cd5d98  8bce  MOV ECX,ESI
00cd5d9a  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00cd5da0  e8dbfbffff  CALL 0x00cd5980
00cd5da5  8bce  MOV ECX,ESI
00cd5da7  e8b4f1ffff  CALL 0x00cd4f60
00cd5dac  5f  POP EDI
00cd5dad  b001  MOV AL,0x1
00cd5daf  5e  POP ESI
00cd5db0  c20400  RET 0x4
