# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105342b0 (LoadSaveManager_ResetSaveLocation_Impl)
Paired Ghidra pseudocode: 105342B0_LoadSaveManager_ResetSaveLocation_Impl.c
Window: [0x105342b0, 0x105342d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105342d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105342b0: e8 ab ab b3 ff 85 c0 74 07 8b c8 e9 b0 e9 b3 ff
105342c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105342b0 <.text+0x5332b0>:
105342b0:	e8 ab ab b3 ff                                  	call   0x1006ee60
105342b5:	85 c0                                           	test   eax,eax
105342b7:	74 07                                           	je     0x105342c0
105342b9:	8b c8                                           	mov    ecx,eax
105342bb:	e9 b0 e9 b3 ff                                  	jmp    0x10072c70
105342c0:	c3                                              	ret
105342c1:	cc                                              	int3
105342c2:	cc                                              	int3
105342c3:	cc                                              	int3
105342c4:	cc                                              	int3
105342c5:	cc                                              	int3
105342c6:	cc                                              	int3
105342c7:	cc                                              	int3
105342c8:	cc                                              	int3
105342c9:	cc                                              	int3
105342ca:	cc                                              	int3
105342cb:	cc                                              	int3
105342cc:	cc                                              	int3
105342cd:	cc                                              	int3
105342ce:	cc                                              	int3
105342cf:	cc                                              	int3
