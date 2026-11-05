# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004a8100, 004a8187]]
Signature: bool PackedFile_ReadRawPayload(void * this, void * param_1, int param_2, size_t param_3)

004a8100  56  PUSH ESI
004a8101  8bf1  MOV ESI,ECX
004a8103  57  PUSH EDI
004a8104  8dbea0020000  LEA EDI,[ESI + 0x2a0]
004a810a  680835fb00  PUSH 0xfb3508
004a810f  8bcf  MOV ECX,EDI
004a8111  e8ea9a0300  CALL 0x004e1c00
004a8116  837e1c00  CMP dword ptr [ESI + 0x1c],0x0
004a811a  745e  JZ 0x004a817a
004a811c  8b865c020000  MOV EAX,dword ptr [ESI + 0x25c]
004a8122  03442410  ADD EAX,dword ptr [ESP + 0x10]
004a8126  83be6402000000  CMP dword ptr [ESI + 0x264],0x0
004a812d  7410  JZ 0x004a813f
004a812f  3b8668020000  CMP EAX,dword ptr [ESI + 0x268]
004a8135  7343  JNC 0x004a817a
004a8137  89866c020000  MOV dword ptr [ESI + 0x26c],EAX
004a813d  eb14  JMP 0x004a8153
004a813f  8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
004a8145  8b11  MOV EDX,dword ptr [ECX]
004a8147  6a00  PUSH 0x0
004a8149  50  PUSH EAX
004a814a  8b4228  MOV EAX,dword ptr [EDX + 0x28]
004a814d  ffd0  CALL EAX
004a814f  84c0  TEST AL,AL
004a8151  7427  JZ 0x004a817a
004a8153  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
004a8157  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
004a815b  53  PUSH EBX
004a815c  51  PUSH ECX
004a815d  52  PUSH EDX
004a815e  8bce  MOV ECX,ESI
004a8160  e8fbf6ffff  CALL 0x004a7860
004a8165  83f8ff  CMP EAX,-0x1
004a8168  8bcf  MOV ECX,EDI
004a816a  0f95c3  SETNZ BL
004a816d  e84e9b0300  CALL 0x004e1cc0
004a8172  8ac3  MOV AL,BL
004a8174  5b  POP EBX
004a8175  5f  POP EDI
004a8176  5e  POP ESI
004a8177  c20c00  RET 0xc
004a817a  8bcf  MOV ECX,EDI
004a817c  e83f9b0300  CALL 0x004e1cc0
004a8181  5f  POP EDI
004a8182  32c0  XOR AL,AL
004a8184  5e  POP ESI
004a8185  c20c00  RET 0xc
