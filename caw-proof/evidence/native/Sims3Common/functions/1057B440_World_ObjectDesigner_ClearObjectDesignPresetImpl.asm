# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b440 (World_ObjectDesigner_ClearObjectDesignPresetImpl)
Paired Ghidra pseudocode: 1057B440_World_ObjectDesigner_ClearObjectDesignPresetImpl.c
Window: [0x1057b440, 0x1057b460) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b440: e8 1b d0 b7 ff 85 c0 74 11 8b 4c 24 08 8b 54 24
1057b450: 04 51 52 8b c8 e8 66 ee b7 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1057b440 <.text+0x57a440>:
1057b440:	e8 1b d0 b7 ff                                  	call   0x100f8460
1057b445:	85 c0                                           	test   eax,eax
1057b447:	74 11                                           	je     0x1057b45a
1057b449:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b44d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b451:	51                                              	push   ecx
1057b452:	52                                              	push   edx
1057b453:	8b c8                                           	mov    ecx,eax
1057b455:	e8 66 ee b7 ff                                  	call   0x100fa2c0
1057b45a:	c3                                              	ret
1057b45b:	cc                                              	int3
1057b45c:	cc                                              	int3
1057b45d:	cc                                              	int3
1057b45e:	cc                                              	int3
1057b45f:	cc                                              	int3
