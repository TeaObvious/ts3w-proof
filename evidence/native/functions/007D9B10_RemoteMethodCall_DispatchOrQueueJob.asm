# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: RemoteMethodCall_DispatchOrQueueJob
Paired annotated actual pseudocode: 007D9B10_RemoteMethodCall_DispatchOrQueueJob.c
Owned ranges: [[007d9b10, 007d9c03]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
007d9b10  51  PUSH ECX
007d9b11  53  PUSH EBX
007d9b12  56  PUSH ESI
007d9b13  57  PUSH EDI
007d9b14  8bf1  MOV ESI,ECX
007d9b16  ff155861f900  CALL dword ptr [0x00f96158]
007d9b1c  8a5c2414  MOV BL,byte ptr [ESP + 0x14]
007d9b20  84db  TEST BL,BL
007d9b22  8bf8  MOV EDI,EAX
007d9b24  7407  JZ 0x007d9b2d
007d9b26  e815010000  CALL 0x007d9c40
007d9b2b  eb05  JMP 0x007d9b32
007d9b2d  e8ee000000  CALL 0x007d9c20
007d9b32  3bc7  CMP EAX,EDI
007d9b34  0f94c0  SETZ AL
007d9b37  84c0  TEST AL,AL
007d9b39  7413  JZ 0x007d9b4e
007d9b3b  8b06  MOV EAX,dword ptr [ESI]
007d9b3d  8b5010  MOV EDX,dword ptr [EAX + 0x10]
007d9b40  8bce  MOV ECX,ESI
007d9b42  ffd2  CALL EDX
007d9b44  8a4608  MOV AL,byte ptr [ESI + 0x8]
007d9b47  5f  POP EDI
007d9b48  5e  POP ESI
007d9b49  5b  POP EBX
007d9b4a  59  POP ECX
007d9b4b  c20800  RET 0x8
007d9b4e  e8cdffdbff  CALL 0x00599b20
007d9b53  85c0  TEST EAX,EAX
007d9b55  7427  JZ 0x007d9b7e
007d9b57  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
007d9b5f  8b10  MOV EDX,dword ptr [EAX]
007d9b61  8b5210  MOV EDX,dword ptr [EDX + 0x10]
007d9b64  8d4c240c  LEA ECX,[ESP + 0xc]
007d9b68  51  PUSH ECX
007d9b69  8bc8  MOV ECX,EAX
007d9b6b  ffd2  CALL EDX
007d9b6d  84c0  TEST AL,AL
007d9b6f  7516  JNZ 0x007d9b87
007d9b71  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9b75  85c9  TEST ECX,ECX
007d9b77  7405  JZ 0x007d9b7e
007d9b79  e8d217dcff  CALL 0x0059b350
007d9b7e  5f  POP EDI
007d9b7f  5e  POP ESI
007d9b80  32c0  XOR AL,AL
007d9b82  5b  POP EBX
007d9b83  59  POP ECX
007d9b84  c20800  RET 0x8
007d9b87  807c241800  CMP byte ptr [ESP + 0x18],0x0
007d9b8c  740a  JZ 0x007d9b98
007d9b8e  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9b92  56  PUSH ESI
007d9b93  e88800dcff  CALL 0x00599c20
007d9b98  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007d9b9c  f6db  NEG BL
007d9b9e  c74008909a7d00  MOV dword ptr [EAX + 0x8],0x7d9a90
007d9ba5  89700c  MOV dword ptr [EAX + 0xc],ESI
007d9ba8  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007d9bac  1bdb  SBB EBX,EBX
007d9bae  83e303  AND EBX,0x3
007d9bb1  83c301  ADD EBX,0x1
007d9bb4  895820  MOV dword ptr [EAX + 0x20],EBX
007d9bb7  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9bbb  e85011dcff  CALL 0x0059ad10
007d9bc0  807c241800  CMP byte ptr [ESP + 0x18],0x0
007d9bc5  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9bc9  7412  JZ 0x007d9bdd
007d9bcb  85c9  TEST ECX,ECX
007d9bcd  7405  JZ 0x007d9bd4
007d9bcf  e87c17dcff  CALL 0x0059b350
007d9bd4  5f  POP EDI
007d9bd5  5e  POP ESI
007d9bd6  b001  MOV AL,0x1
007d9bd8  5b  POP EBX
007d9bd9  59  POP ECX
007d9bda  c20800  RET 0x8
007d9bdd  e8de12dcff  CALL 0x0059aec0
007d9be2  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9be6  e8f5ffdbff  CALL 0x00599be0
007d9beb  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d9bef  85c9  TEST ECX,ECX
007d9bf1  8a5e08  MOV BL,byte ptr [ESI + 0x8]
007d9bf4  7405  JZ 0x007d9bfb
007d9bf6  e85517dcff  CALL 0x0059b350
007d9bfb  5f  POP EDI
007d9bfc  5e  POP ESI
007d9bfd  8ac3  MOV AL,BL
007d9bff  5b  POP EBX
007d9c00  59  POP ECX
007d9c01  c20800  RET 0x8
Owned instructions=91 owned bytes=244 envelope bytes=244
