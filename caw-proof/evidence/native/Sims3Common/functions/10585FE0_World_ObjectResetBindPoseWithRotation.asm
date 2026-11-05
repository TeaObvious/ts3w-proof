# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10585fe0 (World_ObjectResetBindPoseWithRotation)
Paired Ghidra pseudocode: 10585FE0_World_ObjectResetBindPoseWithRotation.c
Window: [0x10585fe0, 0x10586000) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10585fe0: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 f7 ff ff 83
10585ff0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10585fe0 <.text+0x584fe0>:
10585fe0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10585fe4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10585fe8:	50                                              	push   eax
10585fe9:	51                                              	push   ecx
10585fea:	e8 a1 f7 ff ff                                  	call   0x10585790
10585fef:	83 c4 08                                        	add    esp,0x8
10585ff2:	c3                                              	ret
10585ff3:	cc                                              	int3
10585ff4:	cc                                              	int3
10585ff5:	cc                                              	int3
10585ff6:	cc                                              	int3
10585ff7:	cc                                              	int3
10585ff8:	cc                                              	int3
10585ff9:	cc                                              	int3
10585ffa:	cc                                              	int3
10585ffb:	cc                                              	int3
10585ffc:	cc                                              	int3
10585ffd:	cc                                              	int3
10585ffe:	cc                                              	int3
10585fff:	cc                                              	int3
