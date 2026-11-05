# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057d200 (World_BuildRoutingDataImpl)
Paired Ghidra pseudocode: 1057D200_World_BuildRoutingDataImpl.c
Window: [0x1057d200, 0x1057d230) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057d230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057d200: 56 8b 35 c4 00 c7 10 85 f6 74 18 57 8b be 84 00
1057d210: 00 00 8b ce e8 e7 62 cb ff 50 57 8b ce e8 ee 33
1057d220: cc ff 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057d200 <.text+0x57c200>:
1057d200:	56                                              	push   esi
1057d201:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
1057d207:	85 f6                                           	test   esi,esi
1057d209:	74 18                                           	je     0x1057d223
1057d20b:	57                                              	push   edi
1057d20c:	8b be 84 00 00 00                               	mov    edi,DWORD PTR [esi+0x84]
1057d212:	8b ce                                           	mov    ecx,esi
1057d214:	e8 e7 62 cb ff                                  	call   0x10233500
1057d219:	50                                              	push   eax
1057d21a:	57                                              	push   edi
1057d21b:	8b ce                                           	mov    ecx,esi
1057d21d:	e8 ee 33 cc ff                                  	call   0x10240610
1057d222:	5f                                              	pop    edi
1057d223:	5e                                              	pop    esi
1057d224:	c3                                              	ret
1057d225:	cc                                              	int3
1057d226:	cc                                              	int3
1057d227:	cc                                              	int3
1057d228:	cc                                              	int3
1057d229:	cc                                              	int3
1057d22a:	cc                                              	int3
1057d22b:	cc                                              	int3
1057d22c:	cc                                              	int3
1057d22d:	cc                                              	int3
1057d22e:	cc                                              	int3
1057d22f:	cc                                              	int3
