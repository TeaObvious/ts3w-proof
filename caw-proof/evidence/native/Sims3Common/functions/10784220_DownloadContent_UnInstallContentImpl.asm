# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784220 (DownloadContent_UnInstallContentImpl)
Paired Ghidra pseudocode: 10784220_DownloadContent_UnInstallContentImpl.c
Window: [0x10784220, 0x107842a0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x107842a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784220: 83 ec 10 56 e8 f7 6e dd ff 85 c0 74 5d 8b 4c 24
10784230: 18 8b 10 8b 52 58 51 8b c8 ff d2 8b f0 6a 10 56
10784240: 8d 4c 24 0c e8 e7 07 1b 00 e8 72 02 ff ff 85 c0
10784250: 74 38 57 6a 00 6a 01 6a 02 8d 4c 24 14 51 8b c8
10784260: e8 6b c4 ff ff 8b f8 e8 74 b6 01 00 85 c0 74 12
10784270: 81 ff 00 10 00 00 0f 9d c2 8b c8 52 56 e8 9e b6
10784280: 01 00 8b c7 5f 5e 83 c4 10 c3 b8 01 00 00 00 5e
10784290: 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784220 <.text+0x783220>:
10784220:	83 ec 10                                        	sub    esp,0x10
10784223:	56                                              	push   esi
10784224:	e8 f7 6e dd ff                                  	call   0x1055b120
10784229:	85 c0                                           	test   eax,eax
1078422b:	74 5d                                           	je     0x1078428a
1078422d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10784231:	8b 10                                           	mov    edx,DWORD PTR [eax]
10784233:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10784236:	51                                              	push   ecx
10784237:	8b c8                                           	mov    ecx,eax
10784239:	ff d2                                           	call   edx
1078423b:	8b f0                                           	mov    esi,eax
1078423d:	6a 10                                           	push   0x10
1078423f:	56                                              	push   esi
10784240:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10784244:	e8 e7 07 1b 00                                  	call   0x10934a30
10784249:	e8 72 02 ff ff                                  	call   0x107744c0
1078424e:	85 c0                                           	test   eax,eax
10784250:	74 38                                           	je     0x1078428a
10784252:	57                                              	push   edi
10784253:	6a 00                                           	push   0x0
10784255:	6a 01                                           	push   0x1
10784257:	6a 02                                           	push   0x2
10784259:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1078425d:	51                                              	push   ecx
1078425e:	8b c8                                           	mov    ecx,eax
10784260:	e8 6b c4 ff ff                                  	call   0x107806d0
10784265:	8b f8                                           	mov    edi,eax
10784267:	e8 74 b6 01 00                                  	call   0x1079f8e0
1078426c:	85 c0                                           	test   eax,eax
1078426e:	74 12                                           	je     0x10784282
10784270:	81 ff 00 10 00 00                               	cmp    edi,0x1000
10784276:	0f 9d c2                                        	setge  dl
10784279:	8b c8                                           	mov    ecx,eax
1078427b:	52                                              	push   edx
1078427c:	56                                              	push   esi
1078427d:	e8 9e b6 01 00                                  	call   0x1079f920
10784282:	8b c7                                           	mov    eax,edi
10784284:	5f                                              	pop    edi
10784285:	5e                                              	pop    esi
10784286:	83 c4 10                                        	add    esp,0x10
10784289:	c3                                              	ret
1078428a:	b8 01 00 00 00                                  	mov    eax,0x1
1078428f:	5e                                              	pop    esi
10784290:	83 c4 10                                        	add    esp,0x10
10784293:	c3                                              	ret
10784294:	cc                                              	int3
10784295:	cc                                              	int3
10784296:	cc                                              	int3
10784297:	cc                                              	int3
10784298:	cc                                              	int3
10784299:	cc                                              	int3
1078429a:	cc                                              	int3
1078429b:	cc                                              	int3
1078429c:	cc                                              	int3
1078429d:	cc                                              	int3
1078429e:	cc                                              	int3
1078429f:	cc                                              	int3
