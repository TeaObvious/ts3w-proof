# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10a3c330 (CASPartLODAsset_GetSorting)
Paired Ghidra pseudocode: 10A3C330_CASPartLODAsset_GetSorting.c
Window: [0x10a3c330, 0x10a3c350) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10a3c350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10a3c330: 8b 44 24 04 8b 00 c3 cc cc cc cc cc cc cc cc cc
10a3c340: 8b 44 24 04 83 40 64 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10a3c330 <.text+0xa3b330>:
10a3c330:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10a3c334:	8b 00                                           	mov    eax,DWORD PTR [eax]
10a3c336:	c3                                              	ret
10a3c337:	cc                                              	int3
10a3c338:	cc                                              	int3
10a3c339:	cc                                              	int3
10a3c33a:	cc                                              	int3
10a3c33b:	cc                                              	int3
10a3c33c:	cc                                              	int3
10a3c33d:	cc                                              	int3
10a3c33e:	cc                                              	int3
10a3c33f:	cc                                              	int3
10a3c340:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10a3c344:	83 40 64 ff                                     	add    DWORD PTR [eax+0x64],0xffffffff
10a3c348:	c3                                              	ret
10a3c349:	cc                                              	int3
10a3c34a:	cc                                              	int3
10a3c34b:	cc                                              	int3
10a3c34c:	cc                                              	int3
10a3c34d:	cc                                              	int3
10a3c34e:	cc                                              	int3
10a3c34f:	cc                                              	int3
