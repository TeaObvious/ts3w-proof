# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986640 (LotWrap_SetResidentialLotSubType)
Paired Ghidra pseudocode: 10986640_LotWrap_SetResidentialLotSubType.c
Window: [0x10986640, 0x10986660) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986640: 8b 44 24 04 85 c0 74 13 83 b8 08 04 00 00 00 75
10986650: 0a 8b 4c 24 08 89 88 0c 04 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10986640 <.text+0x985640>:
10986640:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986644:	85 c0                                           	test   eax,eax
10986646:	74 13                                           	je     0x1098665b
10986648:	83 b8 08 04 00 00 00                            	cmp    DWORD PTR [eax+0x408],0x0
1098664f:	75 0a                                           	jne    0x1098665b
10986651:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10986655:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
1098665b:	c3                                              	ret
1098665c:	cc                                              	int3
1098665d:	cc                                              	int3
1098665e:	cc                                              	int3
1098665f:	cc                                              	int3
