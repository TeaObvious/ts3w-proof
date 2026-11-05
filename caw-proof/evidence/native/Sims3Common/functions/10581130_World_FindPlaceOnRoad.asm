# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581130 (World_FindPlaceOnRoad)
Paired Ghidra pseudocode: 10581130_World_FindPlaceOnRoad.c
Window: [0x10581130, 0x10581160) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581130: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10581140: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 9d
10581150: c5 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581130 <.text+0x580130>:
10581130:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10581134:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10581138:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058113c:	50                                              	push   eax
1058113d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10581141:	51                                              	push   ecx
10581142:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10581146:	52                                              	push   edx
10581147:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058114b:	50                                              	push   eax
1058114c:	51                                              	push   ecx
1058114d:	52                                              	push   edx
1058114e:	e8 9d c5 ff ff                                  	call   0x1057d6f0
10581153:	83 c4 18                                        	add    esp,0x18
10581156:	c3                                              	ret
10581157:	cc                                              	int3
10581158:	cc                                              	int3
10581159:	cc                                              	int3
1058115a:	cc                                              	int3
1058115b:	cc                                              	int3
1058115c:	cc                                              	int3
1058115d:	cc                                              	int3
1058115e:	cc                                              	int3
1058115f:	cc                                              	int3
