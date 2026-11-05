# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsContext_AdmitActorNode
Paired actual annotated Ghidra pseudocode: 007F3DA0_SacsContext_AdmitActorNode.c
Owned ranges: [[007f3da0, 007f3dec]]
Envelope bytes=77

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f3da0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007f3da4  85c0  TEST EAX,EAX
007f3da6  7440  JZ 0x007f3de8
007f3da8  8b09  MOV ECX,dword ptr [ECX]
007f3daa  8b510c  MOV EDX,dword ptr [ECX + 0xc]
007f3dad  8b523c  MOV EDX,dword ptr [EDX + 0x3c]
007f3db0  83e201  AND EDX,0x1
007f3db3  80fa01  CMP DL,0x1
007f3db6  7430  JZ 0x007f3de8
007f3db8  80793c00  CMP byte ptr [ECX + 0x3c],0x0
007f3dbc  752a  JNZ 0x007f3de8
007f3dbe  8b542404  MOV EDX,dword ptr [ESP + 0x4]
007f3dc2  8b5208  MOV EDX,dword ptr [EDX + 0x8]
007f3dc5  394220  CMP dword ptr [EDX + 0x20],EAX
007f3dc8  741e  JZ 0x007f3de8
007f3dca  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
007f3dcd  50  PUSH EAX
007f3dce  e80dc20000  CALL 0x007fffe0
007f3dd3  85c0  TEST EAX,EAX
007f3dd5  7411  JZ 0x007f3de8
007f3dd7  83781000  CMP dword ptr [EAX + 0x10],0x0
007f3ddb  7506  JNZ 0x007f3de3
007f3ddd  83781c00  CMP dword ptr [EAX + 0x1c],0x0
007f3de1  7405  JZ 0x007f3de8
007f3de3  32c0  XOR AL,AL
007f3de5  c20800  RET 0x8
007f3de8  b001  MOV AL,0x1
007f3dea  c20800  RET 0x8
Owned instructions=28 owned bytes=77 gap/nonowned bytes=0
