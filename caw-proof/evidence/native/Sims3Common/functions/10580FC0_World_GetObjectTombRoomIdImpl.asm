# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580fc0 (World_GetObjectTombRoomIdImpl)
Paired Ghidra pseudocode: 10580FC0_World_GetObjectTombRoomIdImpl.c
Window: [0x10580fc0, 0x10580fe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580fc0: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 bf ff ff 83
10580fd0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580fc0 <.text+0x57ffc0>:
10580fc0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580fc4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580fc8:	50                                              	push   eax
10580fc9:	51                                              	push   ecx
10580fca:	e8 f1 bf ff ff                                  	call   0x1057cfc0
10580fcf:	83 c4 08                                        	add    esp,0x8
10580fd2:	c3                                              	ret
10580fd3:	cc                                              	int3
10580fd4:	cc                                              	int3
10580fd5:	cc                                              	int3
10580fd6:	cc                                              	int3
10580fd7:	cc                                              	int3
10580fd8:	cc                                              	int3
10580fd9:	cc                                              	int3
10580fda:	cc                                              	int3
10580fdb:	cc                                              	int3
10580fdc:	cc                                              	int3
10580fdd:	cc                                              	int3
10580fde:	cc                                              	int3
10580fdf:	cc                                              	int3
