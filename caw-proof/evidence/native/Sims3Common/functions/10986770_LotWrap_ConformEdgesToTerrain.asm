# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986770 (LotWrap_ConformEdgesToTerrain)
Paired Ghidra pseudocode: 10986770_LotWrap_ConformEdgesToTerrain.c
Window: [0x10986770, 0x10986780) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986770: 8b 4c 24 04 85 c9 74 05 e9 f3 52 70 ff c3 cc cc

LINEAR DISASSEMBLY
10986770 <.text+0x985770>:
10986770:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986774:	85 c9                                           	test   ecx,ecx
10986776:	74 05                                           	je     0x1098677d
10986778:	e9 f3 52 70 ff                                  	jmp    0x1008ba70
1098677d:	c3                                              	ret
1098677e:	cc                                              	int3
1098677f:	cc                                              	int3
