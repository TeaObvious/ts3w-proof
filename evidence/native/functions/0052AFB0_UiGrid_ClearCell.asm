# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0052AFB0_UiGrid_ClearCell.c
Owned ranges: [[0052afb0, 0052b05a]]

0052afb0  51  PUSH ECX
0052afb1  53  PUSH EBX
0052afb2  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
0052afb6  55  PUSH EBP
0052afb7  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
0052afbb  56  PUSH ESI
0052afbc  6a00  PUSH 0x0
0052afbe  8bf1  MOV ESI,ECX
0052afc0  8b06  MOV EAX,dword ptr [ESI]
0052afc2  8b90e0000000  MOV EDX,dword ptr [EAX + 0xe0]
0052afc8  55  PUSH EBP
0052afc9  53  PUSH EBX
0052afca  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
0052afcf  c644241b01  MOV byte ptr [ESP + 0x1b],0x1
0052afd4  ffd2  CALL EDX
0052afd6  84c0  TEST AL,AL
0052afd8  7405  JZ 0x0052afdf
0052afda  c644240e01  MOV byte ptr [ESP + 0xe],0x1
0052afdf  8d442418  LEA EAX,[ESP + 0x18]
0052afe3  50  PUSH EAX
0052afe4  55  PUSH EBP
0052afe5  53  PUSH EBX
0052afe6  8d8e30010000  LEA ECX,[ESI + 0x130]
0052afec  e81ffcffff  CALL 0x0052ac10
0052aff1  84c0  TEST AL,AL
0052aff3  745c  JZ 0x0052b051
0052aff5  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0052aff9  57  PUSH EDI
0052affa  6a01  PUSH 0x1
0052affc  6a01  PUSH 0x1
0052affe  6a01  PUSH 0x1
0052b000  51  PUSH ECX
0052b001  55  PUSH EBP
0052b002  8dbeb0fdffff  LEA EDI,[ESI + 0xfffffdb0]
0052b008  53  PUSH EBX
0052b009  8bcf  MOV ECX,EDI
0052b00b  e820daffff  CALL 0x00528a30
0052b010  80bf5802000000  CMP byte ptr [EDI + 0x258],0x0
0052b017  7516  JNZ 0x0052b02f
0052b019  8b5704  MOV EDX,dword ptr [EDI + 0x4]
0052b01c  8b4274  MOV EAX,dword ptr [EDX + 0x74]
0052b01f  8d4f04  LEA ECX,[EDI + 0x4]
0052b022  6a01  PUSH 0x1
0052b024  6a08  PUSH 0x8
0052b026  ffd0  CALL EAX
0052b028  c6875802000001  MOV byte ptr [EDI + 0x258],0x1
0052b02f  8a5c2413  MOV BL,byte ptr [ESP + 0x13]
0052b033  5f  POP EDI
0052b034  8b96b4fdffff  MOV EDX,dword ptr [ESI + 0xfffffdb4]
0052b03a  8b8290000000  MOV EAX,dword ptr [EDX + 0x90]
0052b040  8d8eb4fdffff  LEA ECX,[ESI + 0xfffffdb4]
0052b046  ffd0  CALL EAX
0052b048  5e  POP ESI
0052b049  5d  POP EBP
0052b04a  8ac3  MOV AL,BL
0052b04c  5b  POP EBX
0052b04d  59  POP ECX
0052b04e  c20800  RET 0x8
0052b051  32db  XOR BL,BL
0052b053  385c240e  CMP byte ptr [ESP + 0xe],BL
0052b057  74ef  JZ 0x0052b048
0052b059  ebd9  JMP 0x0052b034
