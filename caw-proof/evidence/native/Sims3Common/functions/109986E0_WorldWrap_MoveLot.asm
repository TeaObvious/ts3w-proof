# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109986e0 (WorldWrap_MoveLot)
Paired Ghidra pseudocode: 109986E0_WorldWrap_MoveLot.c
Window: [0x109986e0, 0x10998780) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109986e0: 55 8b ec 83 e4 f0 83 ec 18 56 57 8b 7d 08 85 ff
109986f0: 0f 84 81 00 00 00 8b 75 0c 85 f6 74 7a 8b 45 10
10998700: d9 45 14 f3 0f 10 48 08 d8 0d 7c a9 ac 10 f3 0f
10998710: 10 00 83 7d 18 00 f3 0f 11 4c 24 18 d9 55 14 f3
10998720: 0f 10 48 04 0f 95 c0 f3 0f 11 44 24 1c f3 0f 11
10998730: 4c 24 14 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
10998740: 44 24 10 50 83 ec 08 dd 1c 24 e8 87 81 0f 00 d8
10998750: 6d 14 83 c4 04 8d 4c 24 18 d8 0d 04 7c b9 10 d9
10998760: 1c 24 51 56 8b cf e8 a5 c3 89 ff f6 d8 1b c0 f7
10998770: d8 5f 5e 8b e5 5d c3 5f 33 c0 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
109986e0 <.text+0x9976e0>:
109986e0:	55                                              	push   ebp
109986e1:	8b ec                                           	mov    ebp,esp
109986e3:	83 e4 f0                                        	and    esp,0xfffffff0
109986e6:	83 ec 18                                        	sub    esp,0x18
109986e9:	56                                              	push   esi
109986ea:	57                                              	push   edi
109986eb:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
109986ee:	85 ff                                           	test   edi,edi
109986f0:	0f 84 81 00 00 00                               	je     0x10998777
109986f6:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
109986f9:	85 f6                                           	test   esi,esi
109986fb:	74 7a                                           	je     0x10998777
109986fd:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
10998700:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10998703:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10998708:	d8 0d 7c a9 ac 10                               	fmul   DWORD PTR ds:0x10aca97c
1099870e:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10998712:	83 7d 18 00                                     	cmp    DWORD PTR [ebp+0x18],0x0
10998716:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1099871c:	d9 55 14                                        	fst    DWORD PTR [ebp+0x14]
1099871f:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10998724:	0f 95 c0                                        	setne  al
10998727:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1099872d:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10998733:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10998739:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099873e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10998743:	50                                              	push   eax
10998744:	83 ec 08                                        	sub    esp,0x8
10998747:	dd 1c 24                                        	fstp   QWORD PTR [esp]
1099874a:	e8 87 81 0f 00                                  	call   0x10a908d6
1099874f:	d8 6d 14                                        	fsubr  DWORD PTR [ebp+0x14]
10998752:	83 c4 04                                        	add    esp,0x4
10998755:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10998759:	d8 0d 04 7c b9 10                               	fmul   DWORD PTR ds:0x10b97c04
1099875f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10998762:	51                                              	push   ecx
10998763:	56                                              	push   esi
10998764:	8b cf                                           	mov    ecx,edi
10998766:	e8 a5 c3 89 ff                                  	call   0x10234b10
1099876b:	f6 d8                                           	neg    al
1099876d:	1b c0                                           	sbb    eax,eax
1099876f:	f7 d8                                           	neg    eax
10998771:	5f                                              	pop    edi
10998772:	5e                                              	pop    esi
10998773:	8b e5                                           	mov    esp,ebp
10998775:	5d                                              	pop    ebp
10998776:	c3                                              	ret
10998777:	5f                                              	pop    edi
10998778:	33 c0                                           	xor    eax,eax
1099877a:	5e                                              	pop    esi
1099877b:	8b e5                                           	mov    esp,ebp
1099877d:	5d                                              	pop    ebp
1099877e:	c3                                              	ret
1099877f:	cc                                              	int3
