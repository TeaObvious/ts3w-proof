# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109900d0 (SimBuilderWrap_Free)
Paired Ghidra pseudocode: 109900D0_SimBuilderWrap_Free.c
Window: [0x109900d0, 0x109900f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109900f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109900d0: 56 8b 74 24 08 85 f6 74 10 8b ce e8 10 f7 a4 ff
109900e0: 56 e8 aa 8d f8 ff 83 c4 04 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
109900d0 <.text+0x98f0d0>:
109900d0:	56                                              	push   esi
109900d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
109900d5:	85 f6                                           	test   esi,esi
109900d7:	74 10                                           	je     0x109900e9
109900d9:	8b ce                                           	mov    ecx,esi
109900db:	e8 10 f7 a4 ff                                  	call   0x103df7f0
109900e0:	56                                              	push   esi
109900e1:	e8 aa 8d f8 ff                                  	call   0x10918e90
109900e6:	83 c4 04                                        	add    esp,0x4
109900e9:	5e                                              	pop    esi
109900ea:	c3                                              	ret
109900eb:	cc                                              	int3
109900ec:	cc                                              	int3
109900ed:	cc                                              	int3
109900ee:	cc                                              	int3
109900ef:	cc                                              	int3
