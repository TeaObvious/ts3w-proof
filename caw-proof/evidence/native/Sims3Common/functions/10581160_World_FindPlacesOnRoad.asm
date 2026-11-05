# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581160 (World_FindPlacesOnRoad)
Paired Ghidra pseudocode: 10581160_World_FindPlacesOnRoad.c
Window: [0x10581160, 0x105811a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105811a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581160: 8b 44 24 24 d9 44 24 1c 8b 4c 24 20 8b 54 24 18
10581170: 50 8b 44 24 18 51 51 8b 4c 24 1c d9 1c 24 52 8b
10581180: 54 24 1c 50 8b 44 24 1c 51 8b 4c 24 1c 52 50 51
10581190: e8 cb c6 ff ff 83 c4 24 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581160 <.text+0x580160>:
10581160:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10581164:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10581168:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1058116c:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10581170:	50                                              	push   eax
10581171:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10581175:	51                                              	push   ecx
10581176:	51                                              	push   ecx
10581177:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058117b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1058117e:	52                                              	push   edx
1058117f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10581183:	50                                              	push   eax
10581184:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10581188:	51                                              	push   ecx
10581189:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058118d:	52                                              	push   edx
1058118e:	50                                              	push   eax
1058118f:	51                                              	push   ecx
10581190:	e8 cb c6 ff ff                                  	call   0x1057d860
10581195:	83 c4 24                                        	add    esp,0x24
10581198:	c3                                              	ret
10581199:	cc                                              	int3
1058119a:	cc                                              	int3
1058119b:	cc                                              	int3
1058119c:	cc                                              	int3
1058119d:	cc                                              	int3
1058119e:	cc                                              	int3
1058119f:	cc                                              	int3
