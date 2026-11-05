# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109951d0 (ThumbnailManager_GetModelThumbnail)
Paired Ghidra pseudocode: 109951D0_ThumbnailManager_GetModelThumbnail.c
Window: [0x109951d0, 0x10995270) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109951d0: 55 8b ec 83 e4 f8 81 ec 28 01 00 00 53 56 8b 35
109951e0: 50 11 c7 10 85 f6 74 71 8b 45 08 85 c0 74 6a 8b
109951f0: 4d 0c 8b 55 18 51 6a 00 52 50 8d 4c 24 18 e8 bd
10995200: fe ff ff 8b 45 14 8b 4d 10 50 51 6a 00 6a 00 8d
10995210: 54 24 18 52 8b ce e8 65 13 9a ff 8a d8 8b 84 24
10995220: 98 00 00 00 85 c0 74 12 3b 84 24 a8 00 00 00 74
10995230: 09 50 e8 59 3c f8 ff 83 c4 04 8b 44 24 08 85 c0
10995240: 74 0f 3b 44 24 18 74 09 50 e8 42 3c f8 ff 83 c4
10995250: 04 8a c3 5e 5b 8b e5 5d c3 5e 32 c0 5b 8b e5 5d
10995260: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109951d0 <.text+0x9941d0>:
109951d0:	55                                              	push   ebp
109951d1:	8b ec                                           	mov    ebp,esp
109951d3:	83 e4 f8                                        	and    esp,0xfffffff8
109951d6:	81 ec 28 01 00 00                               	sub    esp,0x128
109951dc:	53                                              	push   ebx
109951dd:	56                                              	push   esi
109951de:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
109951e4:	85 f6                                           	test   esi,esi
109951e6:	74 71                                           	je     0x10995259
109951e8:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109951eb:	85 c0                                           	test   eax,eax
109951ed:	74 6a                                           	je     0x10995259
109951ef:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
109951f2:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
109951f5:	51                                              	push   ecx
109951f6:	6a 00                                           	push   0x0
109951f8:	52                                              	push   edx
109951f9:	50                                              	push   eax
109951fa:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109951fe:	e8 bd fe ff ff                                  	call   0x109950c0
10995203:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10995206:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10995209:	50                                              	push   eax
1099520a:	51                                              	push   ecx
1099520b:	6a 00                                           	push   0x0
1099520d:	6a 00                                           	push   0x0
1099520f:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10995213:	52                                              	push   edx
10995214:	8b ce                                           	mov    ecx,esi
10995216:	e8 65 13 9a ff                                  	call   0x10336580
1099521b:	8a d8                                           	mov    bl,al
1099521d:	8b 84 24 98 00 00 00                            	mov    eax,DWORD PTR [esp+0x98]
10995224:	85 c0                                           	test   eax,eax
10995226:	74 12                                           	je     0x1099523a
10995228:	3b 84 24 a8 00 00 00                            	cmp    eax,DWORD PTR [esp+0xa8]
1099522f:	74 09                                           	je     0x1099523a
10995231:	50                                              	push   eax
10995232:	e8 59 3c f8 ff                                  	call   0x10918e90
10995237:	83 c4 04                                        	add    esp,0x4
1099523a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099523e:	85 c0                                           	test   eax,eax
10995240:	74 0f                                           	je     0x10995251
10995242:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
10995246:	74 09                                           	je     0x10995251
10995248:	50                                              	push   eax
10995249:	e8 42 3c f8 ff                                  	call   0x10918e90
1099524e:	83 c4 04                                        	add    esp,0x4
10995251:	8a c3                                           	mov    al,bl
10995253:	5e                                              	pop    esi
10995254:	5b                                              	pop    ebx
10995255:	8b e5                                           	mov    esp,ebp
10995257:	5d                                              	pop    ebp
10995258:	c3                                              	ret
10995259:	5e                                              	pop    esi
1099525a:	32 c0                                           	xor    al,al
1099525c:	5b                                              	pop    ebx
1099525d:	8b e5                                           	mov    esp,ebp
1099525f:	5d                                              	pop    ebp
10995260:	c3                                              	ret
10995261:	cc                                              	int3
10995262:	cc                                              	int3
10995263:	cc                                              	int3
10995264:	cc                                              	int3
10995265:	cc                                              	int3
10995266:	cc                                              	int3
10995267:	cc                                              	int3
10995268:	cc                                              	int3
10995269:	cc                                              	int3
1099526a:	cc                                              	int3
1099526b:	cc                                              	int3
1099526c:	cc                                              	int3
1099526d:	cc                                              	int3
1099526e:	cc                                              	int3
1099526f:	cc                                              	int3
