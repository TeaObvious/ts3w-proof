# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007655e0 (ScriptCore.Route::Route_ReplanFromPosition)
Paired Ghidra pseudocode: 007655E0_ScriptCore_Route_Route_ReplanFromPosition.c
Window: [0x007655e0, 0x007656d0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x007656d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007655e0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 68 56
007655f0: 57 33 ff 3b cf 74 6c 8b 45 0c 50 e8 b0 5e fe ff
00765600: 8b f0 3b f7 74 5d 8b 16 8b 42 10 8b ce ff d0 f3
00765610: 0f 10 4d 18 f3 0f 10 45 10 83 86 f4 01 00 00 01
00765620: f3 0f 11 4c 24 18 f3 0f 10 4d 14 8d 4c 24 10 51
00765630: f3 0f 11 44 24 20 f3 0f 11 4c 24 18 f3 0f 11 44
00765640: 24 14 0f 28 44 24 14 8d 54 24 2c 52 8b ce 0f 29
00765650: 44 24 18 e8 f8 ec ff ff 8b 06 8b 50 14 8b ce ff
00765660: d2 eb 55 0f 57 c0 c7 44 24 28 02 00 00 00 89 7c
00765670: 24 2c 89 7c 24 34 f3 0f 11 44 24 38 f3 0f 11 44
00765680: 24 3c f3 0f 11 44 24 40 f3 0f 11 44 24 44 89 7c
00765690: 24 48 89 7c 24 4c 89 7c 24 50 f3 0f 11 44 24 54
007656a0: f3 0f 11 44 24 58 f3 0f 11 44 24 5c 89 7c 24 60
007656b0: 89 7c 24 64 89 7c 24 68 8b 45 08 b9 12 00 00 00
007656c0: 8b f8 8d 74 24 28 f3 a5 5f 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
007655e0 <.text+0x3645e0>:
  7655e0:	55                                              	push   ebp
  7655e1:	8b ec                                           	mov    ebp,esp
  7655e3:	83 e4 f0                                        	and    esp,0xfffffff0
  7655e6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7655ec:	83 ec 68                                        	sub    esp,0x68
  7655ef:	56                                              	push   esi
  7655f0:	57                                              	push   edi
  7655f1:	33 ff                                           	xor    edi,edi
  7655f3:	3b cf                                           	cmp    ecx,edi
  7655f5:	74 6c                                           	je     0x765663
  7655f7:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  7655fa:	50                                              	push   eax
  7655fb:	e8 b0 5e fe ff                                  	call   0x74b4b0
  765600:	8b f0                                           	mov    esi,eax
  765602:	3b f7                                           	cmp    esi,edi
  765604:	74 5d                                           	je     0x765663
  765606:	8b 16                                           	mov    edx,DWORD PTR [esi]
  765608:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  76560b:	8b ce                                           	mov    ecx,esi
  76560d:	ff d0                                           	call   eax
  76560f:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  765614:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  765619:	83 86 f4 01 00 00 01                            	add    DWORD PTR [esi+0x1f4],0x1
  765620:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  765626:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  76562b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  76562f:	51                                              	push   ecx
  765630:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  765636:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  76563c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  765642:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  765647:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  76564b:	52                                              	push   edx
  76564c:	8b ce                                           	mov    ecx,esi
  76564e:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  765653:	e8 f8 ec ff ff                                  	call   0x764350
  765658:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76565a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76565d:	8b ce                                           	mov    ecx,esi
  76565f:	ff d2                                           	call   edx
  765661:	eb 55                                           	jmp    0x7656b8
  765663:	0f 57 c0                                        	xorps  xmm0,xmm0
  765666:	c7 44 24 28 02 00 00 00                         	mov    DWORD PTR [esp+0x28],0x2
  76566e:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  765672:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  765676:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  76567c:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  765682:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  765688:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  76568e:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  765692:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
  765696:	89 7c 24 50                                     	mov    DWORD PTR [esp+0x50],edi
  76569a:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  7656a0:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
  7656a6:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  7656ac:	89 7c 24 60                                     	mov    DWORD PTR [esp+0x60],edi
  7656b0:	89 7c 24 64                                     	mov    DWORD PTR [esp+0x64],edi
  7656b4:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  7656b8:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7656bb:	b9 12 00 00 00                                  	mov    ecx,0x12
  7656c0:	8b f8                                           	mov    edi,eax
  7656c2:	8d 74 24 28                                     	lea    esi,[esp+0x28]
  7656c6:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7656c8:	5f                                              	pop    edi
  7656c9:	5e                                              	pop    esi
  7656ca:	8b e5                                           	mov    esp,ebp
  7656cc:	5d                                              	pop    ebp
  7656cd:	c3                                              	ret
  7656ce:	cc                                              	int3
  7656cf:	cc                                              	int3
