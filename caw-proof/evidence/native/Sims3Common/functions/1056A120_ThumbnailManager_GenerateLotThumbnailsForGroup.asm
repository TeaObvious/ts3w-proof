# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a120 (ThumbnailManager_GenerateLotThumbnailsForGroup)
Paired Ghidra pseudocode: 1056A120_ThumbnailManager_GenerateLotThumbnailsForGroup.c
Window: [0x1056a120, 0x1056a290) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a120: 83 ec 24 83 7c 24 40 00 57 8b 3d 50 11 c7 10 89
1056a130: 7c 24 04 75 34 85 ff 0f 84 4e 01 00 00 8b 44 24
1056a140: 40 8b 4c 24 3c 8b 54 24 38 6a 00 50 8b 44 24 3c
1056a150: 51 8b 4c 24 3c 52 8b 54 24 3c 50 51 52 8b cf e8
1056a160: 8c fd dc ff 5f 83 c4 24 c3 53 55 56 e8 af 0f ff
1056a170: ff 8b f0 8b 06 8b 90 18 01 00 00 8b ce ff d2 85
1056a180: ff 8b e8 8b da 0f 84 b1 00 00 00 6a 00 6a 00 6a
1056a190: 00 6a 00 68 5c 0a b2 10 6a 38 e8 11 ed 3a 00 83
1056a1a0: c4 18 85 c0 0f 84 81 00 00 00 8b 4c 24 50 51 53
1056a1b0: 55 8b c8 e8 38 fb ff ff 8b f8 85 ff 74 09 8b 17
1056a1c0: 8b 42 04 8b cf ff d0 8b 4c 24 4c 8b 54 24 48 8b
1056a1d0: 44 24 44 57 51 8b 4c 24 48 52 8b 54 24 48 50 8b
1056a1e0: 44 24 48 51 8b 4c 24 24 52 50 e8 01 fd dc ff 84
1056a1f0: c0 74 3c 8b 44 24 50 8b 16 8b 92 20 01 00 00 6a
1056a200: 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90 1c 01
1056a210: 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50 08 8b
1056a220: cf ff d2 5e 5d 5b 5f 83 c4 24 c3 33 ff eb 98 85
1056a230: ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54 24 50
1056a240: 6a 00 8d 4c 24 18 51 53 bf b4 a5 ac 10 89 7c 24
1056a250: 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66 c7 44
1056a260: 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52 8b ce
1056a270: ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a 00 8d
1056a280: 4c 24 18 e8 08 e8 3b 00 5e 5d 5b 5f 83 c4 24 c3

LINEAR DISASSEMBLY
1056a120 <.text+0x569120>:
1056a120:	83 ec 24                                        	sub    esp,0x24
1056a123:	83 7c 24 40 00                                  	cmp    DWORD PTR [esp+0x40],0x0
1056a128:	57                                              	push   edi
1056a129:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a12f:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
1056a133:	75 34                                           	jne    0x1056a169
1056a135:	85 ff                                           	test   edi,edi
1056a137:	0f 84 4e 01 00 00                               	je     0x1056a28b
1056a13d:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a141:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1056a145:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
1056a149:	6a 00                                           	push   0x0
1056a14b:	50                                              	push   eax
1056a14c:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1056a150:	51                                              	push   ecx
1056a151:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1056a155:	52                                              	push   edx
1056a156:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1056a15a:	50                                              	push   eax
1056a15b:	51                                              	push   ecx
1056a15c:	52                                              	push   edx
1056a15d:	8b cf                                           	mov    ecx,edi
1056a15f:	e8 8c fd dc ff                                  	call   0x10339ef0
1056a164:	5f                                              	pop    edi
1056a165:	83 c4 24                                        	add    esp,0x24
1056a168:	c3                                              	ret
1056a169:	53                                              	push   ebx
1056a16a:	55                                              	push   ebp
1056a16b:	56                                              	push   esi
1056a16c:	e8 af 0f ff ff                                  	call   0x1055b120
1056a171:	8b f0                                           	mov    esi,eax
1056a173:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a175:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a17b:	8b ce                                           	mov    ecx,esi
1056a17d:	ff d2                                           	call   edx
1056a17f:	85 ff                                           	test   edi,edi
1056a181:	8b e8                                           	mov    ebp,eax
1056a183:	8b da                                           	mov    ebx,edx
1056a185:	0f 84 b1 00 00 00                               	je     0x1056a23c
1056a18b:	6a 00                                           	push   0x0
1056a18d:	6a 00                                           	push   0x0
1056a18f:	6a 00                                           	push   0x0
1056a191:	6a 00                                           	push   0x0
1056a193:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a198:	6a 38                                           	push   0x38
1056a19a:	e8 11 ed 3a 00                                  	call   0x10918eb0
1056a19f:	83 c4 18                                        	add    esp,0x18
1056a1a2:	85 c0                                           	test   eax,eax
1056a1a4:	0f 84 81 00 00 00                               	je     0x1056a22b
1056a1aa:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
1056a1ae:	51                                              	push   ecx
1056a1af:	53                                              	push   ebx
1056a1b0:	55                                              	push   ebp
1056a1b1:	8b c8                                           	mov    ecx,eax
1056a1b3:	e8 38 fb ff ff                                  	call   0x10569cf0
1056a1b8:	8b f8                                           	mov    edi,eax
1056a1ba:	85 ff                                           	test   edi,edi
1056a1bc:	74 09                                           	je     0x1056a1c7
1056a1be:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a1c0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a1c3:	8b cf                                           	mov    ecx,edi
1056a1c5:	ff d0                                           	call   eax
1056a1c7:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a1cb:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
1056a1cf:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1056a1d3:	57                                              	push   edi
1056a1d4:	51                                              	push   ecx
1056a1d5:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a1d9:	52                                              	push   edx
1056a1da:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
1056a1de:	50                                              	push   eax
1056a1df:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1056a1e3:	51                                              	push   ecx
1056a1e4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a1e8:	52                                              	push   edx
1056a1e9:	50                                              	push   eax
1056a1ea:	e8 01 fd dc ff                                  	call   0x10339ef0
1056a1ef:	84 c0                                           	test   al,al
1056a1f1:	74 3c                                           	je     0x1056a22f
1056a1f3:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
1056a1f7:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056a1f9:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
1056a1ff:	6a 00                                           	push   0x0
1056a201:	50                                              	push   eax
1056a202:	6a ff                                           	push   0xffffffff
1056a204:	53                                              	push   ebx
1056a205:	55                                              	push   ebp
1056a206:	8b ce                                           	mov    ecx,esi
1056a208:	ff d2                                           	call   edx
1056a20a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a20c:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a212:	8b ce                                           	mov    ecx,esi
1056a214:	ff d2                                           	call   edx
1056a216:	85 ff                                           	test   edi,edi
1056a218:	74 6e                                           	je     0x1056a288
1056a21a:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a21c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a21f:	8b cf                                           	mov    ecx,edi
1056a221:	ff d2                                           	call   edx
1056a223:	5e                                              	pop    esi
1056a224:	5d                                              	pop    ebp
1056a225:	5b                                              	pop    ebx
1056a226:	5f                                              	pop    edi
1056a227:	83 c4 24                                        	add    esp,0x24
1056a22a:	c3                                              	ret
1056a22b:	33 ff                                           	xor    edi,edi
1056a22d:	eb 98                                           	jmp    0x1056a1c7
1056a22f:	85 ff                                           	test   edi,edi
1056a231:	74 09                                           	je     0x1056a23c
1056a233:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a235:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a238:	8b cf                                           	mov    ecx,edi
1056a23a:	ff d2                                           	call   edx
1056a23c:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
1056a240:	6a 00                                           	push   0x0
1056a242:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a246:	51                                              	push   ecx
1056a247:	53                                              	push   ebx
1056a248:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a24d:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a251:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a256:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a25d:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a264:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a266:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a26c:	55                                              	push   ebp
1056a26d:	52                                              	push   edx
1056a26e:	8b ce                                           	mov    ecx,esi
1056a270:	ff d0                                           	call   eax
1056a272:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a277:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a27b:	74 0b                                           	je     0x1056a288
1056a27d:	6a 00                                           	push   0x0
1056a27f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a283:	e8 08 e8 3b 00                                  	call   0x10928a90
1056a288:	5e                                              	pop    esi
1056a289:	5d                                              	pop    ebp
1056a28a:	5b                                              	pop    ebx
1056a28b:	5f                                              	pop    edi
1056a28c:	83 c4 24                                        	add    esp,0x24
1056a28f:	c3                                              	ret
