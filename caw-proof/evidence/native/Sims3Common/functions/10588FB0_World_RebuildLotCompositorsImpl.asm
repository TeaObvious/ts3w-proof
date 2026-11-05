# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10588fb0 (World_RebuildLotCompositorsImpl)
Paired Ghidra pseudocode: 10588FB0_World_RebuildLotCompositorsImpl.c
Window: [0x10588fb0, 0x10588fd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10588fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10588fb0: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 fb ff ff 83
10588fc0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10588fb0 <.text+0x587fb0>:
10588fb0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10588fb4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10588fb8:	50                                              	push   eax
10588fb9:	51                                              	push   ecx
10588fba:	e8 51 fb ff ff                                  	call   0x10588b10
10588fbf:	83 c4 08                                        	add    esp,0x8
10588fc2:	c3                                              	ret
10588fc3:	cc                                              	int3
10588fc4:	cc                                              	int3
10588fc5:	cc                                              	int3
10588fc6:	cc                                              	int3
10588fc7:	cc                                              	int3
10588fc8:	cc                                              	int3
10588fc9:	cc                                              	int3
10588fca:	cc                                              	int3
10588fcb:	cc                                              	int3
10588fcc:	cc                                              	int3
10588fcd:	cc                                              	int3
10588fce:	cc                                              	int3
10588fcf:	cc                                              	int3
