# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f3e0 (CacheManager_WriteCachedData)
Paired Ghidra pseudocode: 1052F3E0_CacheManager_WriteCachedData.c
Window: [0x1052f3e0, 0x1052f400) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f3e0: 8b 0d c0 86 c7 10 85 c9 74 14 8b 44 24 0c 8b 54
1052f3f0: 24 08 50 8b 44 24 08 52 50 e8 82 fc ff ff c3 cc

LINEAR DISASSEMBLY
1052f3e0 <.text+0x52e3e0>:
1052f3e0:	8b 0d c0 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786c0
1052f3e6:	85 c9                                           	test   ecx,ecx
1052f3e8:	74 14                                           	je     0x1052f3fe
1052f3ea:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1052f3ee:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1052f3f2:	50                                              	push   eax
1052f3f3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1052f3f7:	52                                              	push   edx
1052f3f8:	50                                              	push   eax
1052f3f9:	e8 82 fc ff ff                                  	call   0x1052f080
1052f3fe:	c3                                              	ret
1052f3ff:	cc                                              	int3
