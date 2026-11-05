# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998100 (WorldWrap_ShowPhysicallyUnroutableTerrain)
Paired Ghidra pseudocode: 10998100_WorldWrap_ShowPhysicallyUnroutableTerrain.c
Window: [0x10998100, 0x10998120) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998100: 8b 4c 24 04 e8 d7 1e a7 ff 85 c0 74 0c 8b 4c 24
10998110: 08 51 8b c8 e8 f7 d9 8b ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998100 <.text+0x997100>:
10998100:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998104:	e8 d7 1e a7 ff                                  	call   0x10409fe0
10998109:	85 c0                                           	test   eax,eax
1099810b:	74 0c                                           	je     0x10998119
1099810d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10998111:	51                                              	push   ecx
10998112:	8b c8                                           	mov    ecx,eax
10998114:	e8 f7 d9 8b ff                                  	call   0x10255b10
10998119:	c3                                              	ret
1099811a:	cc                                              	int3
1099811b:	cc                                              	int3
1099811c:	cc                                              	int3
1099811d:	cc                                              	int3
1099811e:	cc                                              	int3
1099811f:	cc                                              	int3
