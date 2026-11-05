# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051c870 (WinComboBox_BeginModalNotification)
Paired actual Ghidra pseudocode: 0051C870_WinComboBox_BeginModalNotification.c
Envelope [0x0051c870,0x0051c8c9); 89 pristine bytes.
Owned: 89 original bytes / 22 actual saved Listing instructions.
Saved body: [[0051c870, 0051c8c8]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051c870 <original>:
  0051c870:	83 ec 1c                                       	SUB ESP,0x1c
  0051c873:	80 79 3d 00                                    	CMP byte ptr [ECX + 0x3d],0x0
  0051c877:	75 4a                                          	JNZ 0x0051c8c3
  0051c879:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  0051c87d:	89 81 ac 00 00 00                              	MOV dword ptr [ECX + 0xac],EAX
  0051c883:	8b 81 e8 fd ff ff                              	MOV EAX,dword ptr [ECX + 0xfffffde8]
  0051c889:	85 c0                                          	TEST EAX,EAX
  0051c88b:	ba 01 00 00 00                                 	MOV EDX,0x1
  0051c890:	88 51 3d                                       	MOV byte ptr [ECX + 0x3d],DL
  0051c893:	c7 44 24 08 e9 27 55 4f                        	MOV dword ptr [ESP + 0x8],0x4f5527e9
  0051c89b:	75 06                                          	JNZ 0x0051c8a3
  0051c89d:	8b 81 e4 fd ff ff                              	MOV EAX,dword ptr [ECX + 0xfffffde4]
  0051c8a3:	89 54 24 10                                    	MOV dword ptr [ESP + 0x10],EDX
  0051c8a7:	8b 91 b0 fd ff ff                              	MOV EDX,dword ptr [ECX + 0xfffffdb0]
  0051c8ad:	8b 92 18 01 00 00                              	MOV EDX,dword ptr [EDX + 0x118]
  0051c8b3:	81 c1 b0 fd ff ff                              	ADD ECX,0xfffffdb0
  0051c8b9:	89 44 24 0c                                    	MOV dword ptr [ESP + 0xc],EAX
  0051c8bd:	8d 04 24                                       	LEA EAX,[ESP]
  0051c8c0:	50                                             	PUSH EAX
  0051c8c1:	ff d2                                          	CALL EDX
  0051c8c3:	83 c4 1c                                       	ADD ESP,0x1c
  0051c8c6:	c2 04 00                                       	RET 0x4
