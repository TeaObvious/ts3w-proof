# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577790 (World_WallExistsBetweenPointsImpl)
Paired Ghidra pseudocode: 10577790_World_WallExistsBetweenPointsImpl.c
Window: [0x10577790, 0x10577870) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577790: 55 8b ec 83 e4 f0 8b 0d c4 00 c7 10 83 ec 2c 85
105777a0: c9 56 0f 84 b8 00 00 00 8b 45 0c 8b 55 08 6a 00
105777b0: 50 52 e8 59 f8 cb ff 8b f0 85 f6 0f 84 9f 00 00
105777c0: 00 f3 0f 10 05 84 e1 aa 10 8d 44 24 14 50 8d 4c
105777d0: 24 24 51 8d 4d 10 f3 0f 11 44 24 1c f3 0f 11 44
105777e0: 24 20 c7 44 24 24 00 00 00 00 e8 31 63 fe ff 50
105777f0: 56 e8 ea b8 b2 ff f3 0f 10 05 84 e1 aa 10 83 c4
10577800: 0c 8d 54 24 08 52 8d 44 24 24 50 8d 4d 1c f3 0f
10577810: 11 44 24 10 f3 0f 11 44 24 14 c7 44 24 18 00 00
10577820: 00 00 e8 f9 62 fe ff 50 56 e8 b2 b8 b2 ff 8b 8e
10577830: 98 02 00 00 8b 55 28 8b 4c 91 54 83 c4 0c 85 c9
10577840: 74 1e 8b 44 24 1c 6a 00 8d 54 24 0c 89 44 24 14
10577850: 52 8d 44 24 1c 50 e8 a5 d5 c9 ff 5e 8b e5 5d c3
10577860: 32 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577790 <.text+0x576790>:
10577790:	55                                              	push   ebp
10577791:	8b ec                                           	mov    ebp,esp
10577793:	83 e4 f0                                        	and    esp,0xfffffff0
10577796:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057779c:	83 ec 2c                                        	sub    esp,0x2c
1057779f:	85 c9                                           	test   ecx,ecx
105777a1:	56                                              	push   esi
105777a2:	0f 84 b8 00 00 00                               	je     0x10577860
105777a8:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
105777ab:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
105777ae:	6a 00                                           	push   0x0
105777b0:	50                                              	push   eax
105777b1:	52                                              	push   edx
105777b2:	e8 59 f8 cb ff                                  	call   0x10237010
105777b7:	8b f0                                           	mov    esi,eax
105777b9:	85 f6                                           	test   esi,esi
105777bb:	0f 84 9f 00 00 00                               	je     0x10577860
105777c1:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
105777c9:	8d 44 24 14                                     	lea    eax,[esp+0x14]
105777cd:	50                                              	push   eax
105777ce:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
105777d2:	51                                              	push   ecx
105777d3:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
105777d6:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105777dc:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
105777e2:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
105777ea:	e8 31 63 fe ff                                  	call   0x1055db20
105777ef:	50                                              	push   eax
105777f0:	56                                              	push   esi
105777f1:	e8 ea b8 b2 ff                                  	call   0x100a30e0
105777f6:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
105777fe:	83 c4 0c                                        	add    esp,0xc
10577801:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10577805:	52                                              	push   edx
10577806:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1057780a:	50                                              	push   eax
1057780b:	8d 4d 1c                                        	lea    ecx,[ebp+0x1c]
1057780e:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10577814:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1057781a:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
10577822:	e8 f9 62 fe ff                                  	call   0x1055db20
10577827:	50                                              	push   eax
10577828:	56                                              	push   esi
10577829:	e8 b2 b8 b2 ff                                  	call   0x100a30e0
1057782e:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
10577834:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
10577837:	8b 4c 91 54                                     	mov    ecx,DWORD PTR [ecx+edx*4+0x54]
1057783b:	83 c4 0c                                        	add    esp,0xc
1057783e:	85 c9                                           	test   ecx,ecx
10577840:	74 1e                                           	je     0x10577860
10577842:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10577846:	6a 00                                           	push   0x0
10577848:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
1057784c:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10577850:	52                                              	push   edx
10577851:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10577855:	50                                              	push   eax
10577856:	e8 a5 d5 c9 ff                                  	call   0x10214e00
1057785b:	5e                                              	pop    esi
1057785c:	8b e5                                           	mov    esp,ebp
1057785e:	5d                                              	pop    ebp
1057785f:	c3                                              	ret
10577860:	32 c0                                           	xor    al,al
10577862:	5e                                              	pop    esi
10577863:	8b e5                                           	mov    esp,ebp
10577865:	5d                                              	pop    ebp
10577866:	c3                                              	ret
10577867:	cc                                              	int3
10577868:	cc                                              	int3
10577869:	cc                                              	int3
1057786a:	cc                                              	int3
1057786b:	cc                                              	int3
1057786c:	cc                                              	int3
1057786d:	cc                                              	int3
1057786e:	cc                                              	int3
1057786f:	cc                                              	int3
