# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109869c0 (Manifest_SetAssetVersion)
Paired Ghidra pseudocode: 109869C0_Manifest_SetAssetVersion.c
Window: [0x109869c0, 0x109869d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109869d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109869c0: 66 8b 44 24 08 8b 4c 24 04 66 89 41 5a c3 cc cc

LINEAR DISASSEMBLY
109869c0 <.text+0x9859c0>:
109869c0:	66 8b 44 24 08                                  	mov    ax,WORD PTR [esp+0x8]
109869c5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109869c9:	66 89 41 5a                                     	mov    WORD PTR [ecx+0x5a],ax
109869cd:	c3                                              	ret
109869ce:	cc                                              	int3
109869cf:	cc                                              	int3
