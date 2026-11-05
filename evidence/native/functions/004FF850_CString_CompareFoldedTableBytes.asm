# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: CString_CompareFoldedTableBytes
Paired actual annotated Ghidra pseudocode: 004FF850_CString_CompareFoldedTableBytes.c
Owned ranges: [[004ff850, 004ff89d]]
Envelope bytes=78

GHIDRA LISTING (original bytes; nonowned alignment explicit)
004ff850  8b542408  MOV EDX,dword ptr [ESP + 0x8]
004ff854  0fbe0a  MOVSX ECX,byte ptr [EDX]
004ff857  8a8930db1401  MOV CL,byte ptr [ECX + 0x114db30]
004ff85d  56  PUSH ESI
004ff85e  8b742408  MOV ESI,dword ptr [ESP + 0x8]
004ff862  0fbe06  MOVSX EAX,byte ptr [ESI]
004ff865  8a8030db1401  MOV AL,byte ptr [EAX + 0x114db30]
004ff86b  3ac1  CMP AL,CL
004ff86d  7521  JNZ 0x004ff890
004ff86f  90  NOP
004ff870  83c201  ADD EDX,0x1
004ff873  83c601  ADD ESI,0x1
004ff876  84c0  TEST AL,AL
004ff878  7420  JZ 0x004ff89a
004ff87a  0fbe06  MOVSX EAX,byte ptr [ESI]
004ff87d  0fbe0a  MOVSX ECX,byte ptr [EDX]
004ff880  8a8030db1401  MOV AL,byte ptr [EAX + 0x114db30]
004ff886  8a8930db1401  MOV CL,byte ptr [ECX + 0x114db30]
004ff88c  3ac1  CMP AL,CL
004ff88e  74e0  JZ 0x004ff870
004ff890  0fb6d1  MOVZX EDX,CL
004ff893  0fb6c0  MOVZX EAX,AL
004ff896  2bc2  SUB EAX,EDX
004ff898  5e  POP ESI
004ff899  c3  RET
004ff89a  33c0  XOR EAX,EAX
004ff89c  5e  POP ESI
004ff89d  c3  RET
Owned instructions=28 owned bytes=78 gap/nonowned bytes=0
