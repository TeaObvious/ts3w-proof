# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105821f0 (World_GetLotMainEntranceLocationImpl)
Paired Ghidra pseudocode: 105821F0_World_GetLotMainEntranceLocationImpl.c
Window: [0x105821f0, 0x10582210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105821f0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10582200: dc e2 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105821f0 <.text+0x5811f0>:
105821f0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105821f4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105821f8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105821fc:	50                                              	push   eax
105821fd:	51                                              	push   ecx
105821fe:	52                                              	push   edx
105821ff:	e8 dc e2 ff ff                                  	call   0x105804e0
10582204:	83 c4 0c                                        	add    esp,0xc
10582207:	c3                                              	ret
10582208:	cc                                              	int3
10582209:	cc                                              	int3
1058220a:	cc                                              	int3
1058220b:	cc                                              	int3
1058220c:	cc                                              	int3
1058220d:	cc                                              	int3
1058220e:	cc                                              	int3
1058220f:	cc                                              	int3
