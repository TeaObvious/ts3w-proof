# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784480 (ScriptCore.VideoRecorder::VideoRecorder_SetSettings)
Paired Ghidra pseudocode: 00784480_ScriptCore_VideoRecorder_VideoRecorder_SetSettings.c
Window: [0x00784480, 0x007845c0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x007845c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784480: 83 ec 24 53 56 e8 06 bb 25 00 8b f0 33 db 3b f3
00784490: 0f 84 1f 01 00 00 e8 f5 4e fe ff 8d 4c 24 0c 51
007844a0: 8d 4c 24 0c 51 8b 4c 24 38 89 5c 24 14 8b 10 8b
007844b0: 52 6c 51 8b c8 ff d2 83 7c 24 0c 08 0f 85 f3 00
007844c0: 00 00 33 c0 89 44 24 14 89 44 24 18 89 44 24 1c
007844d0: 89 44 24 20 89 44 24 24 89 44 24 28 8b 44 24 08
007844e0: 8b c8 83 c0 04 89 44 24 08 83 39 03 c7 44 24 10
007844f0: 03 00 00 00 76 04 8d 4c 24 10 8b 09 89 4c 24 14
00784500: 8b c8 83 c0 04 89 44 24 08 83 39 02 c7 44 24 10
00784510: 02 00 00 00 76 04 8d 4c 24 10 8b 11 8b c8 89 54
00784520: 24 18 83 c0 04 ba 01 00 00 00 89 44 24 08 39 11
00784530: 89 54 24 10 76 04 8d 4c 24 10 8b 09 89 4c 24 1c
00784540: 8b c8 83 c0 04 89 44 24 08 39 11 89 54 24 10 76
00784550: 04 8d 4c 24 10 8b 09 89 4c 24 20 8b 08 83 c0 04
00784560: 89 44 24 08 89 4c 24 24 8b 08 83 c0 04 85 c9 89
00784570: 44 24 08 88 54 24 28 75 04 88 5c 24 28 8b 08 83
00784580: c0 04 85 c9 89 44 24 08 88 54 24 29 75 04 88 5c
00784590: 24 29 8b 08 83 c0 04 85 c9 89 44 24 08 88 54 24
007845a0: 2a 75 04 88 5c 24 2a 8b 16 8b 52 04 8d 44 24 14
007845b0: 50 8b ce ff d2 5e 5b 83 c4 24 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00784480 <.text+0x383480>:
  784480:	83 ec 24                                        	sub    esp,0x24
  784483:	53                                              	push   ebx
  784484:	56                                              	push   esi
  784485:	e8 06 bb 25 00                                  	call   0x9dff90
  78448a:	8b f0                                           	mov    esi,eax
  78448c:	33 db                                           	xor    ebx,ebx
  78448e:	3b f3                                           	cmp    esi,ebx
  784490:	0f 84 1f 01 00 00                               	je     0x7845b5
  784496:	e8 f5 4e fe ff                                  	call   0x769390
  78449b:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78449f:	51                                              	push   ecx
  7844a0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7844a4:	51                                              	push   ecx
  7844a5:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7844a9:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  7844ad:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7844af:	8b 52 6c                                        	mov    edx,DWORD PTR [edx+0x6c]
  7844b2:	51                                              	push   ecx
  7844b3:	8b c8                                           	mov    ecx,eax
  7844b5:	ff d2                                           	call   edx
  7844b7:	83 7c 24 0c 08                                  	cmp    DWORD PTR [esp+0xc],0x8
  7844bc:	0f 85 f3 00 00 00                               	jne    0x7845b5
  7844c2:	33 c0                                           	xor    eax,eax
  7844c4:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  7844c8:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  7844cc:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  7844d0:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7844d4:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  7844d8:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  7844dc:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7844e0:	8b c8                                           	mov    ecx,eax
  7844e2:	83 c0 04                                        	add    eax,0x4
  7844e5:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  7844e9:	83 39 03                                        	cmp    DWORD PTR [ecx],0x3
  7844ec:	c7 44 24 10 03 00 00 00                         	mov    DWORD PTR [esp+0x10],0x3
  7844f4:	76 04                                           	jbe    0x7844fa
  7844f6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7844fa:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  7844fc:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  784500:	8b c8                                           	mov    ecx,eax
  784502:	83 c0 04                                        	add    eax,0x4
  784505:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  784509:	83 39 02                                        	cmp    DWORD PTR [ecx],0x2
  78450c:	c7 44 24 10 02 00 00 00                         	mov    DWORD PTR [esp+0x10],0x2
  784514:	76 04                                           	jbe    0x78451a
  784516:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78451a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78451c:	8b c8                                           	mov    ecx,eax
  78451e:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  784522:	83 c0 04                                        	add    eax,0x4
  784525:	ba 01 00 00 00                                  	mov    edx,0x1
  78452a:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78452e:	39 11                                           	cmp    DWORD PTR [ecx],edx
  784530:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  784534:	76 04                                           	jbe    0x78453a
  784536:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78453a:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  78453c:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  784540:	8b c8                                           	mov    ecx,eax
  784542:	83 c0 04                                        	add    eax,0x4
  784545:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  784549:	39 11                                           	cmp    DWORD PTR [ecx],edx
  78454b:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  78454f:	76 04                                           	jbe    0x784555
  784551:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  784555:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  784557:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  78455b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78455d:	83 c0 04                                        	add    eax,0x4
  784560:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  784564:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  784568:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78456a:	83 c0 04                                        	add    eax,0x4
  78456d:	85 c9                                           	test   ecx,ecx
  78456f:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  784573:	88 54 24 28                                     	mov    BYTE PTR [esp+0x28],dl
  784577:	75 04                                           	jne    0x78457d
  784579:	88 5c 24 28                                     	mov    BYTE PTR [esp+0x28],bl
  78457d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78457f:	83 c0 04                                        	add    eax,0x4
  784582:	85 c9                                           	test   ecx,ecx
  784584:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  784588:	88 54 24 29                                     	mov    BYTE PTR [esp+0x29],dl
  78458c:	75 04                                           	jne    0x784592
  78458e:	88 5c 24 29                                     	mov    BYTE PTR [esp+0x29],bl
  784592:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  784594:	83 c0 04                                        	add    eax,0x4
  784597:	85 c9                                           	test   ecx,ecx
  784599:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78459d:	88 54 24 2a                                     	mov    BYTE PTR [esp+0x2a],dl
  7845a1:	75 04                                           	jne    0x7845a7
  7845a3:	88 5c 24 2a                                     	mov    BYTE PTR [esp+0x2a],bl
  7845a7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7845a9:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
  7845ac:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7845b0:	50                                              	push   eax
  7845b1:	8b ce                                           	mov    ecx,esi
  7845b3:	ff d2                                           	call   edx
  7845b5:	5e                                              	pop    esi
  7845b6:	5b                                              	pop    ebx
  7845b7:	83 c4 24                                        	add    esp,0x24
  7845ba:	c3                                              	ret
  7845bb:	cc                                              	int3
  7845bc:	cc                                              	int3
  7845bd:	cc                                              	int3
  7845be:	cc                                              	int3
  7845bf:	cc                                              	int3
