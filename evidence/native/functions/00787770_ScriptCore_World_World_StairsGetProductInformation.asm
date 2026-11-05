# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787770 (ScriptCore.World::World_StairsGetProductInformation)
Paired Ghidra pseudocode: 00787770_ScriptCore_World_World_StairsGetProductInformation.c
Window: [0x00787770, 0x007878a0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x007878a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787770: 55 8b ec 83 e4 f0 83 ec 4c f3 0f 10 4d 10 f3 0f
00787780: 10 45 08 56 33 f6 8d 44 24 0c f3 0f 11 4c 24 38
00787790: f3 0f 10 4d 0c 50 8d 4c 24 0c f3 0f 11 44 24 40
007877a0: f3 0f 11 4c 24 38 f3 0f 11 44 24 34 0f 28 44 24
007877b0: 34 51 8d 54 24 38 52 89 74 24 1c 89 74 24 20 89
007877c0: 74 24 24 89 74 24 28 89 74 24 2c 89 74 24 30 89
007877d0: 74 24 34 89 74 24 38 0f 29 44 24 3c e8 0f 68 37
007877e0: 00 83 c4 0c 84 c0 74 5c 8b 44 24 08 8b 88 b4 02
007877f0: 00 00 8b 44 24 0c 8d 54 24 04 52 50 89 74 24 0c
00787800: e8 1b 08 39 00 84 c0 74 3b 8b 44 24 04 8b 08 89
00787810: 4c 24 10 8b 50 04 89 54 24 14 8b 48 08 89 4c 24
00787820: 18 8b 50 0c 89 54 24 1c 8b 48 30 89 4c 24 20 8b
00787830: 50 34 89 54 24 24 8b 48 38 89 4c 24 28 8b 50 3c
00787840: 89 54 24 2c 8d 44 24 10 50 8d 4c 24 44 51 e8 7d
00787850: 47 fe ff 8b 10 8b 4d 14 89 11 8b 50 04 89 51 04
00787860: 8b 50 08 89 51 08 8b 40 0c 89 41 0c 8d 4c 24 28
00787870: 51 8d 54 24 4c 52 e8 55 47 fe ff 8b 10 8b 4d 18
00787880: 89 11 8b 50 04 89 51 04 8b 50 08 89 51 08 8b 40
00787890: 0c 83 c4 10 89 41 0c 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00787770 <.text+0x386770>:
  787770:	55                                              	push   ebp
  787771:	8b ec                                           	mov    ebp,esp
  787773:	83 e4 f0                                        	and    esp,0xfffffff0
  787776:	83 ec 4c                                        	sub    esp,0x4c
  787779:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78777e:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  787783:	56                                              	push   esi
  787784:	33 f6                                           	xor    esi,esi
  787786:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  78778a:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  787790:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  787795:	50                                              	push   eax
  787796:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78779a:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  7877a0:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  7877a6:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7877ac:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
  7877b1:	51                                              	push   ecx
  7877b2:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  7877b6:	52                                              	push   edx
  7877b7:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  7877bb:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  7877bf:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  7877c3:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  7877c7:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  7877cb:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  7877cf:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  7877d3:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  7877d7:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  7877dc:	e8 0f 68 37 00                                  	call   0xafdff0
  7877e1:	83 c4 0c                                        	add    esp,0xc
  7877e4:	84 c0                                           	test   al,al
  7877e6:	74 5c                                           	je     0x787844
  7877e8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7877ec:	8b 88 b4 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2b4]
  7877f2:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7877f6:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  7877fa:	52                                              	push   edx
  7877fb:	50                                              	push   eax
  7877fc:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  787800:	e8 1b 08 39 00                                  	call   0xb18020
  787805:	84 c0                                           	test   al,al
  787807:	74 3b                                           	je     0x787844
  787809:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78780d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78780f:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  787813:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  787816:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  78781a:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  78781d:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  787821:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  787824:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  787828:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  78782b:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  78782f:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  787832:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  787836:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  787839:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  78783d:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  787840:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  787844:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  787848:	50                                              	push   eax
  787849:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  78784d:	51                                              	push   ecx
  78784e:	e8 7d 47 fe ff                                  	call   0x76bfd0
  787853:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787855:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  787858:	89 11                                           	mov    DWORD PTR [ecx],edx
  78785a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  78785d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  787860:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  787863:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  787866:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  787869:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  78786c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  787870:	51                                              	push   ecx
  787871:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
  787875:	52                                              	push   edx
  787876:	e8 55 47 fe ff                                  	call   0x76bfd0
  78787b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78787d:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  787880:	89 11                                           	mov    DWORD PTR [ecx],edx
  787882:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  787885:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  787888:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  78788b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  78788e:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  787891:	83 c4 10                                        	add    esp,0x10
  787894:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  787897:	5e                                              	pop    esi
  787898:	8b e5                                           	mov    esp,ebp
  78789a:	5d                                              	pop    ebp
  78789b:	c3                                              	ret
  78789c:	cc                                              	int3
  78789d:	cc                                              	int3
  78789e:	cc                                              	int3
  78789f:	cc                                              	int3
