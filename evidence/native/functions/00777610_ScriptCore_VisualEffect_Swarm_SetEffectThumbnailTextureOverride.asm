# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777610 (ScriptCore.VisualEffect::Swarm_SetEffectThumbnailTextureOverride)
Paired Ghidra pseudocode: 00777610_ScriptCore_VisualEffect_Swarm_SetEffectThumbnailTextureOverride.c
Window: [0x00777610, 0x00777760) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777610: 55 8b ec 83 e4 f8 81 ec 44 01 00 00 53 56 57 e8
00777620: 4c ff 1b 00 85 c0 0f 84 f8 00 00 00 8b 4d 0c 8b
00777630: 55 08 51 52 8b c8 e8 45 09 1c 00 85 c0 0f 84 e1
00777640: 00 00 00 8b 0d 90 9e 1e 01 51 8b c8 e8 0f cc 1b
00777650: 00 85 c0 89 44 24 10 0f 84 c7 00 00 00 a1 30 ec
00777660: 1e 01 85 c0 89 44 24 14 0f 84 b6 00 00 00 8d 4c
00777670: 24 28 e8 89 ee e6 ff 8d 54 24 18 52 8d 4d 10 e8
00777680: 5c 4a ff ff 8b 08 8b 75 20 8b 7d 24 89 8c 24 a0
00777690: 00 00 00 8b 50 04 89 94 24 a4 00 00 00 8b 48 08
007776a0: 89 8c 24 a8 00 00 00 8b 50 0c 8b 45 28 8b 4d 30
007776b0: 89 94 24 ac 00 00 00 8b 55 34 83 ec 10 89 84 24
007776c0: 38 01 00 00 8b c4 89 8c 24 44 01 00 00 33 c9 89
007776d0: 08 89 94 24 48 01 00 00 33 d2 89 50 04 33 db 89
007776e0: 58 08 89 48 0c 8b 45 2c 53 50 8d 4c 24 40 89 b4
007776f0: 24 c8 00 00 00 89 bc 24 cc 00 00 00 e8 af f5 e6
00777700: ff 8b ce 0b cf 74 26 8b 4c 24 14 8d 54 24 28 52
00777710: 57 56 e8 29 4d 5d 00 84 c0 75 12 8d 4c 24 28 e8
00777720: ec ec e6 ff 32 c0 5f 5e 5b 8b e5 5d c3 8b 45 38
00777730: 50 8d 4c 24 2c 51 8b 4c 24 18 e8 21 d1 1c 00 8d
00777740: 4c 24 28 e8 c8 ec e6 ff 5f 5e b0 01 5b 8b e5 5d
00777750: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777610 <.text+0x376610>:
  777610:	55                                              	push   ebp
  777611:	8b ec                                           	mov    ebp,esp
  777613:	83 e4 f8                                        	and    esp,0xfffffff8
  777616:	81 ec 44 01 00 00                               	sub    esp,0x144
  77761c:	53                                              	push   ebx
  77761d:	56                                              	push   esi
  77761e:	57                                              	push   edi
  77761f:	e8 4c ff 1b 00                                  	call   0x937570
  777624:	85 c0                                           	test   eax,eax
  777626:	0f 84 f8 00 00 00                               	je     0x777724
  77762c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  77762f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  777632:	51                                              	push   ecx
  777633:	52                                              	push   edx
  777634:	8b c8                                           	mov    ecx,eax
  777636:	e8 45 09 1c 00                                  	call   0x937f80
  77763b:	85 c0                                           	test   eax,eax
  77763d:	0f 84 e1 00 00 00                               	je     0x777724
  777643:	8b 0d 90 9e 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9e90
  777649:	51                                              	push   ecx
  77764a:	8b c8                                           	mov    ecx,eax
  77764c:	e8 0f cc 1b 00                                  	call   0x934260
  777651:	85 c0                                           	test   eax,eax
  777653:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  777657:	0f 84 c7 00 00 00                               	je     0x777724
  77765d:	a1 30 ec 1e 01                                  	mov    eax,ds:0x11eec30
  777662:	85 c0                                           	test   eax,eax
  777664:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  777668:	0f 84 b6 00 00 00                               	je     0x777724
  77766e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  777672:	e8 89 ee e6 ff                                  	call   0x5e6500
  777677:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77767b:	52                                              	push   edx
  77767c:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  77767f:	e8 5c 4a ff ff                                  	call   0x76c0e0
  777684:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  777686:	8b 75 20                                        	mov    esi,DWORD PTR [ebp+0x20]
  777689:	8b 7d 24                                        	mov    edi,DWORD PTR [ebp+0x24]
  77768c:	89 8c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ecx
  777693:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  777696:	89 94 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],edx
  77769d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  7776a0:	89 8c 24 a8 00 00 00                            	mov    DWORD PTR [esp+0xa8],ecx
  7776a7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  7776aa:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
  7776ad:	8b 4d 30                                        	mov    ecx,DWORD PTR [ebp+0x30]
  7776b0:	89 94 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],edx
  7776b7:	8b 55 34                                        	mov    edx,DWORD PTR [ebp+0x34]
  7776ba:	83 ec 10                                        	sub    esp,0x10
  7776bd:	89 84 24 38 01 00 00                            	mov    DWORD PTR [esp+0x138],eax
  7776c4:	8b c4                                           	mov    eax,esp
  7776c6:	89 8c 24 44 01 00 00                            	mov    DWORD PTR [esp+0x144],ecx
  7776cd:	33 c9                                           	xor    ecx,ecx
  7776cf:	89 08                                           	mov    DWORD PTR [eax],ecx
  7776d1:	89 94 24 48 01 00 00                            	mov    DWORD PTR [esp+0x148],edx
  7776d8:	33 d2                                           	xor    edx,edx
  7776da:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7776dd:	33 db                                           	xor    ebx,ebx
  7776df:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
  7776e2:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  7776e5:	8b 45 2c                                        	mov    eax,DWORD PTR [ebp+0x2c]
  7776e8:	53                                              	push   ebx
  7776e9:	50                                              	push   eax
  7776ea:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7776ee:	89 b4 24 c8 00 00 00                            	mov    DWORD PTR [esp+0xc8],esi
  7776f5:	89 bc 24 cc 00 00 00                            	mov    DWORD PTR [esp+0xcc],edi
  7776fc:	e8 af f5 e6 ff                                  	call   0x5e6cb0
  777701:	8b ce                                           	mov    ecx,esi
  777703:	0b cf                                           	or     ecx,edi
  777705:	74 26                                           	je     0x77772d
  777707:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77770b:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  77770f:	52                                              	push   edx
  777710:	57                                              	push   edi
  777711:	56                                              	push   esi
  777712:	e8 29 4d 5d 00                                  	call   0xd4c440
  777717:	84 c0                                           	test   al,al
  777719:	75 12                                           	jne    0x77772d
  77771b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77771f:	e8 ec ec e6 ff                                  	call   0x5e6410
  777724:	32 c0                                           	xor    al,al
  777726:	5f                                              	pop    edi
  777727:	5e                                              	pop    esi
  777728:	5b                                              	pop    ebx
  777729:	8b e5                                           	mov    esp,ebp
  77772b:	5d                                              	pop    ebp
  77772c:	c3                                              	ret
  77772d:	8b 45 38                                        	mov    eax,DWORD PTR [ebp+0x38]
  777730:	50                                              	push   eax
  777731:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  777735:	51                                              	push   ecx
  777736:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  77773a:	e8 21 d1 1c 00                                  	call   0x944860
  77773f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  777743:	e8 c8 ec e6 ff                                  	call   0x5e6410
  777748:	5f                                              	pop    edi
  777749:	5e                                              	pop    esi
  77774a:	b0 01                                           	mov    al,0x1
  77774c:	5b                                              	pop    ebx
  77774d:	8b e5                                           	mov    esp,ebp
  77774f:	5d                                              	pop    ebp
  777750:	c3                                              	ret
  777751:	cc                                              	int3
  777752:	cc                                              	int3
  777753:	cc                                              	int3
  777754:	cc                                              	int3
  777755:	cc                                              	int3
  777756:	cc                                              	int3
  777757:	cc                                              	int3
  777758:	cc                                              	int3
  777759:	cc                                              	int3
  77775a:	cc                                              	int3
  77775b:	cc                                              	int3
  77775c:	cc                                              	int3
  77775d:	cc                                              	int3
  77775e:	cc                                              	int3
  77775f:	cc                                              	int3
