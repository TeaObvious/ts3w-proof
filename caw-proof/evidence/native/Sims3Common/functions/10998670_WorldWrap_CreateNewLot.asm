# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998670 (WorldWrap_CreateNewLot)
Paired Ghidra pseudocode: 10998670_WorldWrap_CreateNewLot.c
Window: [0x10998670, 0x109986e0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109986e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998670: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 10 85 c9 74 5a
10998680: 8b 45 14 d9 45 18 f3 0f 10 48 08 f3 0f 10 00 8b
10998690: 55 1c 6a 00 f3 0f 11 4c 24 0c f3 0f 10 48 04 8b
109986a0: 45 20 50 52 8b 55 10 51 d9 1c 24 8d 44 24 10 50
109986b0: 8b 45 0c f3 0f 11 44 24 20 f3 0f 11 4c 24 18 f3
109986c0: 0f 11 44 24 14 0f 28 44 24 14 52 50 0f 29 44 24
109986d0: 1c e8 ba ae 89 ff 8b e5 5d c3 33 c0 8b e5 5d c3

LINEAR DISASSEMBLY
10998670 <.text+0x997670>:
10998670:	55                                              	push   ebp
10998671:	8b ec                                           	mov    ebp,esp
10998673:	83 e4 f0                                        	and    esp,0xfffffff0
10998676:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10998679:	83 ec 10                                        	sub    esp,0x10
1099867c:	85 c9                                           	test   ecx,ecx
1099867e:	74 5a                                           	je     0x109986da
10998680:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10998683:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
10998686:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1099868b:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1099868f:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
10998692:	6a 00                                           	push   0x0
10998694:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1099869a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1099869f:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
109986a2:	50                                              	push   eax
109986a3:	52                                              	push   edx
109986a4:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
109986a7:	51                                              	push   ecx
109986a8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109986ab:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109986af:	50                                              	push   eax
109986b0:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
109986b3:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
109986b9:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
109986bf:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
109986c5:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
109986ca:	52                                              	push   edx
109986cb:	50                                              	push   eax
109986cc:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
109986d1:	e8 ba ae 89 ff                                  	call   0x10233590
109986d6:	8b e5                                           	mov    esp,ebp
109986d8:	5d                                              	pop    ebp
109986d9:	c3                                              	ret
109986da:	33 c0                                           	xor    eax,eax
109986dc:	8b e5                                           	mov    esp,ebp
109986de:	5d                                              	pop    ebp
109986df:	c3                                              	ret
