# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ClipPoseController_AssignRetainedClip
Paired actual annotated Ghidra pseudocode: 0054E1B0_ClipPoseController_AssignRetainedClip.c
Owned ranges: [[0054e1b0, 0054e20f]]
Envelope bytes=96

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0054e1b0  53  PUSH EBX
0054e1b1  56  PUSH ESI
0054e1b2  8bf1  MOV ESI,ECX
0054e1b4  8b9eb8030000  MOV EBX,dword ptr [ESI + 0x3b8]
0054e1ba  57  PUSH EDI
0054e1bb  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
0054e1bf  3bfb  CMP EDI,EBX
0054e1c1  741f  JZ 0x0054e1e2
0054e1c3  85ff  TEST EDI,EDI
0054e1c5  7408  JZ 0x0054e1cf
0054e1c7  8b07  MOV EAX,dword ptr [EDI]
0054e1c9  8b10  MOV EDX,dword ptr [EAX]
0054e1cb  8bcf  MOV ECX,EDI
0054e1cd  ffd2  CALL EDX
0054e1cf  85db  TEST EBX,EBX
0054e1d1  89beb8030000  MOV dword ptr [ESI + 0x3b8],EDI
0054e1d7  7409  JZ 0x0054e1e2
0054e1d9  8b03  MOV EAX,dword ptr [EBX]
0054e1db  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0054e1de  8bcb  MOV ECX,EBX
0054e1e0  ffd2  CALL EDX
0054e1e2  8b86b8030000  MOV EAX,dword ptr [ESI + 0x3b8]
0054e1e8  8b5008  MOV EDX,dword ptr [EAX + 0x8]
0054e1eb  83c008  ADD EAX,0x8
0054e1ee  8d8e98030000  LEA ECX,[ESI + 0x398]
0054e1f4  8911  MOV dword ptr [ECX],EDX
0054e1f6  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0054e1f9  895104  MOV dword ptr [ECX + 0x4],EDX
0054e1fc  8b5008  MOV EDX,dword ptr [EAX + 0x8]
0054e1ff  895108  MOV dword ptr [ECX + 0x8],EDX
0054e202  8b400c  MOV EAX,dword ptr [EAX + 0xc]
0054e205  5f  POP EDI
0054e206  5e  POP ESI
0054e207  89410c  MOV dword ptr [ECX + 0xc],EAX
0054e20a  b001  MOV AL,0x1
0054e20c  5b  POP EBX
0054e20d  c20400  RET 0x4
Owned instructions=37 owned bytes=96 gap/nonowned bytes=0
