# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: LotRenderer_ApplyDisplayLevel
Paired actual annotated Ghidra pseudocode: 00AE3BE0_LotRenderer_ApplyDisplayLevel.c
Owned body: [[00ae3be0, 00ae3c68]]
Envelope bytes=137

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00ae3be0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00ae3be4  56  PUSH ESI
00ae3be5  8bf1  MOV ESI,ECX
00ae3be7  3b4668  CMP EAX,dword ptr [ESI + 0x68]
00ae3bea  7c79  JL 0x00ae3c65
00ae3bec  8b4e6c  MOV ECX,dword ptr [ESI + 0x6c]
00ae3bef  83c101  ADD ECX,0x1
00ae3bf2  3bc1  CMP EAX,ECX
00ae3bf4  7f6f  JG 0x00ae3c65
00ae3bf6  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae3bfa  750a  JNZ 0x00ae3c06
00ae3bfc  89869c020000  MOV dword ptr [ESI + 0x29c],EAX
00ae3c02  5e  POP ESI
00ae3c03  c20800  RET 0x8
00ae3c06  3b869c020000  CMP EAX,dword ptr [ESI + 0x29c]
00ae3c0c  7507  JNZ 0x00ae3c15
00ae3c0e  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00ae3c13  7450  JZ 0x00ae3c65
00ae3c15  8b8e38020000  MOV ECX,dword ptr [ESI + 0x238]
00ae3c1b  85c9  TEST ECX,ECX
00ae3c1d  89869c020000  MOV dword ptr [ESI + 0x29c],EAX
00ae3c23  7405  JZ 0x00ae3c2a
00ae3c25  e8c6941600  CALL 0x00c4d0f0
00ae3c2a  8b8e48020000  MOV ECX,dword ptr [ESI + 0x248]
00ae3c30  85c9  TEST ECX,ECX
00ae3c32  7405  JZ 0x00ae3c39
00ae3c34  e87740f8ff  CALL 0x00a67cb0
00ae3c39  8b8e30020000  MOV ECX,dword ptr [ESI + 0x230]
00ae3c3f  85c9  TEST ECX,ECX
00ae3c41  7405  JZ 0x00ae3c48
00ae3c43  e898dbfbff  CALL 0x00aa17e0
00ae3c48  8b8e54020000  MOV ECX,dword ptr [ESI + 0x254]
00ae3c4e  85c9  TEST ECX,ECX
00ae3c50  740c  JZ 0x00ae3c5e
00ae3c52  8b969c020000  MOV EDX,dword ptr [ESI + 0x29c]
00ae3c58  52  PUSH EDX
00ae3c59  e8a2080400  CALL 0x00b24500
00ae3c5e  8bce  MOV ECX,ESI
00ae3c60  e8abceffff  CALL 0x00ae0b10
00ae3c65  5e  POP ESI
00ae3c66  c20800  RET 0x8

Owned instructions=41 owned bytes=137 nonowned bytes=0
