# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fdb0 (SlotComponent_GetSlotFromBoneNameHash)
Paired Ghidra pseudocode: 1097FDB0_SlotComponent_GetSlotFromBoneNameHash.c
Window: [0x1097fdb0, 0x1097fdd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fdd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fdb0: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 1e 34
1097fdc0: dc ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fdb0 <.text+0x97edb0>:
1097fdb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fdb4:	85 c9                                           	test   ecx,ecx
1097fdb6:	74 0b                                           	je     0x1097fdc3
1097fdb8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fdbc:	50                                              	push   eax
1097fdbd:	e8 1e 34 dc ff                                  	call   0x107431e0
1097fdc2:	c3                                              	ret
1097fdc3:	33 c0                                           	xor    eax,eax
1097fdc5:	c3                                              	ret
1097fdc6:	cc                                              	int3
1097fdc7:	cc                                              	int3
1097fdc8:	cc                                              	int3
1097fdc9:	cc                                              	int3
1097fdca:	cc                                              	int3
1097fdcb:	cc                                              	int3
1097fdcc:	cc                                              	int3
1097fdcd:	cc                                              	int3
1097fdce:	cc                                              	int3
1097fdcf:	cc                                              	int3
