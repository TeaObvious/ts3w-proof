# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f4f0 (CameraWrap_GetWorldToClipSpaceMatrix)
Paired Ghidra pseudocode: 1098F4F0_CameraWrap_GetWorldToClipSpaceMatrix.c
Window: [0x1098f4f0, 0x1098f530) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f4f0: 8b 44 24 08 83 ec 40 56 57 05 30 01 00 00 50 8d
1098f500: 4c 24 0c 51 e8 17 0b ff ff 8b f0 8b 44 24 54 83
1098f510: c4 08 b9 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40
1098f520: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f4f0 <.text+0x98e4f0>:
1098f4f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098f4f4:	83 ec 40                                        	sub    esp,0x40
1098f4f7:	56                                              	push   esi
1098f4f8:	57                                              	push   edi
1098f4f9:	05 30 01 00 00                                  	add    eax,0x130
1098f4fe:	50                                              	push   eax
1098f4ff:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098f503:	51                                              	push   ecx
1098f504:	e8 17 0b ff ff                                  	call   0x10980020
1098f509:	8b f0                                           	mov    esi,eax
1098f50b:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1098f50f:	83 c4 08                                        	add    esp,0x8
1098f512:	b9 10 00 00 00                                  	mov    ecx,0x10
1098f517:	8b f8                                           	mov    edi,eax
1098f519:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1098f51b:	5f                                              	pop    edi
1098f51c:	5e                                              	pop    esi
1098f51d:	83 c4 40                                        	add    esp,0x40
1098f520:	c3                                              	ret
1098f521:	cc                                              	int3
1098f522:	cc                                              	int3
1098f523:	cc                                              	int3
1098f524:	cc                                              	int3
1098f525:	cc                                              	int3
1098f526:	cc                                              	int3
1098f527:	cc                                              	int3
1098f528:	cc                                              	int3
1098f529:	cc                                              	int3
1098f52a:	cc                                              	int3
1098f52b:	cc                                              	int3
1098f52c:	cc                                              	int3
1098f52d:	cc                                              	int3
1098f52e:	cc                                              	int3
1098f52f:	cc                                              	int3
