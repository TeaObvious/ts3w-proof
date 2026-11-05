# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ByteVector_ResizeZeroed(void * this, uint elementCount)
Owned ranges: [[00412e20, 00412e6f]]

00412e20  56  PUSH ESI
00412e21  57  PUSH EDI
00412e22  8bf9  MOV EDI,ECX
00412e24  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00412e27  8b07  MOV EAX,dword ptr [EDI]
00412e29  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00412e2d  8bd6  MOV EDX,ESI
00412e2f  2bd0  SUB EDX,EAX
00412e31  3bca  CMP ECX,EDX
00412e33  761c  JBE 0x00412e51
00412e35  8d54240c  LEA EDX,[ESP + 0xc]
00412e39  2bc6  SUB EAX,ESI
00412e3b  52  PUSH EDX
00412e3c  03c1  ADD EAX,ECX
00412e3e  50  PUSH EAX
00412e3f  56  PUSH ESI
00412e40  8bcf  MOV ECX,EDI
00412e42  c644241800  MOV byte ptr [ESP + 0x18],0x0
00412e47  e874c67500  CALL 0x00b6f4c0
00412e4c  5f  POP EDI
00412e4d  5e  POP ESI
00412e4e  c20400  RET 0x4
00412e51  53  PUSH EBX
00412e52  8d1c08  LEA EBX,[EAX + ECX*0x1]
00412e55  8bc6  MOV EAX,ESI
00412e57  2bc6  SUB EAX,ESI
00412e59  50  PUSH EAX
00412e5a  56  PUSH ESI
00412e5b  53  PUSH EBX
00412e5c  ff158866f900  CALL dword ptr [0x00f96688]
00412e62  2bde  SUB EBX,ESI
00412e64  015f04  ADD dword ptr [EDI + 0x4],EBX
00412e67  83c40c  ADD ESP,0xc
00412e6a  5b  POP EBX
00412e6b  5f  POP EDI
00412e6c  5e  POP ESI
00412e6d  c20400  RET 0x4
