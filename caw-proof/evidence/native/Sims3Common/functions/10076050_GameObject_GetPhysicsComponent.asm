# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10076050 (GameObject_GetPhysicsComponent)
Paired Ghidra pseudocode: 10076050_GameObject_GetPhysicsComponent.c
Window: [0x10076050, 0x10076070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10076070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10076050: 8b 4c 24 04 85 c9 74 0c a1 08 d8 c8 10 50 e8 3d
10076060: 0d 6b 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10076050 <.text+0x75050>:
10076050:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10076054:	85 c9                                           	test   ecx,ecx
10076056:	74 0c                                           	je     0x10076064
10076058:	a1 08 d8 c8 10                                  	mov    eax,ds:0x10c8d808
1007605d:	50                                              	push   eax
1007605e:	e8 3d 0d 6b 00                                  	call   0x10726da0
10076063:	c3                                              	ret
10076064:	33 c0                                           	xor    eax,eax
10076066:	c3                                              	ret
10076067:	cc                                              	int3
10076068:	cc                                              	int3
10076069:	cc                                              	int3
1007606a:	cc                                              	int3
1007606b:	cc                                              	int3
1007606c:	cc                                              	int3
1007606d:	cc                                              	int3
1007606e:	cc                                              	int3
1007606f:	cc                                              	int3
