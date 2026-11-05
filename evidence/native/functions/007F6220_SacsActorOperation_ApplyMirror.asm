# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsActorOperation_ApplyMirror
Paired actual annotated Ghidra pseudocode: 007F6220_SacsActorOperation_ApplyMirror.c
Owned ranges: [[007f6220, 007f62b8]]
Envelope bytes=153

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f6220  53  PUSH EBX
007f6221  8bd9  MOV EBX,ECX
007f6223  8b4350  MOV EAX,dword ptr [EBX + 0x50]
007f6226  56  PUSH ESI
007f6227  8b742410  MOV ESI,dword ptr [ESP + 0x10]
007f622b  50  PUSH EAX
007f622c  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007f6230  50  PUSH EAX
007f6231  8bce  MOV ECX,ESI
007f6233  e868dbffff  CALL 0x007f3da0
007f6238  84c0  TEST AL,AL
007f623a  7478  JZ 0x007f62b4
007f623c  55  PUSH EBP
007f623d  57  PUSH EDI
007f623e  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
007f6242  8b2f  MOV EBP,dword ptr [EDI]
007f6244  85ed  TEST EBP,EBP
007f6246  7512  JNZ 0x007f625a
007f6248  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
007f624e  55  PUSH EBP
007f624f  6a08  PUSH 0x8
007f6251  e8ca0ccfff  CALL 0x004e6f20
007f6256  8be8  MOV EBP,EAX
007f6258  892f  MOV dword ptr [EDI],EBP
007f625a  8b4354  MOV EAX,dword ptr [EBX + 0x54]
007f625d  83e801  SUB EAX,0x1
007f6260  7550  JNZ 0x007f62b2
007f6262  8b7b50  MOV EDI,dword ptr [EBX + 0x50]
007f6265  85ff  TEST EDI,EDI
007f6267  7449  JZ 0x007f62b2
007f6269  8b17  MOV EDX,dword ptr [EDI]
007f626b  8b02  MOV EAX,dword ptr [EDX]
007f626d  8bcf  MOV ECX,EDI
007f626f  ffd0  CALL EAX
007f6271  8b4350  MOV EAX,dword ptr [EBX + 0x50]
007f6274  50  PUSH EAX
007f6275  8bce  MOV ECX,ESI
007f6277  e8a4daffff  CALL 0x007f3d20
007f627c  8bf0  MOV ESI,EAX
007f627e  85f6  TEST ESI,ESI
007f6280  7427  JZ 0x007f62a9
007f6282  8b16  MOV EDX,dword ptr [ESI]
007f6284  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007f6287  8bce  MOV ECX,ESI
007f6289  ffd0  CALL EAX
007f628b  33c9  XOR ECX,ECX
007f628d  384e25  CMP byte ptr [ESI + 0x25],CL
007f6290  0f95c1  SETNZ CL
007f6293  894d04  MOV dword ptr [EBP + 0x4],ECX
007f6296  837b5800  CMP dword ptr [EBX + 0x58],0x0
007f629a  8bce  MOV ECX,ESI
007f629c  0f95c2  SETNZ DL
007f629f  885625  MOV byte ptr [ESI + 0x25],DL
007f62a2  8b06  MOV EAX,dword ptr [ESI]
007f62a4  8b5008  MOV EDX,dword ptr [EAX + 0x8]
007f62a7  ffd2  CALL EDX
007f62a9  8b07  MOV EAX,dword ptr [EDI]
007f62ab  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007f62ae  8bcf  MOV ECX,EDI
007f62b0  ffd2  CALL EDX
007f62b2  5f  POP EDI
007f62b3  5d  POP EBP
007f62b4  5e  POP ESI
007f62b5  5b  POP EBX
007f62b6  c21000  RET 0x10
Owned instructions=65 owned bytes=153 gap/nonowned bytes=0
