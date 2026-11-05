# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a190 (ResourceMgr_LoadXMLStr)
Paired Ghidra pseudocode: 1098A190_ResourceMgr_LoadXMLStr.c
Window: [0x1098a190, 0x1098a290) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a190: 83 ec 10 8b 44 24 14 8b 4c 24 18 8b 54 24 1c 89
1098a1a0: 44 24 08 8b 44 24 20 89 4c 24 0c 89 14 24 89 44
1098a1b0: 24 04 e8 19 af f5 ff 8b 10 8b 52 44 8d 0c 24 51
1098a1c0: 8b c8 ff d2 85 c0 75 06 33 c0 83 c4 10 c3 6a 00
1098a1d0: 6a 01 6a 06 6a 01 8d 4c 24 24 51 c7 44 24 28 00
1098a1e0: 00 00 00 8b 10 8b 52 34 8d 4c 24 14 51 8b c8 ff
1098a1f0: d2 84 c0 74 d3 8b 4c 24 14 8b 01 8b 50 18 53 57
1098a200: ff d2 8b d8 8b 03 8b 50 1c 8b cb ff d2 8b f8 85
1098a210: ff 75 06 5f 5b 83 c4 10 c3 56 8d 47 01 50 6a 00
1098a220: ff 15 54 b1 aa 10 8b 13 8b f0 8b 42 30 57 56 8b
1098a230: cb ff d0 83 ff 03 c6 04 3e 00 76 2f 80 3e ef 75
1098a240: 2a 80 7e 01 bb 75 24 80 7e 02 bf 75 1e 8d 4f fd
1098a250: 51 8d 56 03 52 56 ff 15 00 b6 aa 10 83 c4 0c 33
1098a260: c0 8d 7c 3e fd 66 89 07 88 47 02 8b 4c 24 20 8b
1098a270: 01 8b 50 20 ff d2 8b 4c 24 20 8b 01 8b 50 08 ff
1098a280: d2 8b c6 5e 5f 5b 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a190 <.text+0x989190>:
1098a190:	83 ec 10                                        	sub    esp,0x10
1098a193:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098a197:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098a19b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098a19f:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1098a1a3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1098a1a7:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1098a1ab:	89 14 24                                        	mov    DWORD PTR [esp],edx
1098a1ae:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1098a1b2:	e8 19 af f5 ff                                  	call   0x108e50d0
1098a1b7:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a1b9:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1098a1bc:	8d 0c 24                                        	lea    ecx,[esp]
1098a1bf:	51                                              	push   ecx
1098a1c0:	8b c8                                           	mov    ecx,eax
1098a1c2:	ff d2                                           	call   edx
1098a1c4:	85 c0                                           	test   eax,eax
1098a1c6:	75 06                                           	jne    0x1098a1ce
1098a1c8:	33 c0                                           	xor    eax,eax
1098a1ca:	83 c4 10                                        	add    esp,0x10
1098a1cd:	c3                                              	ret
1098a1ce:	6a 00                                           	push   0x0
1098a1d0:	6a 01                                           	push   0x1
1098a1d2:	6a 06                                           	push   0x6
1098a1d4:	6a 01                                           	push   0x1
1098a1d6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098a1da:	51                                              	push   ecx
1098a1db:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
1098a1e3:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a1e5:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1098a1e8:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098a1ec:	51                                              	push   ecx
1098a1ed:	8b c8                                           	mov    ecx,eax
1098a1ef:	ff d2                                           	call   edx
1098a1f1:	84 c0                                           	test   al,al
1098a1f3:	74 d3                                           	je     0x1098a1c8
1098a1f5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098a1f9:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a1fb:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1098a1fe:	53                                              	push   ebx
1098a1ff:	57                                              	push   edi
1098a200:	ff d2                                           	call   edx
1098a202:	8b d8                                           	mov    ebx,eax
1098a204:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1098a206:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1098a209:	8b cb                                           	mov    ecx,ebx
1098a20b:	ff d2                                           	call   edx
1098a20d:	8b f8                                           	mov    edi,eax
1098a20f:	85 ff                                           	test   edi,edi
1098a211:	75 06                                           	jne    0x1098a219
1098a213:	5f                                              	pop    edi
1098a214:	5b                                              	pop    ebx
1098a215:	83 c4 10                                        	add    esp,0x10
1098a218:	c3                                              	ret
1098a219:	56                                              	push   esi
1098a21a:	8d 47 01                                        	lea    eax,[edi+0x1]
1098a21d:	50                                              	push   eax
1098a21e:	6a 00                                           	push   0x0
1098a220:	ff 15 54 b1 aa 10                               	call   DWORD PTR ds:0x10aab154
1098a226:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1098a228:	8b f0                                           	mov    esi,eax
1098a22a:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1098a22d:	57                                              	push   edi
1098a22e:	56                                              	push   esi
1098a22f:	8b cb                                           	mov    ecx,ebx
1098a231:	ff d0                                           	call   eax
1098a233:	83 ff 03                                        	cmp    edi,0x3
1098a236:	c6 04 3e 00                                     	mov    BYTE PTR [esi+edi*1],0x0
1098a23a:	76 2f                                           	jbe    0x1098a26b
1098a23c:	80 3e ef                                        	cmp    BYTE PTR [esi],0xef
1098a23f:	75 2a                                           	jne    0x1098a26b
1098a241:	80 7e 01 bb                                     	cmp    BYTE PTR [esi+0x1],0xbb
1098a245:	75 24                                           	jne    0x1098a26b
1098a247:	80 7e 02 bf                                     	cmp    BYTE PTR [esi+0x2],0xbf
1098a24b:	75 1e                                           	jne    0x1098a26b
1098a24d:	8d 4f fd                                        	lea    ecx,[edi-0x3]
1098a250:	51                                              	push   ecx
1098a251:	8d 56 03                                        	lea    edx,[esi+0x3]
1098a254:	52                                              	push   edx
1098a255:	56                                              	push   esi
1098a256:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098a25c:	83 c4 0c                                        	add    esp,0xc
1098a25f:	33 c0                                           	xor    eax,eax
1098a261:	8d 7c 3e fd                                     	lea    edi,[esi+edi*1-0x3]
1098a265:	66 89 07                                        	mov    WORD PTR [edi],ax
1098a268:	88 47 02                                        	mov    BYTE PTR [edi+0x2],al
1098a26b:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098a26f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a271:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098a274:	ff d2                                           	call   edx
1098a276:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098a27a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a27c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098a27f:	ff d2                                           	call   edx
1098a281:	8b c6                                           	mov    eax,esi
1098a283:	5e                                              	pop    esi
1098a284:	5f                                              	pop    edi
1098a285:	5b                                              	pop    ebx
1098a286:	83 c4 10                                        	add    esp,0x10
1098a289:	c3                                              	ret
1098a28a:	cc                                              	int3
1098a28b:	cc                                              	int3
1098a28c:	cc                                              	int3
1098a28d:	cc                                              	int3
1098a28e:	cc                                              	int3
1098a28f:	cc                                              	int3
