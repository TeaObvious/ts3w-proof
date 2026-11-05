# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105890f0 (World_GetLotName)
Paired Ghidra pseudocode: 105890F0_World_GetLotName.c
Window: [0x105890f0, 0x10589110) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105890f0: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 f3 ff ff 83
10589100: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105890f0 <.text+0x5880f0>:
105890f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105890f4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105890f8:	50                                              	push   eax
105890f9:	51                                              	push   ecx
105890fa:	e8 51 f3 ff ff                                  	call   0x10588450
105890ff:	83 c4 08                                        	add    esp,0x8
10589102:	c3                                              	ret
10589103:	cc                                              	int3
10589104:	cc                                              	int3
10589105:	cc                                              	int3
10589106:	cc                                              	int3
10589107:	cc                                              	int3
10589108:	cc                                              	int3
10589109:	cc                                              	int3
1058910a:	cc                                              	int3
1058910b:	cc                                              	int3
1058910c:	cc                                              	int3
1058910d:	cc                                              	int3
1058910e:	cc                                              	int3
1058910f:	cc                                              	int3
