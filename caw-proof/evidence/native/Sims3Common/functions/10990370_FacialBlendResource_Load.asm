# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990370 (FacialBlendResource_Load)
Paired Ghidra pseudocode: 10990370_FacialBlendResource_Load.c
Window: [0x10990370, 0x109903f0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x109903f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990370: 83 ec 10 8b 44 24 18 8b 4c 24 1c 8b 54 24 20 89
10990380: 44 24 0c 8b 44 24 14 89 0c 24 89 54 24 04 89 44
10990390: 24 08 c7 44 24 14 00 00 00 00 e8 31 4d f5 ff 8b
109903a0: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
109903b0: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
109903c0: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 6a 3c 59 03
109903d0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
109903e0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990370 <.text+0x98f370>:
10990370:	83 ec 10                                        	sub    esp,0x10
10990373:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10990377:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1099037b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1099037f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10990383:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10990387:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
1099038a:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1099038e:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10990392:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1099039a:	e8 31 4d f5 ff                                  	call   0x108e50d0
1099039f:	8b 10                                           	mov    edx,DWORD PTR [eax]
109903a1:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
109903a4:	6a 00                                           	push   0x0
109903a6:	6a 00                                           	push   0x0
109903a8:	6a 00                                           	push   0x0
109903aa:	6a 00                                           	push   0x0
109903ac:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109903b0:	51                                              	push   ecx
109903b1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109903b5:	51                                              	push   ecx
109903b6:	8b c8                                           	mov    ecx,eax
109903b8:	ff d2                                           	call   edx
109903ba:	84 c0                                           	test   al,al
109903bc:	74 23                                           	je     0x109903e1
109903be:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109903c2:	85 c9                                           	test   ecx,ecx
109903c4:	74 14                                           	je     0x109903da
109903c6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109903c8:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
109903cb:	68 6a 3c 59 03                                  	push   0x3593c6a
109903d0:	ff d2                                           	call   edx
109903d2:	85 c0                                           	test   eax,eax
109903d4:	75 0d                                           	jne    0x109903e3
109903d6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109903da:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109903dc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109903df:	ff d2                                           	call   edx
109903e1:	33 c0                                           	xor    eax,eax
109903e3:	83 c4 10                                        	add    esp,0x10
109903e6:	c3                                              	ret
109903e7:	cc                                              	int3
109903e8:	cc                                              	int3
109903e9:	cc                                              	int3
109903ea:	cc                                              	int3
109903eb:	cc                                              	int3
109903ec:	cc                                              	int3
109903ed:	cc                                              	int3
109903ee:	cc                                              	int3
109903ef:	cc                                              	int3
