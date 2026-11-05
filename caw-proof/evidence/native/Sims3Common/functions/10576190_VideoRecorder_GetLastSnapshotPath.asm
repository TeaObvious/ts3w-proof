# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576190 (VideoRecorder_GetLastSnapshotPath)
Paired Ghidra pseudocode: 10576190_VideoRecorder_GetLastSnapshotPath.c
Window: [0x10576190, 0x10576260) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576190: 83 ec 34 c7 04 24 00 00 00 00 e8 d1 6f 25 00 85
105761a0: c0 0f 84 ac 00 00 00 8b 10 8b 52 20 b9 44 82 ca
105761b0: 10 89 4c 24 04 89 4c 24 08 56 8d 4c 24 08 51 8b
105761c0: c8 c7 44 24 18 24 19 b2 10 c7 44 24 14 46 82 ca
105761d0: 10 ff d2 e8 48 4f fe ff 6a 01 6a 10 8b f0 8d 44
105761e0: 24 10 50 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c b4
105761f0: a5 ac 10 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
10576200: 00 e8 8a 29 3b 00 8b 16 8b 52 50 8d 44 24 04 50
10576210: 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04 c7 44
10576220: 24 18 b4 a5 ac 10 5e 74 0b 6a 00 8d 4c 24 18 e8
10576230: 5c 28 3b 00 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
10576240: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 40 2c 3a 00
10576250: 83 c4 04 8b 04 24 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576190 <.text+0x575190>:
10576190:	83 ec 34                                        	sub    esp,0x34
10576193:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
1057619a:	e8 d1 6f 25 00                                  	call   0x107cd170
1057619f:	85 c0                                           	test   eax,eax
105761a1:	0f 84 ac 00 00 00                               	je     0x10576253
105761a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
105761a9:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
105761ac:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
105761b1:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
105761b5:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
105761b9:	56                                              	push   esi
105761ba:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
105761be:	51                                              	push   ecx
105761bf:	8b c8                                           	mov    ecx,eax
105761c1:	c7 44 24 18 24 19 b2 10                         	mov    DWORD PTR [esp+0x18],0x10b21924
105761c9:	c7 44 24 14 46 82 ca 10                         	mov    DWORD PTR [esp+0x14],0x10ca8246
105761d1:	ff d2                                           	call   edx
105761d3:	e8 48 4f fe ff                                  	call   0x1055b120
105761d8:	6a 01                                           	push   0x1
105761da:	6a 10                                           	push   0x10
105761dc:	8b f0                                           	mov    esi,eax
105761de:	8d 44 24 10                                     	lea    eax,[esp+0x10]
105761e2:	50                                              	push   eax
105761e3:	6a 09                                           	push   0x9
105761e5:	6a 13                                           	push   0x13
105761e7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
105761eb:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
105761f3:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
105761fa:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10576201:	e8 8a 29 3b 00                                  	call   0x10928b90
10576206:	8b 16                                           	mov    edx,DWORD PTR [esi]
10576208:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1057620b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1057620f:	50                                              	push   eax
10576210:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10576214:	51                                              	push   ecx
10576215:	8b ce                                           	mov    ecx,esi
10576217:	ff d2                                           	call   edx
10576219:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
1057621e:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10576226:	5e                                              	pop    esi
10576227:	74 0b                                           	je     0x10576234
10576229:	6a 00                                           	push   0x0
1057622b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1057622f:	e8 5c 28 3b 00                                  	call   0x10928a90
10576234:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10576238:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057623c:	2b c8                                           	sub    ecx,eax
1057623e:	83 e1 fe                                        	and    ecx,0xfffffffe
10576241:	83 f9 02                                        	cmp    ecx,0x2
10576244:	7e 0d                                           	jle    0x10576253
10576246:	85 c0                                           	test   eax,eax
10576248:	74 09                                           	je     0x10576253
1057624a:	50                                              	push   eax
1057624b:	e8 40 2c 3a 00                                  	call   0x10918e90
10576250:	83 c4 04                                        	add    esp,0x4
10576253:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
10576256:	83 c4 34                                        	add    esp,0x34
10576259:	c3                                              	ret
1057625a:	cc                                              	int3
1057625b:	cc                                              	int3
1057625c:	cc                                              	int3
1057625d:	cc                                              	int3
1057625e:	cc                                              	int3
1057625f:	cc                                              	int3
