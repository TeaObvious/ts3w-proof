# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 0093B6A0_VisualProxy_FindFirstResourceOfType.c
Owned ranges: [[0093b6a0, 0093b720]]

0093b6a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0093b6a4  8b482c  MOV ECX,dword ptr [EAX + 0x2c]
0093b6a7  53  PUSH EBX
0093b6a8  55  PUSH EBP
0093b6a9  56  PUSH ESI
0093b6aa  8b7028  MOV ESI,dword ptr [EAX + 0x28]
0093b6ad  2bce  SUB ECX,ESI
0093b6af  b867666666  MOV EAX,0x66666667
0093b6b4  f7e9  IMUL ECX
0093b6b6  57  PUSH EDI
0093b6b7  c1fa03  SAR EDX,0x3
0093b6ba  8bfa  MOV EDI,EDX
0093b6bc  c1ef1f  SHR EDI,0x1f
0093b6bf  33db  XOR EBX,EBX
0093b6c1  03fa  ADD EDI,EDX
0093b6c3  7434  JZ 0x0093b6f9
0093b6c5  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
0093b6c9  83c604  ADD ESI,0x4
0093b6cc  8d642400  LEA ESP,[ESP]
0093b6d0  8b4604  MOV EAX,dword ptr [ESI + 0x4]
0093b6d3  2b06  SUB EAX,dword ptr [ESI]
0093b6d5  33d2  XOR EDX,EDX
0093b6d7  c1f804  SAR EAX,0x4
0093b6da  7413  JZ 0x0093b6ef
0093b6dc  8b0e  MOV ECX,dword ptr [ESI]
0093b6de  8bff  MOV EDI,EDI
0093b6e0  396908  CMP dword ptr [ECX + 0x8],EBP
0093b6e3  741b  JZ 0x0093b700
0093b6e5  83c201  ADD EDX,0x1
0093b6e8  83c110  ADD ECX,0x10
0093b6eb  3bd0  CMP EDX,EAX
0093b6ed  72f1  JC 0x0093b6e0
0093b6ef  83c301  ADD EBX,0x1
0093b6f2  83c614  ADD ESI,0x14
0093b6f5  3bdf  CMP EBX,EDI
0093b6f7  72d7  JC 0x0093b6d0
0093b6f9  5f  POP EDI
0093b6fa  5e  POP ESI
0093b6fb  5d  POP EBP
0093b6fc  32c0  XOR AL,AL
0093b6fe  5b  POP EBX
0093b6ff  c3  RET
0093b700  8b11  MOV EDX,dword ptr [ECX]
0093b702  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
0093b706  8910  MOV dword ptr [EAX],EDX
0093b708  8b5104  MOV EDX,dword ptr [ECX + 0x4]
0093b70b  895004  MOV dword ptr [EAX + 0x4],EDX
0093b70e  8b5108  MOV EDX,dword ptr [ECX + 0x8]
0093b711  5f  POP EDI
0093b712  895008  MOV dword ptr [EAX + 0x8],EDX
0093b715  8b490c  MOV ECX,dword ptr [ECX + 0xc]
0093b718  5e  POP ESI
0093b719  5d  POP EBP
0093b71a  89480c  MOV dword ptr [EAX + 0xc],ECX
0093b71d  b001  MOV AL,0x1
0093b71f  5b  POP EBX
0093b720  c3  RET
