# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f400 (CacheManager_WriteCachedDataFromStream)
Paired Ghidra pseudocode: 1052F400_CacheManager_WriteCachedDataFromStream.c
Window: [0x1052f400, 0x1052f420) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f400: 8b 0d c0 86 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
1052f410: 24 04 50 52 e8 77 fd ff ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f400 <.text+0x52e400>:
1052f400:	8b 0d c0 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786c0
1052f406:	85 c9                                           	test   ecx,ecx
1052f408:	74 0f                                           	je     0x1052f419
1052f40a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1052f40e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052f412:	50                                              	push   eax
1052f413:	52                                              	push   edx
1052f414:	e8 77 fd ff ff                                  	call   0x1052f190
1052f419:	c3                                              	ret
1052f41a:	cc                                              	int3
1052f41b:	cc                                              	int3
1052f41c:	cc                                              	int3
1052f41d:	cc                                              	int3
1052f41e:	cc                                              	int3
1052f41f:	cc                                              	int3
