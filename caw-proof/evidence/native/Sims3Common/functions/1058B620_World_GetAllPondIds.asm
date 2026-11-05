# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b620 (World_GetAllPondIds)
Paired Ghidra pseudocode: 1058B620_World_GetAllPondIds.c
Window: [0x1058b620, 0x1058b640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b620: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1058b630: 0c f3 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058b620 <.text+0x58a620>:
1058b620:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1058b624:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1058b628:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058b62c:	50                                              	push   eax
1058b62d:	51                                              	push   ecx
1058b62e:	52                                              	push   edx
1058b62f:	e8 0c f3 ff ff                                  	call   0x1058a940
1058b634:	83 c4 0c                                        	add    esp,0xc
1058b637:	c3                                              	ret
1058b638:	cc                                              	int3
1058b639:	cc                                              	int3
1058b63a:	cc                                              	int3
1058b63b:	cc                                              	int3
1058b63c:	cc                                              	int3
1058b63d:	cc                                              	int3
1058b63e:	cc                                              	int3
1058b63f:	cc                                              	int3
