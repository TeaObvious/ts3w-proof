# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109864c0 (LotWrap_FinalizeTerrainHeightChange)
Paired Ghidra pseudocode: 109864C0_LotWrap_FinalizeTerrainHeightChange.c
Window: [0x109864c0, 0x109864d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109864d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109864c0: 8b 4c 24 04 85 c9 74 05 e9 73 4c 6f ff c3 cc cc

LINEAR DISASSEMBLY
109864c0 <.text+0x9854c0>:
109864c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109864c4:	85 c9                                           	test   ecx,ecx
109864c6:	74 05                                           	je     0x109864cd
109864c8:	e9 73 4c 6f ff                                  	jmp    0x1007b140
109864cd:	c3                                              	ret
109864ce:	cc                                              	int3
109864cf:	cc                                              	int3
