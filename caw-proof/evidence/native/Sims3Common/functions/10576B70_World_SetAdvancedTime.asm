# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576b70 (World_SetAdvancedTime)
Paired Ghidra pseudocode: 10576B70_World_SetAdvancedTime.c
Window: [0x10576b70, 0x10576b90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576b70: a1 c4 00 c7 10 85 c0 74 14 8b 4c 24 04 8b 54 24
10576b80: 08 89 88 40 01 00 00 89 90 44 01 00 00 c3 cc cc

LINEAR DISASSEMBLY
10576b70 <.text+0x575b70>:
10576b70:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10576b75:	85 c0                                           	test   eax,eax
10576b77:	74 14                                           	je     0x10576b8d
10576b79:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10576b7d:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10576b81:	89 88 40 01 00 00                               	mov    DWORD PTR [eax+0x140],ecx
10576b87:	89 90 44 01 00 00                               	mov    DWORD PTR [eax+0x144],edx
10576b8d:	c3                                              	ret
10576b8e:	cc                                              	int3
10576b8f:	cc                                              	int3
