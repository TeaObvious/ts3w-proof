# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998160 (WorldWrap_ImportFromSaveGame)
Paired Ghidra pseudocode: 10998160_WorldWrap_ImportFromSaveGame.c
Window: [0x10998160, 0x109981a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109981a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998160: 56 57 8b 7c 24 10 85 ff 74 2d 8b 74 24 0c 85 f6
10998170: 74 25 e8 e9 6c 6d ff 85 c0 8d 4e 08 74 19 85 c9
10998180: 74 15 57 51 8b c8 e8 35 8d 6d ff 84 c0 74 08 5f
10998190: b8 01 00 00 00 5e c3 5f 33 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
10998160 <.text+0x997160>:
10998160:	56                                              	push   esi
10998161:	57                                              	push   edi
10998162:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
10998166:	85 ff                                           	test   edi,edi
10998168:	74 2d                                           	je     0x10998197
1099816a:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1099816e:	85 f6                                           	test   esi,esi
10998170:	74 25                                           	je     0x10998197
10998172:	e8 e9 6c 6d ff                                  	call   0x1006ee60
10998177:	85 c0                                           	test   eax,eax
10998179:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1099817c:	74 19                                           	je     0x10998197
1099817e:	85 c9                                           	test   ecx,ecx
10998180:	74 15                                           	je     0x10998197
10998182:	57                                              	push   edi
10998183:	51                                              	push   ecx
10998184:	8b c8                                           	mov    ecx,eax
10998186:	e8 35 8d 6d ff                                  	call   0x10070ec0
1099818b:	84 c0                                           	test   al,al
1099818d:	74 08                                           	je     0x10998197
1099818f:	5f                                              	pop    edi
10998190:	b8 01 00 00 00                                  	mov    eax,0x1
10998195:	5e                                              	pop    esi
10998196:	c3                                              	ret
10998197:	5f                                              	pop    edi
10998198:	33 c0                                           	xor    eax,eax
1099819a:	5e                                              	pop    esi
1099819b:	c3                                              	ret
1099819c:	cc                                              	int3
1099819d:	cc                                              	int3
1099819e:	cc                                              	int3
1099819f:	cc                                              	int3
