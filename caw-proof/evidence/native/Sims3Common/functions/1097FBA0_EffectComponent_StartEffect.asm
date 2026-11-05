# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fba0 (EffectComponent_StartEffect)
Paired Ghidra pseudocode: 1097FBA0_EffectComponent_StartEffect.c
Window: [0x1097fba0, 0x1097fbc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fba0: 8b 4c 24 04 85 c9 74 0a 6a 00 6a 00 e8 4f 60 db
1097fbb0: ff c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fba0 <.text+0x97eba0>:
1097fba0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fba4:	85 c9                                           	test   ecx,ecx
1097fba6:	74 0a                                           	je     0x1097fbb2
1097fba8:	6a 00                                           	push   0x0
1097fbaa:	6a 00                                           	push   0x0
1097fbac:	e8 4f 60 db ff                                  	call   0x10735c00
1097fbb1:	c3                                              	ret
1097fbb2:	32 c0                                           	xor    al,al
1097fbb4:	c3                                              	ret
1097fbb5:	cc                                              	int3
1097fbb6:	cc                                              	int3
1097fbb7:	cc                                              	int3
1097fbb8:	cc                                              	int3
1097fbb9:	cc                                              	int3
1097fbba:	cc                                              	int3
1097fbbb:	cc                                              	int3
1097fbbc:	cc                                              	int3
1097fbbd:	cc                                              	int3
1097fbbe:	cc                                              	int3
1097fbbf:	cc                                              	int3
