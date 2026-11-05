# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1780 (ScriptCore.GameUtils::GameUtils_InitSceneWindowImpl)
Paired Ghidra pseudocode: 00EC1780_ScriptCore_GameUtils_GameUtils_InitSceneWindowImpl.c
Window: [0x00ec1780, 0x00ec18a0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec18a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1780: 83 ec 1c 56 57 e8 06 98 64 ff 8b 10 8b c8 8b 42
00ec1790: 04 ff d0 8b f8 e8 16 77 61 ff 8b 10 6a 00 6a 00
00ec17a0: 68 18 82 ee ee 8b c8 8b 42 20 68 8b 24 4b 03 ff
00ec17b0: d0 8b f0 85 f6 0f 84 95 00 00 00 8b 17 8b 82 dc
00ec17c0: 00 00 00 56 8b cf ff d0 8b 17 8b 82 f0 00 00 00
00ec17d0: 56 8b cf ff d0 e8 36 d1 74 ff 8d 4c 24 10 51 8d
00ec17e0: 54 24 10 52 8d 4c 24 10 51 8b c8 e8 10 d5 74 ff
00ec17f0: 0f 57 c0 8b 16 8b 52 64 f3 0f 11 44 24 14 f3 0f
00ec1800: 11 44 24 18 f3 0f 2a 44 24 08 8d 44 24 14 f3 0f
00ec1810: 11 44 24 1c f3 0f 2a 44 24 0c 50 8b ce f3 0f 11
00ec1820: 44 24 24 ff d2 8b 06 8b 50 54 68 8b 24 4b 03 8b
00ec1830: ce ff d2 e8 08 e9 92 ff 85 c0 74 14 8b 3e 8b c8
00ec1840: e8 5b e9 92 ff 50 8b 87 08 01 00 00 8b ce ff d0
00ec1850: 5f 5e 83 c4 1c c3 cc cc cc cc cc cc cc cc cc cc
00ec1860: 83 e9 04 e9 08 00 00 00 cc cc cc cc cc cc cc cc
00ec1870: f6 44 24 04 01 56 8b f1 c7 46 04 a0 31 0f 01 c7
00ec1880: 46 04 78 4a ff 00 c7 06 54 b4 f9 00 74 09 56 e8
00ec1890: 4c 2c 62 ff 83 c4 04 8b c6 5e c2 04 00 cc cc cc

LINEAR DISASSEMBLY
00ec1780 <.text+0xac0780>:
  ec1780:	83 ec 1c                                        	sub    esp,0x1c
  ec1783:	56                                              	push   esi
  ec1784:	57                                              	push   edi
  ec1785:	e8 06 98 64 ff                                  	call   0x50af90
  ec178a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec178c:	8b c8                                           	mov    ecx,eax
  ec178e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec1791:	ff d0                                           	call   eax
  ec1793:	8b f8                                           	mov    edi,eax
  ec1795:	e8 16 77 61 ff                                  	call   0x4d8eb0
  ec179a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec179c:	6a 00                                           	push   0x0
  ec179e:	6a 00                                           	push   0x0
  ec17a0:	68 18 82 ee ee                                  	push   0xeeee8218
  ec17a5:	8b c8                                           	mov    ecx,eax
  ec17a7:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  ec17aa:	68 8b 24 4b 03                                  	push   0x34b248b
  ec17af:	ff d0                                           	call   eax
  ec17b1:	8b f0                                           	mov    esi,eax
  ec17b3:	85 f6                                           	test   esi,esi
  ec17b5:	0f 84 95 00 00 00                               	je     0xec1850
  ec17bb:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec17bd:	8b 82 dc 00 00 00                               	mov    eax,DWORD PTR [edx+0xdc]
  ec17c3:	56                                              	push   esi
  ec17c4:	8b cf                                           	mov    ecx,edi
  ec17c6:	ff d0                                           	call   eax
  ec17c8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec17ca:	8b 82 f0 00 00 00                               	mov    eax,DWORD PTR [edx+0xf0]
  ec17d0:	56                                              	push   esi
  ec17d1:	8b cf                                           	mov    ecx,edi
  ec17d3:	ff d0                                           	call   eax
  ec17d5:	e8 36 d1 74 ff                                  	call   0x60e910
  ec17da:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec17de:	51                                              	push   ecx
  ec17df:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ec17e3:	52                                              	push   edx
  ec17e4:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec17e8:	51                                              	push   ecx
  ec17e9:	8b c8                                           	mov    ecx,eax
  ec17eb:	e8 10 d5 74 ff                                  	call   0x60ed00
  ec17f0:	0f 57 c0                                        	xorps  xmm0,xmm0
  ec17f3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec17f5:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  ec17f8:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  ec17fe:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  ec1804:	f3 0f 2a 44 24 08                               	cvtsi2ss xmm0,DWORD PTR [esp+0x8]
  ec180a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec180e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  ec1814:	f3 0f 2a 44 24 0c                               	cvtsi2ss xmm0,DWORD PTR [esp+0xc]
  ec181a:	50                                              	push   eax
  ec181b:	8b ce                                           	mov    ecx,esi
  ec181d:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  ec1823:	ff d2                                           	call   edx
  ec1825:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec1827:	8b 50 54                                        	mov    edx,DWORD PTR [eax+0x54]
  ec182a:	68 8b 24 4b 03                                  	push   0x34b248b
  ec182f:	8b ce                                           	mov    ecx,esi
  ec1831:	ff d2                                           	call   edx
  ec1833:	e8 08 e9 92 ff                                  	call   0x7f0140
  ec1838:	85 c0                                           	test   eax,eax
  ec183a:	74 14                                           	je     0xec1850
  ec183c:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  ec183e:	8b c8                                           	mov    ecx,eax
  ec1840:	e8 5b e9 92 ff                                  	call   0x7f01a0
  ec1845:	50                                              	push   eax
  ec1846:	8b 87 08 01 00 00                               	mov    eax,DWORD PTR [edi+0x108]
  ec184c:	8b ce                                           	mov    ecx,esi
  ec184e:	ff d0                                           	call   eax
  ec1850:	5f                                              	pop    edi
  ec1851:	5e                                              	pop    esi
  ec1852:	83 c4 1c                                        	add    esp,0x1c
  ec1855:	c3                                              	ret
  ec1856:	cc                                              	int3
  ec1857:	cc                                              	int3
  ec1858:	cc                                              	int3
  ec1859:	cc                                              	int3
  ec185a:	cc                                              	int3
  ec185b:	cc                                              	int3
  ec185c:	cc                                              	int3
  ec185d:	cc                                              	int3
  ec185e:	cc                                              	int3
  ec185f:	cc                                              	int3
  ec1860:	83 e9 04                                        	sub    ecx,0x4
  ec1863:	e9 08 00 00 00                                  	jmp    0xec1870
  ec1868:	cc                                              	int3
  ec1869:	cc                                              	int3
  ec186a:	cc                                              	int3
  ec186b:	cc                                              	int3
  ec186c:	cc                                              	int3
  ec186d:	cc                                              	int3
  ec186e:	cc                                              	int3
  ec186f:	cc                                              	int3
  ec1870:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  ec1875:	56                                              	push   esi
  ec1876:	8b f1                                           	mov    esi,ecx
  ec1878:	c7 46 04 a0 31 0f 01                            	mov    DWORD PTR [esi+0x4],0x10f31a0
  ec187f:	c7 46 04 78 4a ff 00                            	mov    DWORD PTR [esi+0x4],0xff4a78
  ec1886:	c7 06 54 b4 f9 00                               	mov    DWORD PTR [esi],0xf9b454
  ec188c:	74 09                                           	je     0xec1897
  ec188e:	56                                              	push   esi
  ec188f:	e8 4c 2c 62 ff                                  	call   0x4e44e0
  ec1894:	83 c4 04                                        	add    esp,0x4
  ec1897:	8b c6                                           	mov    eax,esi
  ec1899:	5e                                              	pop    esi
  ec189a:	c2 04 00                                        	ret    0x4
  ec189d:	cc                                              	int3
  ec189e:	cc                                              	int3
  ec189f:	cc                                              	int3
