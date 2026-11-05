# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555080 (Route_AddObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 10555080_Route_AddObjectToIgnoreForRoute.c
Window: [0x10555080, 0x105550a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105550a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555080: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10555090: 3c f2 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555080 <.text+0x554080>:
10555080:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10555084:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10555088:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1055508c:	50                                              	push   eax
1055508d:	51                                              	push   ecx
1055508e:	52                                              	push   edx
1055508f:	e8 3c f2 ff ff                                  	call   0x105542d0
10555094:	83 c4 0c                                        	add    esp,0xc
10555097:	c3                                              	ret
10555098:	cc                                              	int3
10555099:	cc                                              	int3
1055509a:	cc                                              	int3
1055509b:	cc                                              	int3
1055509c:	cc                                              	int3
1055509d:	cc                                              	int3
1055509e:	cc                                              	int3
1055509f:	cc                                              	int3
