# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109869d0 (Manifest_Destroy)
Paired Ghidra pseudocode: 109869D0_Manifest_Destroy.c
Window: [0x109869d0, 0x109869f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109869f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109869d0: 56 8b 74 24 08 85 f6 74 10 8b ce e8 90 bb e1 ff
109869e0: 56 e8 aa 24 f9 ff 83 c4 04 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
109869d0 <.text+0x9859d0>:
109869d0:	56                                              	push   esi
109869d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
109869d5:	85 f6                                           	test   esi,esi
109869d7:	74 10                                           	je     0x109869e9
109869d9:	8b ce                                           	mov    ecx,esi
109869db:	e8 90 bb e1 ff                                  	call   0x107a2570
109869e0:	56                                              	push   esi
109869e1:	e8 aa 24 f9 ff                                  	call   0x10918e90
109869e6:	83 c4 04                                        	add    esp,0x4
109869e9:	5e                                              	pop    esi
109869ea:	c3                                              	ret
109869eb:	cc                                              	int3
109869ec:	cc                                              	int3
109869ed:	cc                                              	int3
109869ee:	cc                                              	int3
109869ef:	cc                                              	int3
