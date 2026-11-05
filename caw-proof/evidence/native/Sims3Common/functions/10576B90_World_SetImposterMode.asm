# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576b90 (World_SetImposterMode)
Paired Ghidra pseudocode: 10576B90_World_SetImposterMode.c
Window: [0x10576b90, 0x10576bb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576b90: 8b 0d c4 00 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10576ba0: bc cb cb ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576b90 <.text+0x575b90>:
10576b90:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576b96:	85 c9                                           	test   ecx,ecx
10576b98:	74 0a                                           	je     0x10576ba4
10576b9a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10576b9e:	50                                              	push   eax
10576b9f:	e8 bc cb cb ff                                  	call   0x10233760
10576ba4:	c3                                              	ret
10576ba5:	cc                                              	int3
10576ba6:	cc                                              	int3
10576ba7:	cc                                              	int3
10576ba8:	cc                                              	int3
10576ba9:	cc                                              	int3
10576baa:	cc                                              	int3
10576bab:	cc                                              	int3
10576bac:	cc                                              	int3
10576bad:	cc                                              	int3
10576bae:	cc                                              	int3
10576baf:	cc                                              	int3
