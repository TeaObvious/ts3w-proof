# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsActorOperation_RestoreMirror
Paired actual annotated Ghidra pseudocode: 007F62C0_SacsActorOperation_RestoreMirror.c
Owned ranges: [[007f62c0, 007f630f]]
Envelope bytes=80

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f62c0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007f62c4  57  PUSH EDI
007f62c5  8b38  MOV EDI,dword ptr [EAX]
007f62c7  85ff  TEST EDI,EDI
007f62c9  7441  JZ 0x007f630c
007f62cb  803f00  CMP byte ptr [EDI],0x0
007f62ce  743c  JZ 0x007f630c
007f62d0  c60700  MOV byte ptr [EDI],0x0
007f62d3  8b4154  MOV EAX,dword ptr [ECX + 0x54]
007f62d6  83e801  SUB EAX,0x1
007f62d9  7531  JNZ 0x007f630c
007f62db  8b4950  MOV ECX,dword ptr [ECX + 0x50]
007f62de  56  PUSH ESI
007f62df  51  PUSH ECX
007f62e0  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007f62e4  e837daffff  CALL 0x007f3d20
007f62e9  8bf0  MOV ESI,EAX
007f62eb  85f6  TEST ESI,ESI
007f62ed  741c  JZ 0x007f630b
007f62ef  8b16  MOV EDX,dword ptr [ESI]
007f62f1  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007f62f4  8bce  MOV ECX,ESI
007f62f6  ffd0  CALL EAX
007f62f8  837f0400  CMP dword ptr [EDI + 0x4],0x0
007f62fc  0f95c1  SETNZ CL
007f62ff  884e25  MOV byte ptr [ESI + 0x25],CL
007f6302  8b16  MOV EDX,dword ptr [ESI]
007f6304  8b4208  MOV EAX,dword ptr [EDX + 0x8]
007f6307  8bce  MOV ECX,ESI
007f6309  ffd0  CALL EAX
007f630b  5e  POP ESI
007f630c  5f  POP EDI
007f630d  c21000  RET 0x10
Owned instructions=33 owned bytes=80 gap/nonowned bytes=0
