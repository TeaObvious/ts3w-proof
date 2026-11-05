# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FloorFeatureGeometry_InitializeDrawnTiles(void * this, int param_1, undefined1 param_2)
Owned ranges: [[00a7e2b0, 00a7e2e9] [00a7e2f0, 00a7e314] [00a7e320, 00a7e434]]

00a7e2b0  83ec24  SUB ESP,0x24
00a7e2b3  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00a7e2b7  53  PUSH EBX
00a7e2b8  8b5860  MOV EBX,dword ptr [EAX + 0x60]
00a7e2bb  8b4064  MOV EAX,dword ptr [EAX + 0x64]
00a7e2be  56  PUSH ESI
00a7e2bf  8bf1  MOV ESI,ECX
00a7e2c1  57  PUSH EDI
00a7e2c2  8dbe14020000  LEA EDI,[ESI + 0x214]
00a7e2c8  53  PUSH EBX
00a7e2c9  8bcf  MOV ECX,EDI
00a7e2cb  89742414  MOV dword ptr [ESP + 0x14],ESI
00a7e2cf  895c2424  MOV dword ptr [ESP + 0x24],EBX
00a7e2d3  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00a7e2d7  e8440fb2ff  CALL 0x0059f220
00a7e2dc  8b8e18020000  MOV ECX,dword ptr [ESI + 0x218]
00a7e2e2  8b07  MOV EAX,dword ptr [EDI]
00a7e2e4  3bc1  CMP EAX,ECX
00a7e2e6  741c  JZ 0x00a7e304
00a7e2e8  eb06  JMP 0x00a7e2f0
00a7e2ea  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00a7e2f0  c70000000000  MOV dword ptr [EAX],0x0
00a7e2f6  c7400400000000  MOV dword ptr [EAX + 0x4],0x0
00a7e2fd  83c008  ADD EAX,0x8
00a7e300  3bc1  CMP EAX,ECX
00a7e302  75ec  JNZ 0x00a7e2f0
00a7e304  33c0  XOR EAX,EAX
00a7e306  85db  TEST EBX,EBX
00a7e308  8944240c  MOV dword ptr [ESP + 0xc],EAX
00a7e30c  0f8e13010000  JLE 0x00a7e425
00a7e312  55  PUSH EBP
00a7e313  eb0f  JMP 0x00a7e324
00a7e315  eb098da424000000008bff  .byte eb098da424000000008bff ; NONOWNED envelope gap bytes
00a7e320  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00a7e324  8d8e14020000  LEA ECX,[ESI + 0x214]
00a7e32a  8b09  MOV ECX,dword ptr [ECX]
00a7e32c  33db  XOR EBX,EBX
00a7e32e  33ed  XOR EBP,EBP
00a7e330  395c241c  CMP dword ptr [ESP + 0x1c],EBX
00a7e334  bf01000000  MOV EDI,0x1
00a7e339  8d34c1  LEA ESI,[ECX + EAX*0x8]
00a7e33c  0f8ebd000000  JLE 0x00a7e3ff
00a7e342  8a54243c  MOV DL,byte ptr [ESP + 0x3c]
00a7e346  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00a7e34a  8854243a  MOV byte ptr [ESP + 0x3a],DL
00a7e34e  8d542418  LEA EDX,[ESP + 0x18]
00a7e352  88442438  MOV byte ptr [ESP + 0x38],AL
00a7e356  8b01  MOV EAX,dword ptr [ECX]
00a7e358  8b8098000000  MOV EAX,dword ptr [EAX + 0x98]
00a7e35e  52  PUSH EDX
00a7e35f  8d54243c  LEA EDX,[ESP + 0x3c]
00a7e363  52  PUSH EDX
00a7e364  885c2441  MOV byte ptr [ESP + 0x41],BL
00a7e368  c7442420ffff0000  MOV dword ptr [ESP + 0x20],0xffff
00a7e370  ffd0  CALL EAX
00a7e372  84c0  TEST AL,AL
00a7e374  7469  JZ 0x00a7e3df
00a7e376  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00a7e37a  33c9  XOR ECX,ECX
00a7e37c  8a6c2410  MOV CH,byte ptr [ESP + 0x10]
00a7e380  f30f1005142d0601  MOVSS XMM0,dword ptr [0x01062d14]
00a7e388  093e  OR dword ptr [ESI],EDI
00a7e38a  096e04  OR dword ptr [ESI + 0x4],EBP
00a7e38d  0fb7d0  MOVZX EDX,AX
00a7e390  8acb  MOV CL,BL
00a7e392  885c2429  MOV byte ptr [ESP + 0x29],BL
00a7e396  c644242a01  MOV byte ptr [ESP + 0x2a],0x1
00a7e39b  668944242c  MOV word ptr [ESP + 0x2c],AX
00a7e3a0  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00a7e3a6  c1e110  SHL ECX,0x10
00a7e3a9  0bca  OR ECX,EDX
00a7e3ab  894c2420  MOV dword ptr [ESP + 0x20],ECX
00a7e3af  8a4c2410  MOV CL,byte ptr [ESP + 0x10]
00a7e3b3  884c2428  MOV byte ptr [ESP + 0x28],CL
00a7e3b7  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00a7e3bb  8d542420  LEA EDX,[ESP + 0x20]
00a7e3bf  52  PUSH EDX
00a7e3c0  81c12c020000  ADD ECX,0x22c
00a7e3c6  e895efffff  CALL 0x00a7d360
00a7e3cb  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00a7e3cf  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00a7e3d3  8908  MOV dword ptr [EAX],ECX
00a7e3d5  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00a7e3d9  895004  MOV dword ptr [EAX + 0x4],EDX
00a7e3dc  894808  MOV dword ptr [EAX + 0x8],ECX
00a7e3df  6a00  PUSH 0x0
00a7e3e1  6a02  PUSH 0x2
00a7e3e3  55  PUSH EBP
00a7e3e4  57  PUSH EDI
00a7e3e5  83c301  ADD EBX,0x1
00a7e3e8  e833115000  CALL 0x00f7f520
00a7e3ed  3b5c241c  CMP EBX,dword ptr [ESP + 0x1c]
00a7e3f1  8bf8  MOV EDI,EAX
00a7e3f3  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a7e3f7  8bea  MOV EBP,EDX
00a7e3f9  0f8c43ffffff  JL 0x00a7e342
00a7e3ff  83c001  ADD EAX,0x1
00a7e402  3b442424  CMP EAX,dword ptr [ESP + 0x24]
00a7e406  89442410  MOV dword ptr [ESP + 0x10],EAX
00a7e40a  0f8c10ffffff  JL 0x00a7e320
00a7e410  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a7e414  5d  POP EBP
00a7e415  5f  POP EDI
00a7e416  5e  POP ESI
00a7e417  c6821002000001  MOV byte ptr [EDX + 0x210],0x1
00a7e41e  5b  POP EBX
00a7e41f  83c424  ADD ESP,0x24
00a7e422  c20800  RET 0x8
00a7e425  5f  POP EDI
00a7e426  c6861002000001  MOV byte ptr [ESI + 0x210],0x1
00a7e42d  5e  POP ESI
00a7e42e  5b  POP EBX
00a7e42f  83c424  ADD ESP,0x24
00a7e432  c20800  RET 0x8
