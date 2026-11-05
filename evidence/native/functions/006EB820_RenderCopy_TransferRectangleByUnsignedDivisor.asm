# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x006eb820 (RenderCopy_TransferRectangleByUnsignedDivisor)
Paired actual Ghidra pseudocode: 006EB820_RenderCopy_TransferRectangleByUnsignedDivisor.c
Envelope [0x006eb820,0x006eb912); 242 bytes. Exact owned range: [0x006eb820,0x006eb912)
Owned: 242 pristine PE bytes / 85 actual saved Listing instructions; no unowned gaps or necessary external data.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Stored inferred prototype remains unchanged. RET8 and the current ESP-relative divisor load do not alone establish incoming argument identity across unexpanded child cleanup.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
006eb820 <original>:
  006eb820:	83 ec 58                                      	SUB ESP,0x58
  006eb823:	53                                            	PUSH EBX
  006eb824:	56                                            	PUSH ESI
  006eb825:	e8 e6 30 f2 ff                                	CALL 0x0060e910
  006eb82a:	8b 74 24 64                                   	MOV ESI,dword ptr [ESP + 0x64]
  006eb82e:	85 f6                                         	TEST ESI,ESI
  006eb830:	8b d8                                         	MOV EBX,EAX
  006eb832:	0f 84 d2 00 00 00                             	JZ 0x006eb90a
  006eb838:	57                                            	PUSH EDI
  006eb839:	8d 4c 24 3c                                   	LEA ECX,[ESP + 0x3c]
  006eb83d:	e8 de ce f2 ff                                	CALL 0x00618720
  006eb842:	8b 0e                                         	MOV ECX,dword ptr [ESI]
  006eb844:	8d 44 24 3c                                   	LEA EAX,[ESP + 0x3c]
  006eb848:	50                                            	PUSH EAX
  006eb849:	6a 00                                         	PUSH 0x0
  006eb84b:	e8 a0 e3 f2 ff                                	CALL 0x00619bf0
  006eb850:	8b 7b 0c                                      	MOV EDI,dword ptr [EBX + 0xc]
  006eb853:	8d 54 24 68                                   	LEA EDX,[ESP + 0x68]
  006eb857:	52                                            	PUSH EDX
  006eb858:	c7 44 24 6c 00 00 00 00                       	MOV dword ptr [ESP + 0x6c],0x0
  006eb860:	8b 0f                                         	MOV ECX,dword ptr [EDI]
  006eb862:	8b 81 98 00 00 00                             	MOV EAX,dword ptr [ECX + 0x98]
  006eb868:	6a 00                                         	PUSH 0x0
  006eb86a:	57                                            	PUSH EDI
  006eb86b:	ff d0                                         	CALL EAX
  006eb86d:	85 c0                                         	TEST EAX,EAX
  006eb86f:	7c 7f                                         	JL 0x006eb8f0
  006eb871:	55                                            	PUSH EBP
  006eb872:	8d 4c 24 10                                   	LEA ECX,[ESP + 0x10]
  006eb876:	51                                            	PUSH ECX
  006eb877:	8b cb                                         	MOV ECX,EBX
  006eb879:	e8 82 4d f2 ff                                	CALL 0x00610600
  006eb87e:	8b 54 24 10                                   	MOV EDX,dword ptr [ESP + 0x10]
  006eb882:	8b 44 24 14                                   	MOV EAX,dword ptr [ESP + 0x14]
  006eb886:	8b 4c 24 18                                   	MOV ECX,dword ptr [ESP + 0x18]
  006eb88a:	8b 6c 24 70                                   	MOV EBP,dword ptr [ESP + 0x70]
  006eb88e:	89 44 24 34                                   	MOV dword ptr [ESP + 0x34],EAX
  006eb892:	8b 46 0c                                      	MOV EAX,dword ptr [ESI + 0xc]
  006eb895:	89 54 24 30                                   	MOV dword ptr [ESP + 0x30],EDX
  006eb899:	8b 54 24 1c                                   	MOV EDX,dword ptr [ESP + 0x1c]
  006eb89d:	89 54 24 3c                                   	MOV dword ptr [ESP + 0x3c],EDX
  006eb8a1:	89 4c 24 38                                   	MOV dword ptr [ESP + 0x38],ECX
  006eb8a5:	8b 4e 04                                      	MOV ECX,dword ptr [ESI + 0x4]
  006eb8a8:	2b c1                                         	SUB EAX,ECX
  006eb8aa:	33 d2                                         	XOR EDX,EDX
  006eb8ac:	f7 f5                                         	DIV EBP
  006eb8ae:	8b 5e 08                                      	MOV EBX,dword ptr [ESI + 0x8]
  006eb8b1:	33 d2                                         	XOR EDX,EDX
  006eb8b3:	6a 02                                         	PUSH 0x2
  006eb8b5:	89 4c 24 24                                   	MOV dword ptr [ESP + 0x24],ECX
  006eb8b9:	89 5c 24 28                                   	MOV dword ptr [ESP + 0x28],EBX
  006eb8bd:	03 c1                                         	ADD EAX,ECX
  006eb8bf:	89 44 24 2c                                   	MOV dword ptr [ESP + 0x2c],EAX
  006eb8c3:	8b 46 10                                      	MOV EAX,dword ptr [ESI + 0x10]
  006eb8c6:	2b c3                                         	SUB EAX,EBX
  006eb8c8:	f7 f5                                         	DIV EBP
  006eb8ca:	8b 54 24 68                                   	MOV EDX,dword ptr [ESP + 0x68]
  006eb8ce:	8d 4c 24 24                                   	LEA ECX,[ESP + 0x24]
  006eb8d2:	51                                            	PUSH ECX
  006eb8d3:	52                                            	PUSH EDX
  006eb8d4:	8b 54 24 78                                   	MOV EDX,dword ptr [ESP + 0x78]
  006eb8d8:	8d 4c 24 3c                                   	LEA ECX,[ESP + 0x3c]
  006eb8dc:	51                                            	PUSH ECX
  006eb8dd:	52                                            	PUSH EDX
  006eb8de:	57                                            	PUSH EDI
  006eb8df:	03 c3                                         	ADD EAX,EBX
  006eb8e1:	89 44 24 44                                   	MOV dword ptr [ESP + 0x44],EAX
  006eb8e5:	8b 07                                         	MOV EAX,dword ptr [EDI]
  006eb8e7:	8b 80 88 00 00 00                             	MOV EAX,dword ptr [EAX + 0x88]
  006eb8ed:	ff d0                                         	CALL EAX
  006eb8ef:	5d                                            	POP EBP
  006eb8f0:	8b 44 24 68                                   	MOV EAX,dword ptr [ESP + 0x68]
  006eb8f4:	85 c0                                         	TEST EAX,EAX
  006eb8f6:	5f                                            	POP EDI
  006eb8f7:	74 08                                         	JZ 0x006eb901
  006eb8f9:	8b 08                                         	MOV ECX,dword ptr [EAX]
  006eb8fb:	8b 51 08                                      	MOV EDX,dword ptr [ECX + 0x8]
  006eb8fe:	50                                            	PUSH EAX
  006eb8ff:	ff d2                                         	CALL EDX
  006eb901:	8d 4c 24 38                                   	LEA ECX,[ESP + 0x38]
  006eb905:	e8 e6 ca f2 ff                                	CALL 0x006183f0
  006eb90a:	5e                                            	POP ESI
  006eb90b:	5b                                            	POP EBX
  006eb90c:	83 c4 58                                      	ADD ESP,0x58
  006eb90f:	c2 08 00                                      	RET 0x8
