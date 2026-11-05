# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107861b0 (DownloadContent_GetFirstFilename)
Paired Ghidra pseudocode: 107861B0_DownloadContent_GetFirstFilename.c
Window: [0x107861b0, 0x107862d0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x107862d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107861b0: 83 ec 34 e8 28 97 01 00 85 c0 0f 84 01 01 00 00
107861c0: 8b c8 e8 39 96 01 00 85 c0 0f 84 f2 00 00 00 66
107861d0: 83 38 00 b9 44 82 ca 10 89 4c 24 04 89 4c 24 08
107861e0: c7 44 24 10 c4 8e b5 10 c7 44 24 0c 46 82 ca 10
107861f0: 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1
10786200: f9 8d 0c 48 51 50 8d 4c 24 0c e8 b1 96 89 ff 8b
10786210: 44 24 04 3b 44 24 08 0f 84 89 00 00 00 56 6a 01
10786220: 6a 10 8d 54 24 10 52 6a 09 6a 13 8d 4c 24 2c c7
10786230: 44 24 2c b4 a5 ac 10 66 c7 44 24 36 13 00 66 c7
10786240: 44 24 34 0b 00 e8 46 29 1a 00 e8 d1 4e dd ff 8b
10786250: 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c 51 8b c8
10786260: ff d2 f6 44 24 20 04 8b 74 24 04 c7 44 24 18 b4
10786270: a5 ac 10 74 0b 6a 00 8d 4c 24 1c e8 10 28 1a 00
10786280: 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe 83 f9 02
10786290: 7e 0d 85 c0 74 09 50 e8 f4 2b 19 00 83 c4 04 8b
107862a0: c6 5e 83 c4 34 c3 8b 54 24 0c 2b d0 83 e2 fe 83
107862b0: fa 02 7e 0d 85 c0 74 09 50 e8 d2 2b 19 00 83 c4
107862c0: 04 33 c0 83 c4 34 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107861b0 <.text+0x7851b0>:
107861b0:	83 ec 34                                        	sub    esp,0x34
107861b3:	e8 28 97 01 00                                  	call   0x1079f8e0
107861b8:	85 c0                                           	test   eax,eax
107861ba:	0f 84 01 01 00 00                               	je     0x107862c1
107861c0:	8b c8                                           	mov    ecx,eax
107861c2:	e8 39 96 01 00                                  	call   0x1079f800
107861c7:	85 c0                                           	test   eax,eax
107861c9:	0f 84 f2 00 00 00                               	je     0x107862c1
107861cf:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
107861d3:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
107861d8:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
107861dc:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
107861e0:	c7 44 24 10 c4 8e b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58ec4
107861e8:	c7 44 24 0c 46 82 ca 10                         	mov    DWORD PTR [esp+0xc],0x10ca8246
107861f0:	8b c8                                           	mov    ecx,eax
107861f2:	74 09                                           	je     0x107861fd
107861f4:	83 c1 02                                        	add    ecx,0x2
107861f7:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
107861fb:	75 f7                                           	jne    0x107861f4
107861fd:	2b c8                                           	sub    ecx,eax
107861ff:	d1 f9                                           	sar    ecx,1
10786201:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
10786204:	51                                              	push   ecx
10786205:	50                                              	push   eax
10786206:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1078620a:	e8 b1 96 89 ff                                  	call   0x1001f8c0
1078620f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10786213:	3b 44 24 08                                     	cmp    eax,DWORD PTR [esp+0x8]
10786217:	0f 84 89 00 00 00                               	je     0x107862a6
1078621d:	56                                              	push   esi
1078621e:	6a 01                                           	push   0x1
10786220:	6a 10                                           	push   0x10
10786222:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10786226:	52                                              	push   edx
10786227:	6a 09                                           	push   0x9
10786229:	6a 13                                           	push   0x13
1078622b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1078622f:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
10786237:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
1078623e:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10786245:	e8 46 29 1a 00                                  	call   0x10928b90
1078624a:	e8 d1 4e dd ff                                  	call   0x1055b120
1078624f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10786251:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10786254:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10786258:	51                                              	push   ecx
10786259:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078625d:	51                                              	push   ecx
1078625e:	8b c8                                           	mov    ecx,eax
10786260:	ff d2                                           	call   edx
10786262:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
10786267:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
1078626b:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10786273:	74 0b                                           	je     0x10786280
10786275:	6a 00                                           	push   0x0
10786277:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078627b:	e8 10 28 1a 00                                  	call   0x10928a90
10786280:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10786284:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10786288:	2b c8                                           	sub    ecx,eax
1078628a:	83 e1 fe                                        	and    ecx,0xfffffffe
1078628d:	83 f9 02                                        	cmp    ecx,0x2
10786290:	7e 0d                                           	jle    0x1078629f
10786292:	85 c0                                           	test   eax,eax
10786294:	74 09                                           	je     0x1078629f
10786296:	50                                              	push   eax
10786297:	e8 f4 2b 19 00                                  	call   0x10918e90
1078629c:	83 c4 04                                        	add    esp,0x4
1078629f:	8b c6                                           	mov    eax,esi
107862a1:	5e                                              	pop    esi
107862a2:	83 c4 34                                        	add    esp,0x34
107862a5:	c3                                              	ret
107862a6:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
107862aa:	2b d0                                           	sub    edx,eax
107862ac:	83 e2 fe                                        	and    edx,0xfffffffe
107862af:	83 fa 02                                        	cmp    edx,0x2
107862b2:	7e 0d                                           	jle    0x107862c1
107862b4:	85 c0                                           	test   eax,eax
107862b6:	74 09                                           	je     0x107862c1
107862b8:	50                                              	push   eax
107862b9:	e8 d2 2b 19 00                                  	call   0x10918e90
107862be:	83 c4 04                                        	add    esp,0x4
107862c1:	33 c0                                           	xor    eax,eax
107862c3:	83 c4 34                                        	add    esp,0x34
107862c6:	c3                                              	ret
107862c7:	cc                                              	int3
107862c8:	cc                                              	int3
107862c9:	cc                                              	int3
107862ca:	cc                                              	int3
107862cb:	cc                                              	int3
107862cc:	cc                                              	int3
107862cd:	cc                                              	int3
107862ce:	cc                                              	int3
107862cf:	cc                                              	int3
