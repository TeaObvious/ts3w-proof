# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83360 (ScriptCore.PersistImports::Serializer_ReadPrimitiveArray)
Paired Ghidra pseudocode: 00D83360_ScriptCore_PersistImports_Serializer_ReadPrimitiveArray.c
Window: [0x00d83360, 0x00d83470) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83360: 8b 44 24 08 83 ec 18 50 e8 13 1b 9f ff 83 c4 04
00d83370: 85 c0 75 04 83 c4 18 c3 53 6a 01 50 8d 4c 24 0c
00d83380: e8 5b 60 a5 ff 0f b6 54 24 28 8b 44 24 20 8b 48
00d83390: 08 83 c2 fe 83 fa 0d 0f 87 9a 00 00 00 0f b6 92
00d833a0: 5c 34 d8 00 ff 24 95 48 34 d8 00 51 83 c0 10 50
00d833b0: 8d 4c 24 0c e8 07 9f 83 ff 8a 5c 24 18 8d 4c 24
00d833c0: 04 e8 ca 45 a5 ff 0f b6 c3 5b 83 c4 18 c3 51 83
00d833d0: c0 10 50 8d 4c 24 0c e8 d4 fb 81 ff 8a 5c 24 18
00d833e0: 8d 4c 24 04 e8 a7 45 a5 ff 0f b6 c3 5b 83 c4 18
00d833f0: c3 51 83 c0 10 50 8d 4c 24 0c e8 11 fc 81 ff 8a
00d83400: 5c 24 18 8d 4c 24 04 e8 84 45 a5 ff 0f b6 c3 5b
00d83410: 83 c4 18 c3 51 83 c0 10 50 8d 4c 24 0c e8 8e 84
00d83420: 9e ff 8a 5c 24 18 8d 4c 24 04 e8 61 45 a5 ff 0f
00d83430: b6 c3 5b 83 c4 18 c3 8d 4c 24 04 e8 50 45 a5 ff
00d83440: 33 c0 5b 83 c4 18 c3 90 ab 33 d8 00 14 34 d8 00
00d83450: ce 33 d8 00 f1 33 d8 00 37 34 d8 00 00 00 04 04
00d83460: 04 01 02 03 01 00 03 02 03 01 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83360 <.text+0x982360>:
  d83360:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  d83364:	83 ec 18                                        	sub    esp,0x18
  d83367:	50                                              	push   eax
  d83368:	e8 13 1b 9f ff                                  	call   0x774e80
  d8336d:	83 c4 04                                        	add    esp,0x4
  d83370:	85 c0                                           	test   eax,eax
  d83372:	75 04                                           	jne    0xd83378
  d83374:	83 c4 18                                        	add    esp,0x18
  d83377:	c3                                              	ret
  d83378:	53                                              	push   ebx
  d83379:	6a 01                                           	push   0x1
  d8337b:	50                                              	push   eax
  d8337c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d83380:	e8 5b 60 a5 ff                                  	call   0x7d93e0
  d83385:	0f b6 54 24 28                                  	movzx  edx,BYTE PTR [esp+0x28]
  d8338a:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  d8338e:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d83391:	83 c2 fe                                        	add    edx,0xfffffffe
  d83394:	83 fa 0d                                        	cmp    edx,0xd
  d83397:	0f 87 9a 00 00 00                               	ja     0xd83437
  d8339d:	0f b6 92 5c 34 d8 00                            	movzx  edx,BYTE PTR [edx+0xd8345c]
  d833a4:	ff 24 95 48 34 d8 00                            	jmp    DWORD PTR [edx*4+0xd83448]
  d833ab:	51                                              	push   ecx
  d833ac:	83 c0 10                                        	add    eax,0x10
  d833af:	50                                              	push   eax
  d833b0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d833b4:	e8 07 9f 83 ff                                  	call   0x5bd2c0
  d833b9:	8a 5c 24 18                                     	mov    bl,BYTE PTR [esp+0x18]
  d833bd:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d833c1:	e8 ca 45 a5 ff                                  	call   0x7d7990
  d833c6:	0f b6 c3                                        	movzx  eax,bl
  d833c9:	5b                                              	pop    ebx
  d833ca:	83 c4 18                                        	add    esp,0x18
  d833cd:	c3                                              	ret
  d833ce:	51                                              	push   ecx
  d833cf:	83 c0 10                                        	add    eax,0x10
  d833d2:	50                                              	push   eax
  d833d3:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d833d7:	e8 d4 fb 81 ff                                  	call   0x5a2fb0
  d833dc:	8a 5c 24 18                                     	mov    bl,BYTE PTR [esp+0x18]
  d833e0:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d833e4:	e8 a7 45 a5 ff                                  	call   0x7d7990
  d833e9:	0f b6 c3                                        	movzx  eax,bl
  d833ec:	5b                                              	pop    ebx
  d833ed:	83 c4 18                                        	add    esp,0x18
  d833f0:	c3                                              	ret
  d833f1:	51                                              	push   ecx
  d833f2:	83 c0 10                                        	add    eax,0x10
  d833f5:	50                                              	push   eax
  d833f6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d833fa:	e8 11 fc 81 ff                                  	call   0x5a3010
  d833ff:	8a 5c 24 18                                     	mov    bl,BYTE PTR [esp+0x18]
  d83403:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d83407:	e8 84 45 a5 ff                                  	call   0x7d7990
  d8340c:	0f b6 c3                                        	movzx  eax,bl
  d8340f:	5b                                              	pop    ebx
  d83410:	83 c4 18                                        	add    esp,0x18
  d83413:	c3                                              	ret
  d83414:	51                                              	push   ecx
  d83415:	83 c0 10                                        	add    eax,0x10
  d83418:	50                                              	push   eax
  d83419:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d8341d:	e8 8e 84 9e ff                                  	call   0x76b8b0
  d83422:	8a 5c 24 18                                     	mov    bl,BYTE PTR [esp+0x18]
  d83426:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d8342a:	e8 61 45 a5 ff                                  	call   0x7d7990
  d8342f:	0f b6 c3                                        	movzx  eax,bl
  d83432:	5b                                              	pop    ebx
  d83433:	83 c4 18                                        	add    esp,0x18
  d83436:	c3                                              	ret
  d83437:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d8343b:	e8 50 45 a5 ff                                  	call   0x7d7990
  d83440:	33 c0                                           	xor    eax,eax
  d83442:	5b                                              	pop    ebx
  d83443:	83 c4 18                                        	add    esp,0x18
  d83446:	c3                                              	ret
  d83447:	90                                              	nop
  d83448:	ab                                              	stos   DWORD PTR es:[edi],eax
  d83449:	33 d8                                           	xor    ebx,eax
  d8344b:	00 14 34                                        	add    BYTE PTR [esp+esi*1],dl
  d8344e:	d8 00                                           	fadd   DWORD PTR [eax]
  d83450:	ce                                              	into
  d83451:	33 d8                                           	xor    ebx,eax
  d83453:	00 f1                                           	add    cl,dh
  d83455:	33 d8                                           	xor    ebx,eax
  d83457:	00 37                                           	add    BYTE PTR [edi],dh
  d83459:	34 d8                                           	xor    al,0xd8
  d8345b:	00 00                                           	add    BYTE PTR [eax],al
  d8345d:	00 04 04                                        	add    BYTE PTR [esp+eax*1],al
  d83460:	04 01                                           	add    al,0x1
  d83462:	02 03                                           	add    al,BYTE PTR [ebx]
  d83464:	01 00                                           	add    DWORD PTR [eax],eax
  d83466:	03 02                                           	add    eax,DWORD PTR [edx]
  d83468:	03 01                                           	add    eax,DWORD PTR [ecx]
  d8346a:	cc                                              	int3
  d8346b:	cc                                              	int3
  d8346c:	cc                                              	int3
  d8346d:	cc                                              	int3
  d8346e:	cc                                              	int3
  d8346f:	cc                                              	int3
