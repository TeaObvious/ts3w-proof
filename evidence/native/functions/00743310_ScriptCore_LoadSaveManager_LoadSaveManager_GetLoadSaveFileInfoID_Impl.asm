# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00743310 (ScriptCore.LoadSaveManager::LoadSaveManager_GetLoadSaveFileInfoID_Impl)
Paired actual Ghidra pseudocode: 00743310_ScriptCore_LoadSaveManager_LoadSaveManager_GetLoadSaveFileInfoID_Impl.c
Envelope [0x00743310,0x007433ef); 223 bytes; exact owned ranges: [0x00743310,0x007433ef)
Owned: 223 original bytes / 69 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00743310 <original>:
  00743310:	83 ec 34                                       	SUB ESP,0x34
  00743313:	56                                             	PUSH ESI
  00743314:	e8 77 60 02 00                                 	CALL 0x00769390
  00743319:	8b f0                                          	MOV ESI,EAX
  0074331b:	85 f6                                          	TEST ESI,ESI
  0074331d:	75 07                                          	JNZ 0x00743326
  0074331f:	33 c0                                          	XOR EAX,EAX
  00743321:	5e                                             	POP ESI
  00743322:	83 c4 34                                       	ADD ESP,0x34
  00743325:	c3                                             	RET
  00743326:	8b 4c 24 3c                                    	MOV ECX,dword ptr [ESP + 0x3c]
  0074332a:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0074332c:	8b 90 cc 00 00 00                              	MOV EDX,dword ptr [EAX + 0xcc]
  00743332:	51                                             	PUSH ECX
  00743333:	8b ce                                          	MOV ECX,ESI
  00743335:	ff d2                                          	CALL EDX
  00743337:	85 c0                                          	TEST EAX,EAX
  00743339:	74 e4                                          	JZ 0x0074331f
  0074333b:	b9 54 8e 1c 01                                 	MOV ECX,0x11c8e54
  00743340:	89 4c 24 08                                    	MOV dword ptr [ESP + 0x8],ECX
  00743344:	89 4c 24 0c                                    	MOV dword ptr [ESP + 0xc],ECX
  00743348:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  0074334c:	51                                             	PUSH ECX
  0074334d:	8b c8                                          	MOV ECX,EAX
  0074334f:	c7 44 24 18 4c 26 00 01                        	MOV dword ptr [ESP + 0x18],0x100264c
  00743357:	c7 44 24 14 56 8e 1c 01                        	MOV dword ptr [ESP + 0x14],0x11c8e56
  0074335f:	e8 9c 77 36 00                                 	CALL 0x00aaab00
  00743364:	6a 01                                          	PUSH 0x1
  00743366:	6a 10                                          	PUSH 0x10
  00743368:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  0074336c:	52                                             	PUSH EDX
  0074336d:	6a 09                                          	PUSH 0x9
  0074336f:	6a 13                                          	PUSH 0x13
  00743371:	8d 4c 24 2c                                    	LEA ECX,[ESP + 0x2c]
  00743375:	c7 44 24 2c f4 a6 fb 00                        	MOV dword ptr [ESP + 0x2c],0xfba6f4
  0074337d:	66 c7 44 24 34 00 00                           	MOV word ptr [ESP + 0x34],0x0
  00743384:	66 c7 44 24 36 00 00                           	MOV word ptr [ESP + 0x36],0x0
  0074338b:	e8 30 26 db ff                                 	CALL 0x004f59c0
  00743390:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  00743394:	c7 44 24 04 00 00 00 00                        	MOV dword ptr [ESP + 0x4],0x0
  0074339c:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0074339e:	8b 40 50                                       	MOV EAX,dword ptr [EAX + 0x50]
  007433a1:	51                                             	PUSH ECX
  007433a2:	8d 54 24 1c                                    	LEA EDX,[ESP + 0x1c]
  007433a6:	52                                             	PUSH EDX
  007433a7:	8b ce                                          	MOV ECX,ESI
  007433a9:	ff d0                                          	CALL EAX
  007433ab:	f6 44 24 20 04                                 	TEST byte ptr [ESP + 0x20],0x4
  007433b0:	8b 74 24 04                                    	MOV ESI,dword ptr [ESP + 0x4]
  007433b4:	c7 44 24 18 f4 a6 fb 00                        	MOV dword ptr [ESP + 0x18],0xfba6f4
  007433bc:	74 0b                                          	JZ 0x007433c9
  007433be:	6a 00                                          	PUSH 0x0
  007433c0:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  007433c4:	e8 97 23 db ff                                 	CALL 0x004f5760
  007433c9:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  007433cd:	8b 44 24 08                                    	MOV EAX,dword ptr [ESP + 0x8]
  007433d1:	2b c8                                          	SUB ECX,EAX
  007433d3:	83 e1 fe                                       	AND ECX,0xfffffffe
  007433d6:	83 f9 02                                       	CMP ECX,0x2
  007433d9:	7e 0d                                          	JLE 0x007433e8
  007433db:	85 c0                                          	TEST EAX,EAX
  007433dd:	74 09                                          	JZ 0x007433e8
  007433df:	50                                             	PUSH EAX
  007433e0:	e8 fb 10 da ff                                 	CALL 0x004e44e0
  007433e5:	83 c4 04                                       	ADD ESP,0x4
  007433e8:	8b c6                                          	MOV EAX,ESI
  007433ea:	5e                                             	POP ESI
  007433eb:	83 c4 34                                       	ADD ESP,0x34
  007433ee:	c3                                             	RET
