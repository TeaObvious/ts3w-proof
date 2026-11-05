# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007953b0 (ScriptCore.World::World_ObjectDesigner_GetDesignPresetImpl)
Paired Ghidra pseudocode: 007953B0_ScriptCore_World_World_ObjectDesigner_GetDesignPresetImpl.c
Window: [0x007953b0, 0x007954b0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x007954b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007953b0: 83 ec 34 56 57 e8 e6 ae 39 00 8b f8 e8 cf 3f fd
007953c0: ff 8b 4c 24 40 8b f0 b8 54 8e 1c 01 89 44 24 0c
007953d0: 89 44 24 10 8d 44 24 0c 50 51 8b cf c7 44 24 20
007953e0: 18 1c 01 01 c7 44 24 1c 56 8e 1c 01 e8 8f e2 39
007953f0: 00 84 c0 0f 84 84 00 00 00 6a 01 6a 10 8d 54 24
00795400: 14 52 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88
00795410: 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b 00
00795420: e8 9b 05 d6 ff 8b 06 8b 40 50 8d 4c 24 08 51 8d
00795430: 54 24 20 52 8b ce ff d0 f6 44 24 24 04 8b 74 24
00795440: 08 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24
00795450: 20 e8 0a 03 d6 ff 8b 4c 24 14 8b 44 24 0c 2b c8
00795460: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 6e f0
00795470: d4 ff 83 c4 04 5f 8b c6 5e 83 c4 34 c3 8b 54 24
00795480: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00795490: c0 74 09 50 e8 47 f0 d4 ff 83 c4 04 5f 33 c0 5e
007954a0: 83 c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007953b0 <.text+0x3943b0>:
  7953b0:	83 ec 34                                        	sub    esp,0x34
  7953b3:	56                                              	push   esi
  7953b4:	57                                              	push   edi
  7953b5:	e8 e6 ae 39 00                                  	call   0xb302a0
  7953ba:	8b f8                                           	mov    edi,eax
  7953bc:	e8 cf 3f fd ff                                  	call   0x769390
  7953c1:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7953c5:	8b f0                                           	mov    esi,eax
  7953c7:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  7953cc:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7953d0:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7953d4:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  7953d8:	50                                              	push   eax
  7953d9:	51                                              	push   ecx
  7953da:	8b cf                                           	mov    ecx,edi
  7953dc:	c7 44 24 20 18 1c 01 01                         	mov    DWORD PTR [esp+0x20],0x1011c18
  7953e4:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  7953ec:	e8 8f e2 39 00                                  	call   0xb33680
  7953f1:	84 c0                                           	test   al,al
  7953f3:	0f 84 84 00 00 00                               	je     0x79547d
  7953f9:	6a 01                                           	push   0x1
  7953fb:	6a 10                                           	push   0x10
  7953fd:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  795401:	52                                              	push   edx
  795402:	6a 09                                           	push   0x9
  795404:	6a 13                                           	push   0x13
  795406:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  79540a:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  795412:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  795419:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  795420:	e8 9b 05 d6 ff                                  	call   0x4f59c0
  795425:	8b 06                                           	mov    eax,DWORD PTR [esi]
  795427:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  79542a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  79542e:	51                                              	push   ecx
  79542f:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  795433:	52                                              	push   edx
  795434:	8b ce                                           	mov    ecx,esi
  795436:	ff d0                                           	call   eax
  795438:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  79543d:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  795441:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  795449:	74 0b                                           	je     0x795456
  79544b:	6a 00                                           	push   0x0
  79544d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795451:	e8 0a 03 d6 ff                                  	call   0x4f5760
  795456:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  79545a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  79545e:	2b c8                                           	sub    ecx,eax
  795460:	83 e1 fe                                        	and    ecx,0xfffffffe
  795463:	83 f9 02                                        	cmp    ecx,0x2
  795466:	7e 0d                                           	jle    0x795475
  795468:	85 c0                                           	test   eax,eax
  79546a:	74 09                                           	je     0x795475
  79546c:	50                                              	push   eax
  79546d:	e8 6e f0 d4 ff                                  	call   0x4e44e0
  795472:	83 c4 04                                        	add    esp,0x4
  795475:	5f                                              	pop    edi
  795476:	8b c6                                           	mov    eax,esi
  795478:	5e                                              	pop    esi
  795479:	83 c4 34                                        	add    esp,0x34
  79547c:	c3                                              	ret
  79547d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  795481:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795485:	2b d0                                           	sub    edx,eax
  795487:	83 e2 fe                                        	and    edx,0xfffffffe
  79548a:	83 fa 02                                        	cmp    edx,0x2
  79548d:	7e 0d                                           	jle    0x79549c
  79548f:	85 c0                                           	test   eax,eax
  795491:	74 09                                           	je     0x79549c
  795493:	50                                              	push   eax
  795494:	e8 47 f0 d4 ff                                  	call   0x4e44e0
  795499:	83 c4 04                                        	add    esp,0x4
  79549c:	5f                                              	pop    edi
  79549d:	33 c0                                           	xor    eax,eax
  79549f:	5e                                              	pop    esi
  7954a0:	83 c4 34                                        	add    esp,0x34
  7954a3:	c3                                              	ret
  7954a4:	cc                                              	int3
  7954a5:	cc                                              	int3
  7954a6:	cc                                              	int3
  7954a7:	cc                                              	int3
  7954a8:	cc                                              	int3
  7954a9:	cc                                              	int3
  7954aa:	cc                                              	int3
  7954ab:	cc                                              	int3
  7954ac:	cc                                              	int3
  7954ad:	cc                                              	int3
  7954ae:	cc                                              	int3
  7954af:	cc                                              	int3
