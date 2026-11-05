# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10582280 (World_SetGameObjTuningDataImpl)
Paired Ghidra pseudocode: 10582280_World_SetGameObjTuningDataImpl.c
Window: [0x10582280, 0x105822a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105822a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10582280: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10582290: dc e0 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10582280 <.text+0x581280>:
10582280:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10582284:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10582288:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058228c:	50                                              	push   eax
1058228d:	51                                              	push   ecx
1058228e:	52                                              	push   edx
1058228f:	e8 dc e0 ff ff                                  	call   0x10580370
10582294:	83 c4 0c                                        	add    esp,0xc
10582297:	c3                                              	ret
10582298:	cc                                              	int3
10582299:	cc                                              	int3
1058229a:	cc                                              	int3
1058229b:	cc                                              	int3
1058229c:	cc                                              	int3
1058229d:	cc                                              	int3
1058229e:	cc                                              	int3
1058229f:	cc                                              	int3
