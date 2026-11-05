# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007954b0 (ScriptCore.World::World_ObjectDesigner_GetObjectDesignPresetImpl)
Paired Ghidra pseudocode: 007954B0_ScriptCore_World_World_ObjectDesigner_GetObjectDesignPresetImpl.c
Window: [0x007954b0, 0x00795590) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007954b0: 83 ec 34 56 57 e8 e6 ad 39 00 8b f8 e8 cf 3e fd
007954c0: ff 8b 4c 24 40 8b f0 8b 44 24 44 50 51 8b cf e8
007954d0: 6c c7 39 00 33 ff 3b c7 0f 84 a1 00 00 00 50 8d
007954e0: 4c 24 10 89 7c 24 10 89 7c 24 14 89 7c 24 18 c7
007954f0: 44 24 1c 18 1c 01 01 e8 94 60 c7 ff 6a 01 6a 10
00795500: 8d 54 24 14 52 6a 09 6a 13 8d 4c 24 30 c7 44 24
00795510: 30 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24
00795520: 38 0b 00 e8 98 04 d6 ff 8b 06 8b 40 50 8d 4c 24
00795530: 08 51 8d 54 24 20 52 8b ce ff d0 f6 44 24 24 04
00795540: 8b 74 24 08 c7 44 24 1c f4 a6 fb 00 74 0a 57 8d
00795550: 4c 24 20 e8 08 02 d6 ff 8b 4c 24 14 8b 44 24 0c
00795560: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09 50 e8
00795570: 6c ef d4 ff 83 c4 04 5f 8b c6 5e 83 c4 34 c3 5f
00795580: 33 c0 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007954b0 <.text+0x3944b0>:
  7954b0:	83 ec 34                                        	sub    esp,0x34
  7954b3:	56                                              	push   esi
  7954b4:	57                                              	push   edi
  7954b5:	e8 e6 ad 39 00                                  	call   0xb302a0
  7954ba:	8b f8                                           	mov    edi,eax
  7954bc:	e8 cf 3e fd ff                                  	call   0x769390
  7954c1:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7954c5:	8b f0                                           	mov    esi,eax
  7954c7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7954cb:	50                                              	push   eax
  7954cc:	51                                              	push   ecx
  7954cd:	8b cf                                           	mov    ecx,edi
  7954cf:	e8 6c c7 39 00                                  	call   0xb31c40
  7954d4:	33 ff                                           	xor    edi,edi
  7954d6:	3b c7                                           	cmp    eax,edi
  7954d8:	0f 84 a1 00 00 00                               	je     0x79557f
  7954de:	50                                              	push   eax
  7954df:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7954e3:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7954e7:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7954eb:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7954ef:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  7954f7:	e8 94 60 c7 ff                                  	call   0x40b590
  7954fc:	6a 01                                           	push   0x1
  7954fe:	6a 10                                           	push   0x10
  795500:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  795504:	52                                              	push   edx
  795505:	6a 09                                           	push   0x9
  795507:	6a 13                                           	push   0x13
  795509:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  79550d:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  795515:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  79551c:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  795523:	e8 98 04 d6 ff                                  	call   0x4f59c0
  795528:	8b 06                                           	mov    eax,DWORD PTR [esi]
  79552a:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  79552d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  795531:	51                                              	push   ecx
  795532:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  795536:	52                                              	push   edx
  795537:	8b ce                                           	mov    ecx,esi
  795539:	ff d0                                           	call   eax
  79553b:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795540:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  795544:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  79554c:	74 0a                                           	je     0x795558
  79554e:	57                                              	push   edi
  79554f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795553:	e8 08 02 d6 ff                                  	call   0x4f5760
  795558:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  79555c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795560:	2b c8                                           	sub    ecx,eax
  795562:	83 e1 fe                                        	and    ecx,0xfffffffe
  795565:	83 f9 02                                        	cmp    ecx,0x2
  795568:	7e 0d                                           	jle    0x795577
  79556a:	3b c7                                           	cmp    eax,edi
  79556c:	74 09                                           	je     0x795577
  79556e:	50                                              	push   eax
  79556f:	e8 6c ef d4 ff                                  	call   0x4e44e0
  795574:	83 c4 04                                        	add    esp,0x4
  795577:	5f                                              	pop    edi
  795578:	8b c6                                           	mov    eax,esi
  79557a:	5e                                              	pop    esi
  79557b:	83 c4 34                                        	add    esp,0x34
  79557e:	c3                                              	ret
  79557f:	5f                                              	pop    edi
  795580:	33 c0                                           	xor    eax,eax
  795582:	5e                                              	pop    esi
  795583:	83 c4 34                                        	add    esp,0x34
  795586:	c3                                              	ret
  795587:	cc                                              	int3
  795588:	cc                                              	int3
  795589:	cc                                              	int3
  79558a:	cc                                              	int3
  79558b:	cc                                              	int3
  79558c:	cc                                              	int3
  79558d:	cc                                              	int3
  79558e:	cc                                              	int3
  79558f:	cc                                              	int3
