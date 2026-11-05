# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567170 (StopWatch_IsRunningStopwatch)
Paired Ghidra pseudocode: 10567170_StopWatch_IsRunningStopwatch.c
Window: [0x10567170, 0x105671b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105671b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567170: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10567180: 10 75 21 e8 98 3f ff ff 8b 10 8b c8 8b 82 cc 00
10567190: 00 00 56 ff d0 85 c0 74 0b 8b 08 0b 48 04 74 04
105671a0: b0 01 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567170 <.text+0x566170>:
10567170:	56                                              	push   esi
10567171:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567175:	8b c6                                           	mov    eax,esi
10567177:	25 00 00 00 ff                                  	and    eax,0xff000000
1056717c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10567181:	75 21                                           	jne    0x105671a4
10567183:	e8 98 3f ff ff                                  	call   0x1055b120
10567188:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056718a:	8b c8                                           	mov    ecx,eax
1056718c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567192:	56                                              	push   esi
10567193:	ff d0                                           	call   eax
10567195:	85 c0                                           	test   eax,eax
10567197:	74 0b                                           	je     0x105671a4
10567199:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1056719b:	0b 48 04                                        	or     ecx,DWORD PTR [eax+0x4]
1056719e:	74 04                                           	je     0x105671a4
105671a0:	b0 01                                           	mov    al,0x1
105671a2:	5e                                              	pop    esi
105671a3:	c3                                              	ret
105671a4:	32 c0                                           	xor    al,al
105671a6:	5e                                              	pop    esi
105671a7:	c3                                              	ret
105671a8:	cc                                              	int3
105671a9:	cc                                              	int3
105671aa:	cc                                              	int3
105671ab:	cc                                              	int3
105671ac:	cc                                              	int3
105671ad:	cc                                              	int3
105671ae:	cc                                              	int3
105671af:	cc                                              	int3
