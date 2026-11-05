# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577570 (World_HasPoolImpl)
Paired Ghidra pseudocode: 10577570_World_HasPoolImpl.c
Window: [0x10577570, 0x10577630) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577570: 8b 0d c4 00 c7 10 83 ec 10 85 c9 56 0f 84 9d 00
10577580: 00 00 8b 44 24 1c 8b 54 24 18 6a 00 50 52 e8 7d
10577590: fa cb ff 8b f0 85 f6 0f 84 82 00 00 00 f3 0f 2a
105775a0: 44 24 20 0c ff 88 44 24 04 88 44 24 05 88 44 24
105775b0: 07 0f be 44 24 28 8d 4c 24 04 51 8d 54 24 0c f3
105775c0: 0f 11 44 24 0c f3 0f 2a 44 24 28 52 c6 44 24 0e
105775d0: 00 f3 0f 11 44 24 14 89 44 24 18 e8 50 73 b4 ff
105775e0: 6a 01 6a 01 8d 44 24 14 50 56 e8 a1 fe b1 ff 83
105775f0: c4 18 84 c0 75 1f 6a 00 6a 01 6a 01 8d 4c 24 10
10577600: 51 56 e8 19 fe b1 ff 83 c4 14 84 c0 75 07 33 c0
10577610: 5e 83 c4 10 c3 b8 01 00 00 00 5e 83 c4 10 c3 32
10577620: c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577570 <.text+0x576570>:
10577570:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577576:	83 ec 10                                        	sub    esp,0x10
10577579:	85 c9                                           	test   ecx,ecx
1057757b:	56                                              	push   esi
1057757c:	0f 84 9d 00 00 00                               	je     0x1057761f
10577582:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10577586:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057758a:	6a 00                                           	push   0x0
1057758c:	50                                              	push   eax
1057758d:	52                                              	push   edx
1057758e:	e8 7d fa cb ff                                  	call   0x10237010
10577593:	8b f0                                           	mov    esi,eax
10577595:	85 f6                                           	test   esi,esi
10577597:	0f 84 82 00 00 00                               	je     0x1057761f
1057759d:	f3 0f 2a 44 24 20                               	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
105775a3:	0c ff                                           	or     al,0xff
105775a5:	88 44 24 04                                     	mov    BYTE PTR [esp+0x4],al
105775a9:	88 44 24 05                                     	mov    BYTE PTR [esp+0x5],al
105775ad:	88 44 24 07                                     	mov    BYTE PTR [esp+0x7],al
105775b1:	0f be 44 24 28                                  	movsx  eax,BYTE PTR [esp+0x28]
105775b6:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
105775ba:	51                                              	push   ecx
105775bb:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
105775bf:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
105775c5:	f3 0f 2a 44 24 28                               	cvtsi2ss xmm0,DWORD PTR [esp+0x28]
105775cb:	52                                              	push   edx
105775cc:	c6 44 24 0e 00                                  	mov    BYTE PTR [esp+0xe],0x0
105775d1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105775d7:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
105775db:	e8 50 73 b4 ff                                  	call   0x100be930
105775e0:	6a 01                                           	push   0x1
105775e2:	6a 01                                           	push   0x1
105775e4:	8d 44 24 14                                     	lea    eax,[esp+0x14]
105775e8:	50                                              	push   eax
105775e9:	56                                              	push   esi
105775ea:	e8 a1 fe b1 ff                                  	call   0x10097490
105775ef:	83 c4 18                                        	add    esp,0x18
105775f2:	84 c0                                           	test   al,al
105775f4:	75 1f                                           	jne    0x10577615
105775f6:	6a 00                                           	push   0x0
105775f8:	6a 01                                           	push   0x1
105775fa:	6a 01                                           	push   0x1
105775fc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10577600:	51                                              	push   ecx
10577601:	56                                              	push   esi
10577602:	e8 19 fe b1 ff                                  	call   0x10097420
10577607:	83 c4 14                                        	add    esp,0x14
1057760a:	84 c0                                           	test   al,al
1057760c:	75 07                                           	jne    0x10577615
1057760e:	33 c0                                           	xor    eax,eax
10577610:	5e                                              	pop    esi
10577611:	83 c4 10                                        	add    esp,0x10
10577614:	c3                                              	ret
10577615:	b8 01 00 00 00                                  	mov    eax,0x1
1057761a:	5e                                              	pop    esi
1057761b:	83 c4 10                                        	add    esp,0x10
1057761e:	c3                                              	ret
1057761f:	32 c0                                           	xor    al,al
10577621:	5e                                              	pop    esi
10577622:	83 c4 10                                        	add    esp,0x10
10577625:	c3                                              	ret
10577626:	cc                                              	int3
10577627:	cc                                              	int3
10577628:	cc                                              	int3
10577629:	cc                                              	int3
1057762a:	cc                                              	int3
1057762b:	cc                                              	int3
1057762c:	cc                                              	int3
1057762d:	cc                                              	int3
1057762e:	cc                                              	int3
1057762f:	cc                                              	int3
