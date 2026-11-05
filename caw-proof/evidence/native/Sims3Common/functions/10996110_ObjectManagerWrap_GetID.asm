# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996110 (ObjectManagerWrap_GetID)
Paired Ghidra pseudocode: 10996110_ObjectManagerWrap_GetID.c
Window: [0x10996110, 0x10996130) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996110: 8b 4c 24 04 85 c9 74 07 8b 41 48 8b 51 4c c3 33
10996120: c0 33 d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996110 <.text+0x995110>:
10996110:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996114:	85 c9                                           	test   ecx,ecx
10996116:	74 07                                           	je     0x1099611f
10996118:	8b 41 48                                        	mov    eax,DWORD PTR [ecx+0x48]
1099611b:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
1099611e:	c3                                              	ret
1099611f:	33 c0                                           	xor    eax,eax
10996121:	33 d2                                           	xor    edx,edx
10996123:	c3                                              	ret
10996124:	cc                                              	int3
10996125:	cc                                              	int3
10996126:	cc                                              	int3
10996127:	cc                                              	int3
10996128:	cc                                              	int3
10996129:	cc                                              	int3
1099612a:	cc                                              	int3
1099612b:	cc                                              	int3
1099612c:	cc                                              	int3
1099612d:	cc                                              	int3
1099612e:	cc                                              	int3
1099612f:	cc                                              	int3
