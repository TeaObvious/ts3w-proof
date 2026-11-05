# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00793760 (ScriptCore.World::World_GetInformationAboutRoomImpl)
Paired Ghidra pseudocode: 00793760_ScriptCore_World_World_GetInformationAboutRoomImpl.c
Window: [0x00793760, 0x00793830) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00793830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00793760: 83 ec 1c e8 28 5c fd ff 8b 0d c4 db 1e 01 85 c9
00793770: 0f 84 88 00 00 00 8b 44 24 28 8b 54 24 24 6a 00
00793780: 50 52 e8 89 f0 4c 00 85 c0 74 73 8d 4c 24 01 51
00793790: 8d 54 24 06 52 8d 4c 24 0b 51 8d 54 24 20 52 8d
007937a0: 4c 24 20 51 8d 54 24 20 52 8d 4c 24 20 51 8b 4c
007937b0: 24 4c 8d 54 24 20 52 8b 54 24 4c 51 52 50 c6 44
007937c0: 24 2f 00 c6 44 24 2e 00 c6 44 24 2d 00 e8 be c9
007937d0: 36 00 8a 4c 24 2d 8a 44 24 2e 83 c4 2c f6 d9 1b
007937e0: c9 83 e1 04 f6 d8 1b c0 83 e0 02 33 d2 0b c8 38
007937f0: 54 24 03 0f 95 c2 0b ca 8b 54 24 04 eb 06 8b 4c
00793800: 24 18 33 d2 8b 44 24 20 89 10 8b 54 24 08 89 50
00793810: 04 8b 54 24 0c 89 50 08 8b 54 24 10 89 50 0c 8b
00793820: 54 24 14 89 50 10 89 48 14 83 c4 1c c3 cc cc cc

LINEAR DISASSEMBLY
00793760 <.text+0x392760>:
  793760:	83 ec 1c                                        	sub    esp,0x1c
  793763:	e8 28 5c fd ff                                  	call   0x769390
  793768:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  79376e:	85 c9                                           	test   ecx,ecx
  793770:	0f 84 88 00 00 00                               	je     0x7937fe
  793776:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  79377a:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  79377e:	6a 00                                           	push   0x0
  793780:	50                                              	push   eax
  793781:	52                                              	push   edx
  793782:	e8 89 f0 4c 00                                  	call   0xc62810
  793787:	85 c0                                           	test   eax,eax
  793789:	74 73                                           	je     0x7937fe
  79378b:	8d 4c 24 01                                     	lea    ecx,[esp+0x1]
  79378f:	51                                              	push   ecx
  793790:	8d 54 24 06                                     	lea    edx,[esp+0x6]
  793794:	52                                              	push   edx
  793795:	8d 4c 24 0b                                     	lea    ecx,[esp+0xb]
  793799:	51                                              	push   ecx
  79379a:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  79379e:	52                                              	push   edx
  79379f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7937a3:	51                                              	push   ecx
  7937a4:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7937a8:	52                                              	push   edx
  7937a9:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7937ad:	51                                              	push   ecx
  7937ae:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7937b2:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7937b6:	52                                              	push   edx
  7937b7:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  7937bb:	51                                              	push   ecx
  7937bc:	52                                              	push   edx
  7937bd:	50                                              	push   eax
  7937be:	c6 44 24 2f 00                                  	mov    BYTE PTR [esp+0x2f],0x0
  7937c3:	c6 44 24 2e 00                                  	mov    BYTE PTR [esp+0x2e],0x0
  7937c8:	c6 44 24 2d 00                                  	mov    BYTE PTR [esp+0x2d],0x0
  7937cd:	e8 be c9 36 00                                  	call   0xb00190
  7937d2:	8a 4c 24 2d                                     	mov    cl,BYTE PTR [esp+0x2d]
  7937d6:	8a 44 24 2e                                     	mov    al,BYTE PTR [esp+0x2e]
  7937da:	83 c4 2c                                        	add    esp,0x2c
  7937dd:	f6 d9                                           	neg    cl
  7937df:	1b c9                                           	sbb    ecx,ecx
  7937e1:	83 e1 04                                        	and    ecx,0x4
  7937e4:	f6 d8                                           	neg    al
  7937e6:	1b c0                                           	sbb    eax,eax
  7937e8:	83 e0 02                                        	and    eax,0x2
  7937eb:	33 d2                                           	xor    edx,edx
  7937ed:	0b c8                                           	or     ecx,eax
  7937ef:	38 54 24 03                                     	cmp    BYTE PTR [esp+0x3],dl
  7937f3:	0f 95 c2                                        	setne  dl
  7937f6:	0b ca                                           	or     ecx,edx
  7937f8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7937fc:	eb 06                                           	jmp    0x793804
  7937fe:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  793802:	33 d2                                           	xor    edx,edx
  793804:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  793808:	89 10                                           	mov    DWORD PTR [eax],edx
  79380a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  79380e:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  793811:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  793815:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  793818:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  79381c:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  79381f:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  793823:	89 50 10                                        	mov    DWORD PTR [eax+0x10],edx
  793826:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  793829:	83 c4 1c                                        	add    esp,0x1c
  79382c:	c3                                              	ret
  79382d:	cc                                              	int3
  79382e:	cc                                              	int3
  79382f:	cc                                              	int3
