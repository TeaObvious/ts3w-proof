# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589110 (World_GetLotNameKey)
Paired Ghidra pseudocode: 10589110_World_GetLotNameKey.c
Window: [0x10589110, 0x10589130) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589110: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 f4 ff ff 83
10589120: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589110 <.text+0x588110>:
10589110:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10589114:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10589118:	50                                              	push   eax
10589119:	51                                              	push   ecx
1058911a:	e8 31 f4 ff ff                                  	call   0x10588550
1058911f:	83 c4 08                                        	add    esp,0x8
10589122:	c3                                              	ret
10589123:	cc                                              	int3
10589124:	cc                                              	int3
10589125:	cc                                              	int3
10589126:	cc                                              	int3
10589127:	cc                                              	int3
10589128:	cc                                              	int3
10589129:	cc                                              	int3
1058912a:	cc                                              	int3
1058912b:	cc                                              	int3
1058912c:	cc                                              	int3
1058912d:	cc                                              	int3
1058912e:	cc                                              	int3
1058912f:	cc                                              	int3
