# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f3a0 (CacheManager_ReadCachedData)
Paired Ghidra pseudocode: 1052F3A0_CacheManager_ReadCachedData.c
Window: [0x1052f3a0, 0x1052f3c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f3c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f3a0: 8b 0d c0 86 c7 10 85 c9 75 03 32 c0 c3 8b 44 24
1052f3b0: 08 8b 54 24 04 50 52 e8 74 fa ff ff c3 cc cc cc

LINEAR DISASSEMBLY
1052f3a0 <.text+0x52e3a0>:
1052f3a0:	8b 0d c0 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786c0
1052f3a6:	85 c9                                           	test   ecx,ecx
1052f3a8:	75 03                                           	jne    0x1052f3ad
1052f3aa:	32 c0                                           	xor    al,al
1052f3ac:	c3                                              	ret
1052f3ad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1052f3b1:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052f3b5:	50                                              	push   eax
1052f3b6:	52                                              	push   edx
1052f3b7:	e8 74 fa ff ff                                  	call   0x1052ee30
1052f3bc:	c3                                              	ret
1052f3bd:	cc                                              	int3
1052f3be:	cc                                              	int3
1052f3bf:	cc                                              	int3
