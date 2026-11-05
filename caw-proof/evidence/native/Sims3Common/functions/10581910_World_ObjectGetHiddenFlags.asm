# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581910 (World_ObjectGetHiddenFlags)
Paired Ghidra pseudocode: 10581910_World_ObjectGetHiddenFlags.c
Window: [0x10581910, 0x10581930) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581910: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 de ff ff 83
10581920: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581910 <.text+0x580910>:
10581910:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581914:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10581918:	50                                              	push   eax
10581919:	51                                              	push   ecx
1058191a:	e8 11 de ff ff                                  	call   0x1057f730
1058191f:	83 c4 08                                        	add    esp,0x8
10581922:	c3                                              	ret
10581923:	cc                                              	int3
10581924:	cc                                              	int3
10581925:	cc                                              	int3
10581926:	cc                                              	int3
10581927:	cc                                              	int3
10581928:	cc                                              	int3
10581929:	cc                                              	int3
1058192a:	cc                                              	int3
1058192b:	cc                                              	int3
1058192c:	cc                                              	int3
1058192d:	cc                                              	int3
1058192e:	cc                                              	int3
1058192f:	cc                                              	int3
