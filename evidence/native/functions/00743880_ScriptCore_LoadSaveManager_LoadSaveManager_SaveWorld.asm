# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00743880 (ScriptCore.LoadSaveManager::LoadSaveManager_SaveWorld)
Paired actual Ghidra pseudocode: 00743880_ScriptCore_LoadSaveManager_LoadSaveManager_SaveWorld.c
Envelope [0x00743880,0x0074396e); 238 bytes; exact owned ranges: [0x00743880,0x0074396e)
Owned: 238 original bytes / 78 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00743880 <original>:
  00743880:	83 ec 40                                       	SUB ESP,0x40
  00743883:	55                                             	PUSH EBP
  00743884:	33 ed                                          	XOR EBP,EBP
  00743886:	39 2d c4 db 1e 01                              	CMP dword ptr [0x011edbc4],EBP
  0074388c:	0f 84 d7 00 00 00                              	JZ 0x00743969
  00743892:	56                                             	PUSH ESI
  00743893:	57                                             	PUSH EDI
  00743894:	55                                             	PUSH EBP
  00743895:	55                                             	PUSH EBP
  00743896:	55                                             	PUSH EBP
  00743897:	55                                             	PUSH EBP
  00743898:	68 c8 26 00 01                                 	PUSH 0x10026c8
  0074389d:	6a 40                                          	PUSH 0x40
  0074389f:	e8 5c 0c da ff                                 	CALL 0x004e4500
  007438a4:	8b f0                                          	MOV ESI,EAX
  007438a6:	83 c4 18                                       	ADD ESP,0x18
  007438a9:	3b f5                                          	CMP ESI,EBP
  007438ab:	74 2d                                          	JZ 0x007438da
  007438ad:	8b ce                                          	MOV ECX,ESI
  007438af:	e8 9c 99 60 00                                 	CALL 0x00d4d250
  007438b4:	c7 46 20 c0 cf fe 00                           	MOV dword ptr [ESI + 0x20],0xfecfc0
  007438bb:	89 6e 28                                       	MOV dword ptr [ESI + 0x28],EBP
  007438be:	c7 06 d0 23 00 01                              	MOV dword ptr [ESI],0x10023d0
  007438c4:	c7 46 20 c0 23 00 01                           	MOV dword ptr [ESI + 0x20],0x10023c0
  007438cb:	c6 46 24 00                                    	MOV byte ptr [ESI + 0x24],0x0
  007438cf:	8b 06                                          	MOV EAX,dword ptr [ESI]
  007438d1:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  007438d4:	8b ce                                          	MOV ECX,ESI
  007438d6:	8b ee                                          	MOV EBP,ESI
  007438d8:	ff d2                                          	CALL EDX
  007438da:	e8 b1 5a 02 00                                 	CALL 0x00769390
  007438df:	8b 7c 24 50                                    	MOV EDI,dword ptr [ESP + 0x50]
  007438e3:	57                                             	PUSH EDI
  007438e4:	8b cd                                          	MOV ECX,EBP
  007438e6:	8b f0                                          	MOV ESI,EAX
  007438e8:	e8 83 fd ff ff                                 	CALL 0x00743670
  007438ed:	84 c0                                          	TEST AL,AL
  007438ef:	75 64                                          	JNZ 0x00743955
  007438f1:	6a 01                                          	PUSH 0x1
  007438f3:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  007438f7:	51                                             	PUSH ECX
  007438f8:	88 44 24 24                                    	MOV byte ptr [ESP + 0x24],AL
  007438fc:	8b 06                                          	MOV EAX,dword ptr [ESI]
  007438fe:	8b 80 34 01 00 00                              	MOV EAX,dword ptr [EAX + 0x134]
  00743904:	57                                             	PUSH EDI
  00743905:	8d 54 24 38                                    	LEA EDX,[ESP + 0x38]
  00743909:	52                                             	PUSH EDX
  0074390a:	8b ce                                          	MOV ECX,ESI
  0074390c:	c7 44 24 1c 6c 88 00 01                        	MOV dword ptr [ESP + 0x1c],0x100886c
  00743914:	66 c7 44 24 26 01 00                           	MOV word ptr [ESP + 0x26],0x1
  0074391b:	66 c7 44 24 24 02 00                           	MOV word ptr [ESP + 0x24],0x2
  00743922:	ff d0                                          	CALL EAX
  00743924:	f6 44 24 34 04                                 	TEST byte ptr [ESP + 0x34],0x4
  00743929:	be f4 a6 fb 00                                 	MOV ESI,0xfba6f4
  0074392e:	89 74 24 2c                                    	MOV dword ptr [ESP + 0x2c],ESI
  00743932:	74 0b                                          	JZ 0x0074393f
  00743934:	6a 00                                          	PUSH 0x0
  00743936:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  0074393a:	e8 21 1e db ff                                 	CALL 0x004f5760
  0074393f:	f6 44 24 14 04                                 	TEST byte ptr [ESP + 0x14],0x4
  00743944:	89 74 24 0c                                    	MOV dword ptr [ESP + 0xc],ESI
  00743948:	74 0b                                          	JZ 0x00743955
  0074394a:	6a 00                                          	PUSH 0x0
  0074394c:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00743950:	e8 0b 1e db ff                                 	CALL 0x004f5760
  00743955:	85 ed                                          	TEST EBP,EBP
  00743957:	5f                                             	POP EDI
  00743958:	5e                                             	POP ESI
  00743959:	74 0e                                          	JZ 0x00743969
  0074395b:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  0074395e:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00743961:	8b cd                                          	MOV ECX,EBP
  00743963:	5d                                             	POP EBP
  00743964:	83 c4 40                                       	ADD ESP,0x40
  00743967:	ff e0                                          	JMP EAX
  00743969:	5d                                             	POP EBP
  0074396a:	83 c4 40                                       	ADD ESP,0x40
  0074396d:	c3                                             	RET
