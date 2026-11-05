# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998780 (WorldWrap_OutlineLotTemplate)
Paired Ghidra pseudocode: 10998780_WorldWrap_OutlineLotTemplate.c
Window: [0x10998780, 0x109987f0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109987f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998780: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 10 85 c9 74 51
10998790: 8b 55 0c 85 d2 74 4a 8b 45 10 d9 45 14 f3 0f 10
109987a0: 48 08 f3 0f 10 00 83 7d 18 00 f3 0f 11 4c 24 08
109987b0: f3 0f 10 48 04 0f 95 c0 f3 0f 11 44 24 0c f3 0f
109987c0: 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 0f 29 04
109987d0: 24 50 51 d9 1c 24 8d 44 24 08 50 52 e8 9f e6 89
109987e0: ff 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998780 <.text+0x997780>:
10998780:	55                                              	push   ebp
10998781:	8b ec                                           	mov    ebp,esp
10998783:	83 e4 f0                                        	and    esp,0xfffffff0
10998786:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10998789:	83 ec 10                                        	sub    esp,0x10
1099878c:	85 c9                                           	test   ecx,ecx
1099878e:	74 51                                           	je     0x109987e1
10998790:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10998793:	85 d2                                           	test   edx,edx
10998795:	74 4a                                           	je     0x109987e1
10998797:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1099879a:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
1099879d:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
109987a2:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
109987a6:	83 7d 18 00                                     	cmp    DWORD PTR [ebp+0x18],0x0
109987aa:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
109987b0:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
109987b5:	0f 95 c0                                        	setne  al
109987b8:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109987be:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
109987c4:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109987c9:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109987cd:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109987d1:	50                                              	push   eax
109987d2:	51                                              	push   ecx
109987d3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109987d6:	8d 44 24 08                                     	lea    eax,[esp+0x8]
109987da:	50                                              	push   eax
109987db:	52                                              	push   edx
109987dc:	e8 9f e6 89 ff                                  	call   0x10236e80
109987e1:	8b e5                                           	mov    esp,ebp
109987e3:	5d                                              	pop    ebp
109987e4:	c3                                              	ret
109987e5:	cc                                              	int3
109987e6:	cc                                              	int3
109987e7:	cc                                              	int3
109987e8:	cc                                              	int3
109987e9:	cc                                              	int3
109987ea:	cc                                              	int3
109987eb:	cc                                              	int3
109987ec:	cc                                              	int3
109987ed:	cc                                              	int3
109987ee:	cc                                              	int3
109987ef:	cc                                              	int3
