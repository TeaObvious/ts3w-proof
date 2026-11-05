# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: AnimationComponent_NotifyRigAndEnsureLookAt
Paired actual annotated Ghidra pseudocode: 0093DF40_AnimationComponent_NotifyRigAndEnsureLookAt.c
Owned ranges: [[0093df40, 0093dfa6]]
Envelope bytes=103

GHIDRA LISTING (original bytes; nonowned gaps explicit)
0093df40  56  PUSH ESI
0093df41  8bf1  MOV ESI,ECX
0093df43  8b4620  MOV EAX,dword ptr [ESI + 0x20]
0093df46  85c0  TEST EAX,EAX
0093df48  745b  JZ 0x0093dfa5
0093df4a  50  PUSH EAX
0093df4b  8b4604  MOV EAX,dword ptr [ESI + 0x4]
0093df4e  50  PUSH EAX
0093df4f  6a13  PUSH 0x13
0093df51  e86a77ffff  CALL 0x009356c0
0093df56  83c40c  ADD ESP,0xc
0093df59  837e2800  CMP dword ptr [ESI + 0x28],0x0
0093df5d  7546  JNZ 0x0093dfa5
0093df5f  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0093df62  8b15fca01e01  MOV EDX,dword ptr [0x011ea0fc]
0093df68  85512c  TEST dword ptr [ECX + 0x2c],EDX
0093df6b  7438  JZ 0x0093dfa5
0093df6d  8b4e20  MOV ECX,dword ptr [ESI + 0x20]
0093df70  e81bd7c3ff  CALL 0x0057b690
0093df75  84c0  TEST AL,AL
0093df77  742c  JZ 0x0093dfa5
0093df79  6a00  PUSH 0x0
0093df7b  6a00  PUSH 0x0
0093df7d  6a00  PUSH 0x0
0093df7f  6a00  PUSH 0x0
0093df81  686c440401  PUSH 0x104446c
0093df86  6a34  PUSH 0x34
0093df88  e87365baff  CALL 0x004e4500
0093df8d  83c418  ADD ESP,0x18
0093df90  85c0  TEST EAX,EAX
0093df92  740c  JZ 0x0093dfa0
0093df94  8bc8  MOV ECX,EAX
0093df96  e8e52dc4ff  CALL 0x00580d80
0093df9b  894628  MOV dword ptr [ESI + 0x28],EAX
0093df9e  5e  POP ESI
0093df9f  c3  RET
0093dfa0  33c0  XOR EAX,EAX
0093dfa2  894628  MOV dword ptr [ESI + 0x28],EAX
0093dfa5  5e  POP ESI
0093dfa6  c3  RET
Owned instructions=40 owned bytes=103 nonowned bytes=0
