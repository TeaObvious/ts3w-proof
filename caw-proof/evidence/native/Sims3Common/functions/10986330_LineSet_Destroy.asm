# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986330 (LineSet_Destroy)
Paired Ghidra pseudocode: 10986330_LineSet_Destroy.c
Window: [0x10986330, 0x10986350) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986330: 56 8b 74 24 08 85 f6 74 10 8b ce e8 80 0a b5 ff
10986340: 56 e8 4a 2b f9 ff 83 c4 04 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10986330 <.text+0x985330>:
10986330:	56                                              	push   esi
10986331:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10986335:	85 f6                                           	test   esi,esi
10986337:	74 10                                           	je     0x10986349
10986339:	8b ce                                           	mov    ecx,esi
1098633b:	e8 80 0a b5 ff                                  	call   0x104d6dc0
10986340:	56                                              	push   esi
10986341:	e8 4a 2b f9 ff                                  	call   0x10918e90
10986346:	83 c4 04                                        	add    esp,0x4
10986349:	5e                                              	pop    esi
1098634a:	c3                                              	ret
1098634b:	cc                                              	int3
1098634c:	cc                                              	int3
1098634d:	cc                                              	int3
1098634e:	cc                                              	int3
1098634f:	cc                                              	int3
