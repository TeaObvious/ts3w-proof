# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581230 (World_IsSimNearShoreline)
Paired Ghidra pseudocode: 10581230_World_IsSimNearShoreline.c
Window: [0x10581230, 0x10581250) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581230: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10581240: ec d4 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581230 <.text+0x580230>:
10581230:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10581234:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10581238:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058123c:	50                                              	push   eax
1058123d:	51                                              	push   ecx
1058123e:	52                                              	push   edx
1058123f:	e8 ec d4 ff ff                                  	call   0x1057e730
10581244:	83 c4 0c                                        	add    esp,0xc
10581247:	c3                                              	ret
10581248:	cc                                              	int3
10581249:	cc                                              	int3
1058124a:	cc                                              	int3
1058124b:	cc                                              	int3
1058124c:	cc                                              	int3
1058124d:	cc                                              	int3
1058124e:	cc                                              	int3
1058124f:	cc                                              	int3
