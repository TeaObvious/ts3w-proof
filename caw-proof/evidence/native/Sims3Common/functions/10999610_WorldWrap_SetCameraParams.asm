# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999610 (WorldWrap_SetCameraParams)
Paired Ghidra pseudocode: 10999610_WorldWrap_SetCameraParams.c
Window: [0x10999610, 0x10999780) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999610: 55 8b ec 83 e4 f0 83 ec 28 56 57 e8 10 30 dc ff
10999620: 8b c8 e8 59 e4 f9 ff 85 c0 0f 84 47 01 00 00 8b
10999630: c8 e8 1a 33 dc ff 8b f0 85 f6 0f 84 36 01 00 00
10999640: 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff d2 8b f8
10999650: 8b 06 8b 50 0c 68 9b 61 bc 14 8b ce ff d2 85 ff
10999660: 0f 84 84 00 00 00 8b 45 0c f3 0f 10 48 08 f3 0f
10999670: 10 00 f3 0f 11 4c 24 18 f3 0f 10 48 04 8b 45 08
10999680: f3 0f 11 4c 24 14 f3 0f 10 48 08 f3 0f 11 44 24
10999690: 1c f3 0f 11 44 24 10 0f 28 44 24 10 f3 0f 11 4c
109996a0: 24 18 f3 0f 10 48 04 0f 29 44 24 20 f3 0f 10 00
109996b0: 8b 07 8b 40 2c 8d 4c 24 20 51 f3 0f 11 44 24 20
109996c0: f3 0f 11 4c 24 18 f3 0f 11 44 24 14 0f 28 44 24
109996d0: 14 8d 54 24 14 52 8b cf 0f 29 44 24 18 ff d0 b8
109996e0: 01 00 00 00 5f 5e 8b e5 5d c3 85 c0 0f 84 84 00
109996f0: 00 00 8b 4d 0c f3 0f 10 49 08 f3 0f 10 01 8b 10
10999700: 8b 52 2c f3 0f 11 4c 24 18 f3 0f 10 49 04 8b 4d
10999710: 08 f3 0f 11 4c 24 14 f3 0f 10 49 08 f3 0f 11 44
10999720: 24 1c f3 0f 11 44 24 10 0f 28 44 24 10 f3 0f 11
10999730: 4c 24 18 f3 0f 10 49 04 0f 29 44 24 20 f3 0f 10
10999740: 01 8d 4c 24 20 51 8d 4c 24 14 f3 0f 11 44 24 20
10999750: f3 0f 11 4c 24 18 f3 0f 11 44 24 14 0f 28 44 24
10999760: 14 51 8b c8 0f 29 44 24 18 ff d2 b8 01 00 00 00
10999770: 5f 5e 8b e5 5d c3 5f 33 c0 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
10999610 <.text+0x998610>:
10999610:	55                                              	push   ebp
10999611:	8b ec                                           	mov    ebp,esp
10999613:	83 e4 f0                                        	and    esp,0xfffffff0
10999616:	83 ec 28                                        	sub    esp,0x28
10999619:	56                                              	push   esi
1099961a:	57                                              	push   edi
1099961b:	e8 10 30 dc ff                                  	call   0x1075c630
10999620:	8b c8                                           	mov    ecx,eax
10999622:	e8 59 e4 f9 ff                                  	call   0x10937a80
10999627:	85 c0                                           	test   eax,eax
10999629:	0f 84 47 01 00 00                               	je     0x10999776
1099962f:	8b c8                                           	mov    ecx,eax
10999631:	e8 1a 33 dc ff                                  	call   0x1075c950
10999636:	8b f0                                           	mov    esi,eax
10999638:	85 f6                                           	test   esi,esi
1099963a:	0f 84 36 01 00 00                               	je     0x10999776
10999640:	8b 06                                           	mov    eax,DWORD PTR [esi]
10999642:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10999645:	68 db 4e 39 4d                                  	push   0x4d394edb
1099964a:	8b ce                                           	mov    ecx,esi
1099964c:	ff d2                                           	call   edx
1099964e:	8b f8                                           	mov    edi,eax
10999650:	8b 06                                           	mov    eax,DWORD PTR [esi]
10999652:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10999655:	68 9b 61 bc 14                                  	push   0x14bc619b
1099965a:	8b ce                                           	mov    ecx,esi
1099965c:	ff d2                                           	call   edx
1099965e:	85 ff                                           	test   edi,edi
10999660:	0f 84 84 00 00 00                               	je     0x109996ea
10999666:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10999669:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1099966e:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10999672:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10999678:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1099967d:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10999680:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10999686:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1099968b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10999691:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10999697:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099969c:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
109996a2:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
109996a7:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
109996ac:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
109996b0:	8b 07                                           	mov    eax,DWORD PTR [edi]
109996b2:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
109996b5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
109996b9:	51                                              	push   ecx
109996ba:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
109996c0:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
109996c6:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
109996cc:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
109996d1:	8d 54 24 14                                     	lea    edx,[esp+0x14]
109996d5:	52                                              	push   edx
109996d6:	8b cf                                           	mov    ecx,edi
109996d8:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
109996dd:	ff d0                                           	call   eax
109996df:	b8 01 00 00 00                                  	mov    eax,0x1
109996e4:	5f                                              	pop    edi
109996e5:	5e                                              	pop    esi
109996e6:	8b e5                                           	mov    esp,ebp
109996e8:	5d                                              	pop    ebp
109996e9:	c3                                              	ret
109996ea:	85 c0                                           	test   eax,eax
109996ec:	0f 84 84 00 00 00                               	je     0x10999776
109996f2:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
109996f5:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [ecx+0x8]
109996fa:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
109996fe:	8b 10                                           	mov    edx,DWORD PTR [eax]
10999700:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
10999703:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10999709:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [ecx+0x4]
1099970e:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10999711:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10999717:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [ecx+0x8]
1099971c:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10999722:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10999728:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099972d:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10999733:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [ecx+0x4]
10999738:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099973d:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
10999741:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10999745:	51                                              	push   ecx
10999746:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1099974a:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10999750:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10999756:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1099975c:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
10999761:	51                                              	push   ecx
10999762:	8b c8                                           	mov    ecx,eax
10999764:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10999769:	ff d2                                           	call   edx
1099976b:	b8 01 00 00 00                                  	mov    eax,0x1
10999770:	5f                                              	pop    edi
10999771:	5e                                              	pop    esi
10999772:	8b e5                                           	mov    esp,ebp
10999774:	5d                                              	pop    ebp
10999775:	c3                                              	ret
10999776:	5f                                              	pop    edi
10999777:	33 c0                                           	xor    eax,eax
10999779:	5e                                              	pop    esi
1099977a:	8b e5                                           	mov    esp,ebp
1099977c:	5d                                              	pop    ebp
1099977d:	c3                                              	ret
1099977e:	cc                                              	int3
1099977f:	cc                                              	int3
