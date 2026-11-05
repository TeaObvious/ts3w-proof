# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784180 (DownloadContent_InstallContentImpl)
Paired Ghidra pseudocode: 10784180_DownloadContent_InstallContentImpl.c
Window: [0x10784180, 0x10784220) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784180: 81 ec 10 06 00 00 56 57 e8 93 6f dd ff 85 c0 74
10784190: 7c 8b 8c 24 1c 06 00 00 8b 10 8b 52 58 51 8b c8
107841a0: ff d2 8b f0 56 8d 8c 24 0c 02 00 00 e8 df e1 19
107841b0: 00 68 00 01 00 00 8d 44 24 0c 50 8d 8c 24 10 02
107841c0: 00 00 e8 e9 de 19 00 e8 f4 02 ff ff 8b f8 85 ff
107841d0: 74 3b 8b 0d f4 e7 c4 10 51 8d 54 24 0c 52 ff 15
107841e0: 24 b6 aa 10 83 c4 08 85 c0 8b cf 75 0f 56 e8 2d
107841f0: d8 ff ff 5f 5e 81 c4 10 06 00 00 c3 6a 00 56 e8
10784200: 0c bd ff ff 5f 5e 81 c4 10 06 00 00 c3 5f b8 01
10784210: 00 00 00 5e 81 c4 10 06 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10784180 <.text+0x783180>:
10784180:	81 ec 10 06 00 00                               	sub    esp,0x610
10784186:	56                                              	push   esi
10784187:	57                                              	push   edi
10784188:	e8 93 6f dd ff                                  	call   0x1055b120
1078418d:	85 c0                                           	test   eax,eax
1078418f:	74 7c                                           	je     0x1078420d
10784191:	8b 8c 24 1c 06 00 00                            	mov    ecx,DWORD PTR [esp+0x61c]
10784198:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078419a:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1078419d:	51                                              	push   ecx
1078419e:	8b c8                                           	mov    ecx,eax
107841a0:	ff d2                                           	call   edx
107841a2:	8b f0                                           	mov    esi,eax
107841a4:	56                                              	push   esi
107841a5:	8d 8c 24 0c 02 00 00                            	lea    ecx,[esp+0x20c]
107841ac:	e8 df e1 19 00                                  	call   0x10922390
107841b1:	68 00 01 00 00                                  	push   0x100
107841b6:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
107841ba:	50                                              	push   eax
107841bb:	8d 8c 24 10 02 00 00                            	lea    ecx,[esp+0x210]
107841c2:	e8 e9 de 19 00                                  	call   0x109220b0
107841c7:	e8 f4 02 ff ff                                  	call   0x107744c0
107841cc:	8b f8                                           	mov    edi,eax
107841ce:	85 ff                                           	test   edi,edi
107841d0:	74 3b                                           	je     0x1078420d
107841d2:	8b 0d f4 e7 c4 10                               	mov    ecx,DWORD PTR ds:0x10c4e7f4
107841d8:	51                                              	push   ecx
107841d9:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
107841dd:	52                                              	push   edx
107841de:	ff 15 24 b6 aa 10                               	call   DWORD PTR ds:0x10aab624
107841e4:	83 c4 08                                        	add    esp,0x8
107841e7:	85 c0                                           	test   eax,eax
107841e9:	8b cf                                           	mov    ecx,edi
107841eb:	75 0f                                           	jne    0x107841fc
107841ed:	56                                              	push   esi
107841ee:	e8 2d d8 ff ff                                  	call   0x10781a20
107841f3:	5f                                              	pop    edi
107841f4:	5e                                              	pop    esi
107841f5:	81 c4 10 06 00 00                               	add    esp,0x610
107841fb:	c3                                              	ret
107841fc:	6a 00                                           	push   0x0
107841fe:	56                                              	push   esi
107841ff:	e8 0c bd ff ff                                  	call   0x1077ff10
10784204:	5f                                              	pop    edi
10784205:	5e                                              	pop    esi
10784206:	81 c4 10 06 00 00                               	add    esp,0x610
1078420c:	c3                                              	ret
1078420d:	5f                                              	pop    edi
1078420e:	b8 01 00 00 00                                  	mov    eax,0x1
10784213:	5e                                              	pop    esi
10784214:	81 c4 10 06 00 00                               	add    esp,0x610
1078421a:	c3                                              	ret
1078421b:	cc                                              	int3
1078421c:	cc                                              	int3
1078421d:	cc                                              	int3
1078421e:	cc                                              	int3
1078421f:	cc                                              	int3
