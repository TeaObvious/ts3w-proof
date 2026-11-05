# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577200 (World_GetCommercialLotSubType)
Paired Ghidra pseudocode: 10577200_World_GetCommercialLotSubType.c
Window: [0x10577200, 0x10577240) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577200: 8b 0d c4 00 c7 10 85 c9 74 13 8b 44 24 08 8b 54
10577210: 24 04 6a 00 50 52 e8 f5 fd cb ff eb 02 33 c0 33
10577220: c9 85 c0 74 13 83 b8 08 04 00 00 01 75 07 8b 80
10577230: 0c 04 00 00 c3 33 c0 c3 8b c1 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10577200 <.text+0x576200>:
10577200:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577206:	85 c9                                           	test   ecx,ecx
10577208:	74 13                                           	je     0x1057721d
1057720a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057720e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577212:	6a 00                                           	push   0x0
10577214:	50                                              	push   eax
10577215:	52                                              	push   edx
10577216:	e8 f5 fd cb ff                                  	call   0x10237010
1057721b:	eb 02                                           	jmp    0x1057721f
1057721d:	33 c0                                           	xor    eax,eax
1057721f:	33 c9                                           	xor    ecx,ecx
10577221:	85 c0                                           	test   eax,eax
10577223:	74 13                                           	je     0x10577238
10577225:	83 b8 08 04 00 00 01                            	cmp    DWORD PTR [eax+0x408],0x1
1057722c:	75 07                                           	jne    0x10577235
1057722e:	8b 80 0c 04 00 00                               	mov    eax,DWORD PTR [eax+0x40c]
10577234:	c3                                              	ret
10577235:	33 c0                                           	xor    eax,eax
10577237:	c3                                              	ret
10577238:	8b c1                                           	mov    eax,ecx
1057723a:	c3                                              	ret
1057723b:	cc                                              	int3
1057723c:	cc                                              	int3
1057723d:	cc                                              	int3
1057723e:	cc                                              	int3
1057723f:	cc                                              	int3
