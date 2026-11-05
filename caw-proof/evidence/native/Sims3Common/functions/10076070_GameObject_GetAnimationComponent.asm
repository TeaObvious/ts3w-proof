# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10076070 (GameObject_GetAnimationComponent)
Paired Ghidra pseudocode: 10076070_GameObject_GetAnimationComponent.c
Window: [0x10076070, 0x10076090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10076090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10076070: 8b 4c 24 04 85 c9 74 0c a1 c4 0c c8 10 50 e8 1d
10076080: 0d 6b 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10076070 <.text+0x75070>:
10076070:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10076074:	85 c9                                           	test   ecx,ecx
10076076:	74 0c                                           	je     0x10076084
10076078:	a1 c4 0c c8 10                                  	mov    eax,ds:0x10c80cc4
1007607d:	50                                              	push   eax
1007607e:	e8 1d 0d 6b 00                                  	call   0x10726da0
10076083:	c3                                              	ret
10076084:	33 c0                                           	xor    eax,eax
10076086:	c3                                              	ret
10076087:	cc                                              	int3
10076088:	cc                                              	int3
10076089:	cc                                              	int3
1007608a:	cc                                              	int3
1007608b:	cc                                              	int3
1007608c:	cc                                              	int3
1007608d:	cc                                              	int3
1007608e:	cc                                              	int3
1007608f:	cc                                              	int3
