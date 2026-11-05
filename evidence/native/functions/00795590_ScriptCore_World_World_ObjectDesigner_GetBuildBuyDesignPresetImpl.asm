# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795590 (ScriptCore.World::World_ObjectDesigner_GetBuildBuyDesignPresetImpl)
Paired Ghidra pseudocode: 00795590_ScriptCore_World_World_ObjectDesigner_GetBuildBuyDesignPresetImpl.c
Window: [0x00795590, 0x00795710) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795590: 55 8b ec 83 e4 f0 83 ec 4c f3 0f 10 4d 14 f3 0f
007955a0: 10 45 0c 8b 55 08 56 8d 44 24 08 50 f3 0f 11 4c
007955b0: 24 1c f3 0f 10 4d 10 8d 4c 24 24 51 f3 0f 11 44
007955c0: 24 24 f3 0f 11 4c 24 1c f3 0f 11 44 24 18 0f 28
007955d0: 44 24 18 52 0f 29 44 24 2c c7 44 24 14 00 00 00
007955e0: 00 e8 4a d0 2c 00 83 c4 0c 84 c0 75 16 8b 4c 24
007955f0: 08 85 c9 74 07 8b 01 8b 50 04 ff d2 33 c0 5e 8b
00795600: e5 5d c3 e8 88 3d fd ff 8b 4c 24 08 8b f0 b8 54
00795610: 8e 1c 01 89 44 24 10 89 44 24 14 8d 44 24 10 50
00795620: c7 44 24 20 18 1c 01 01 c7 44 24 1c 56 8e 1c 01
00795630: e8 eb a6 e2 ff 8b 44 24 10 3b 44 24 14 75 31 8b
00795640: 4c 24 18 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74
00795650: 09 50 e8 89 ee d4 ff 83 c4 04 8b 4c 24 08 85 c9
00795660: 74 07 8b 11 8b 42 04 ff d0 33 c0 5e 8b e5 5d c3
00795670: 6a 01 6a 10 8d 4c 24 18 51 6a 09 6a 13 8d 4c 24
00795680: 44 c7 44 24 44 6c 88 00 01 66 c7 44 24 4e 13 00
00795690: 66 c7 44 24 4c 0b 00 e8 24 03 d6 ff 8b 16 8b 52
007956a0: 50 8d 44 24 0c 50 8d 4c 24 34 51 8b ce ff d2 f6
007956b0: 44 24 38 04 8b 74 24 0c c7 44 24 30 f4 a6 fb 00
007956c0: 74 0b 6a 00 8d 4c 24 34 e8 93 00 d6 ff 8b 4c 24
007956d0: 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 85
007956e0: c0 74 09 50 e8 f7 ed d4 ff 83 c4 04 8b 4c 24 08
007956f0: 85 c9 74 07 8b 11 8b 42 04 ff d0 8b c6 5e 8b e5
00795700: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795590 <.text+0x394590>:
  795590:	55                                              	push   ebp
  795591:	8b ec                                           	mov    ebp,esp
  795593:	83 e4 f0                                        	and    esp,0xfffffff0
  795596:	83 ec 4c                                        	sub    esp,0x4c
  795599:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  79559e:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  7955a3:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  7955a6:	56                                              	push   esi
  7955a7:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7955ab:	50                                              	push   eax
  7955ac:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  7955b2:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  7955b7:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7955bb:	51                                              	push   ecx
  7955bc:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  7955c2:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  7955c8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  7955ce:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
  7955d3:	52                                              	push   edx
  7955d4:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  7955d9:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  7955e1:	e8 4a d0 2c 00                                  	call   0xa62630
  7955e6:	83 c4 0c                                        	add    esp,0xc
  7955e9:	84 c0                                           	test   al,al
  7955eb:	75 16                                           	jne    0x795603
  7955ed:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7955f1:	85 c9                                           	test   ecx,ecx
  7955f3:	74 07                                           	je     0x7955fc
  7955f5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7955f7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7955fa:	ff d2                                           	call   edx
  7955fc:	33 c0                                           	xor    eax,eax
  7955fe:	5e                                              	pop    esi
  7955ff:	8b e5                                           	mov    esp,ebp
  795601:	5d                                              	pop    ebp
  795602:	c3                                              	ret
  795603:	e8 88 3d fd ff                                  	call   0x769390
  795608:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  79560c:	8b f0                                           	mov    esi,eax
  79560e:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  795613:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  795617:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  79561b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  79561f:	50                                              	push   eax
  795620:	c7 44 24 20 18 1c 01 01                         	mov    DWORD PTR [esp+0x20],0x1011c18
  795628:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  795630:	e8 eb a6 e2 ff                                  	call   0x5bfd20
  795635:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  795639:	3b 44 24 14                                     	cmp    eax,DWORD PTR [esp+0x14]
  79563d:	75 31                                           	jne    0x795670
  79563f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  795643:	2b c8                                           	sub    ecx,eax
  795645:	83 e1 fe                                        	and    ecx,0xfffffffe
  795648:	83 f9 02                                        	cmp    ecx,0x2
  79564b:	7e 0d                                           	jle    0x79565a
  79564d:	85 c0                                           	test   eax,eax
  79564f:	74 09                                           	je     0x79565a
  795651:	50                                              	push   eax
  795652:	e8 89 ee d4 ff                                  	call   0x4e44e0
  795657:	83 c4 04                                        	add    esp,0x4
  79565a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  79565e:	85 c9                                           	test   ecx,ecx
  795660:	74 07                                           	je     0x795669
  795662:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  795664:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  795667:	ff d0                                           	call   eax
  795669:	33 c0                                           	xor    eax,eax
  79566b:	5e                                              	pop    esi
  79566c:	8b e5                                           	mov    esp,ebp
  79566e:	5d                                              	pop    ebp
  79566f:	c3                                              	ret
  795670:	6a 01                                           	push   0x1
  795672:	6a 10                                           	push   0x10
  795674:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  795678:	51                                              	push   ecx
  795679:	6a 09                                           	push   0x9
  79567b:	6a 13                                           	push   0x13
  79567d:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  795681:	c7 44 24 44 6c 88 00 01                         	mov    DWORD PTR [esp+0x44],0x100886c
  795689:	66 c7 44 24 4e 13 00                            	mov    WORD PTR [esp+0x4e],0x13
  795690:	66 c7 44 24 4c 0b 00                            	mov    WORD PTR [esp+0x4c],0xb
  795697:	e8 24 03 d6 ff                                  	call   0x4f59c0
  79569c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  79569e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7956a1:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  7956a5:	50                                              	push   eax
  7956a6:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7956aa:	51                                              	push   ecx
  7956ab:	8b ce                                           	mov    ecx,esi
  7956ad:	ff d2                                           	call   edx
  7956af:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  7956b4:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  7956b8:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  7956c0:	74 0b                                           	je     0x7956cd
  7956c2:	6a 00                                           	push   0x0
  7956c4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7956c8:	e8 93 00 d6 ff                                  	call   0x4f5760
  7956cd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7956d1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7956d5:	2b c8                                           	sub    ecx,eax
  7956d7:	83 e1 fe                                        	and    ecx,0xfffffffe
  7956da:	83 f9 02                                        	cmp    ecx,0x2
  7956dd:	7e 0d                                           	jle    0x7956ec
  7956df:	85 c0                                           	test   eax,eax
  7956e1:	74 09                                           	je     0x7956ec
  7956e3:	50                                              	push   eax
  7956e4:	e8 f7 ed d4 ff                                  	call   0x4e44e0
  7956e9:	83 c4 04                                        	add    esp,0x4
  7956ec:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7956f0:	85 c9                                           	test   ecx,ecx
  7956f2:	74 07                                           	je     0x7956fb
  7956f4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7956f6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7956f9:	ff d0                                           	call   eax
  7956fb:	8b c6                                           	mov    eax,esi
  7956fd:	5e                                              	pop    esi
  7956fe:	8b e5                                           	mov    esp,ebp
  795700:	5d                                              	pop    ebp
  795701:	c3                                              	ret
  795702:	cc                                              	int3
  795703:	cc                                              	int3
  795704:	cc                                              	int3
  795705:	cc                                              	int3
  795706:	cc                                              	int3
  795707:	cc                                              	int3
  795708:	cc                                              	int3
  795709:	cc                                              	int3
  79570a:	cc                                              	int3
  79570b:	cc                                              	int3
  79570c:	cc                                              	int3
  79570d:	cc                                              	int3
  79570e:	cc                                              	int3
  79570f:	cc                                              	int3
