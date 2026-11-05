# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996240 (ObjectManagerWrap_IsUnclusteredTreeAvailable)
Paired Ghidra pseudocode: 10996240_ObjectManagerWrap_IsUnclusteredTreeAvailable.c
Window: [0x10996240, 0x109962b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109962b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996240: 53 8b 5c 24 08 85 db 74 5b 55 56 57 8b cb 33 ed
10996250: e8 fb ce 8a ff 8b f8 33 f6 85 ff 76 37 8d 49 00
10996260: 56 8b cb e8 f8 ce 8a ff 85 c0 74 21 8b 0d d0 da
10996270: c8 10 51 8b c8 e8 26 0b d9 ff 85 c0 74 0f 8b c8
10996280: e8 0b 6c db ff 83 f8 01 75 03 83 c5 01 83 c6 01
10996290: 3b f7 72 cc 5f ba 01 00 00 00 3b d5 5e 1b c0 5d
109962a0: f7 d8 5b c3 32 c0 5b c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996240 <.text+0x995240>:
10996240:	53                                              	push   ebx
10996241:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
10996245:	85 db                                           	test   ebx,ebx
10996247:	74 5b                                           	je     0x109962a4
10996249:	55                                              	push   ebp
1099624a:	56                                              	push   esi
1099624b:	57                                              	push   edi
1099624c:	8b cb                                           	mov    ecx,ebx
1099624e:	33 ed                                           	xor    ebp,ebp
10996250:	e8 fb ce 8a ff                                  	call   0x10243150
10996255:	8b f8                                           	mov    edi,eax
10996257:	33 f6                                           	xor    esi,esi
10996259:	85 ff                                           	test   edi,edi
1099625b:	76 37                                           	jbe    0x10996294
1099625d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10996260:	56                                              	push   esi
10996261:	8b cb                                           	mov    ecx,ebx
10996263:	e8 f8 ce 8a ff                                  	call   0x10243160
10996268:	85 c0                                           	test   eax,eax
1099626a:	74 21                                           	je     0x1099628d
1099626c:	8b 0d d0 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dad0
10996272:	51                                              	push   ecx
10996273:	8b c8                                           	mov    ecx,eax
10996275:	e8 26 0b d9 ff                                  	call   0x10726da0
1099627a:	85 c0                                           	test   eax,eax
1099627c:	74 0f                                           	je     0x1099628d
1099627e:	8b c8                                           	mov    ecx,eax
10996280:	e8 0b 6c db ff                                  	call   0x1074ce90
10996285:	83 f8 01                                        	cmp    eax,0x1
10996288:	75 03                                           	jne    0x1099628d
1099628a:	83 c5 01                                        	add    ebp,0x1
1099628d:	83 c6 01                                        	add    esi,0x1
10996290:	3b f7                                           	cmp    esi,edi
10996292:	72 cc                                           	jb     0x10996260
10996294:	5f                                              	pop    edi
10996295:	ba 01 00 00 00                                  	mov    edx,0x1
1099629a:	3b d5                                           	cmp    edx,ebp
1099629c:	5e                                              	pop    esi
1099629d:	1b c0                                           	sbb    eax,eax
1099629f:	5d                                              	pop    ebp
109962a0:	f7 d8                                           	neg    eax
109962a2:	5b                                              	pop    ebx
109962a3:	c3                                              	ret
109962a4:	32 c0                                           	xor    al,al
109962a6:	5b                                              	pop    ebx
109962a7:	c3                                              	ret
109962a8:	cc                                              	int3
109962a9:	cc                                              	int3
109962aa:	cc                                              	int3
109962ab:	cc                                              	int3
109962ac:	cc                                              	int3
109962ad:	cc                                              	int3
109962ae:	cc                                              	int3
109962af:	cc                                              	int3
