# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107862d0 (DownloadContent_GetNextFilename)
Paired Ghidra pseudocode: 107862D0_DownloadContent_GetNextFilename.c
Window: [0x107862d0, 0x107863c0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x107863c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107862d0: 83 ec 34 e8 08 96 01 00 85 c0 0f 84 d8 00 00 00
107862e0: 8b c8 e8 39 95 01 00 85 c0 0f 84 c9 00 00 00 66
107862f0: 83 38 00 b9 44 82 ca 10 89 4c 24 04 89 4c 24 08
10786300: c7 44 24 10 c4 8e b5 10 c7 44 24 0c 46 82 ca 10
10786310: 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1
10786320: f9 56 8d 0c 48 51 50 8d 4c 24 10 e8 90 95 89 ff
10786330: 6a 01 6a 10 8d 54 24 10 52 6a 09 6a 13 8d 4c 24
10786340: 2c c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36 13 00
10786350: 66 c7 44 24 34 0b 00 e8 34 28 1a 00 e8 bf 4d dd
10786360: ff 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c 51
10786370: 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7 44 24
10786380: 18 b4 a5 ac 10 74 0b 6a 00 8d 4c 24 1c e8 fe 26
10786390: 1a 00 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe 83
107863a0: f9 02 7e 0d 85 c0 74 09 50 e8 e2 2a 19 00 83 c4
107863b0: 04 8b c6 5e 83 c4 34 c3 33 c0 83 c4 34 c3 cc cc

LINEAR DISASSEMBLY
107862d0 <.text+0x7852d0>:
107862d0:	83 ec 34                                        	sub    esp,0x34
107862d3:	e8 08 96 01 00                                  	call   0x1079f8e0
107862d8:	85 c0                                           	test   eax,eax
107862da:	0f 84 d8 00 00 00                               	je     0x107863b8
107862e0:	8b c8                                           	mov    ecx,eax
107862e2:	e8 39 95 01 00                                  	call   0x1079f820
107862e7:	85 c0                                           	test   eax,eax
107862e9:	0f 84 c9 00 00 00                               	je     0x107863b8
107862ef:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
107862f3:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
107862f8:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
107862fc:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10786300:	c7 44 24 10 c4 8e b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58ec4
10786308:	c7 44 24 0c 46 82 ca 10                         	mov    DWORD PTR [esp+0xc],0x10ca8246
10786310:	8b c8                                           	mov    ecx,eax
10786312:	74 09                                           	je     0x1078631d
10786314:	83 c1 02                                        	add    ecx,0x2
10786317:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
1078631b:	75 f7                                           	jne    0x10786314
1078631d:	2b c8                                           	sub    ecx,eax
1078631f:	d1 f9                                           	sar    ecx,1
10786321:	56                                              	push   esi
10786322:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
10786325:	51                                              	push   ecx
10786326:	50                                              	push   eax
10786327:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1078632b:	e8 90 95 89 ff                                  	call   0x1001f8c0
10786330:	6a 01                                           	push   0x1
10786332:	6a 10                                           	push   0x10
10786334:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10786338:	52                                              	push   edx
10786339:	6a 09                                           	push   0x9
1078633b:	6a 13                                           	push   0x13
1078633d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10786341:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
10786349:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
10786350:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10786357:	e8 34 28 1a 00                                  	call   0x10928b90
1078635c:	e8 bf 4d dd ff                                  	call   0x1055b120
10786361:	8b 10                                           	mov    edx,DWORD PTR [eax]
10786363:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10786366:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1078636a:	51                                              	push   ecx
1078636b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078636f:	51                                              	push   ecx
10786370:	8b c8                                           	mov    ecx,eax
10786372:	ff d2                                           	call   edx
10786374:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
10786379:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
1078637d:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10786385:	74 0b                                           	je     0x10786392
10786387:	6a 00                                           	push   0x0
10786389:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078638d:	e8 fe 26 1a 00                                  	call   0x10928a90
10786392:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10786396:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1078639a:	2b c8                                           	sub    ecx,eax
1078639c:	83 e1 fe                                        	and    ecx,0xfffffffe
1078639f:	83 f9 02                                        	cmp    ecx,0x2
107863a2:	7e 0d                                           	jle    0x107863b1
107863a4:	85 c0                                           	test   eax,eax
107863a6:	74 09                                           	je     0x107863b1
107863a8:	50                                              	push   eax
107863a9:	e8 e2 2a 19 00                                  	call   0x10918e90
107863ae:	83 c4 04                                        	add    esp,0x4
107863b1:	8b c6                                           	mov    eax,esi
107863b3:	5e                                              	pop    esi
107863b4:	83 c4 34                                        	add    esp,0x34
107863b7:	c3                                              	ret
107863b8:	33 c0                                           	xor    eax,eax
107863ba:	83 c4 34                                        	add    esp,0x34
107863bd:	c3                                              	ret
107863be:	cc                                              	int3
107863bf:	cc                                              	int3
