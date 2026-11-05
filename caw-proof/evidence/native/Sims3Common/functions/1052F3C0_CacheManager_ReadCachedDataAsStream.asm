# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f3c0 (CacheManager_ReadCachedDataAsStream)
Paired Ghidra pseudocode: 1052F3C0_CacheManager_ReadCachedDataAsStream.c
Window: [0x1052f3c0, 0x1052f3e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f3e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f3c0: 8b 0d c0 86 c7 10 85 c9 75 03 33 c0 c3 8b 44 24
1052f3d0: 04 50 e8 99 fb ff ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f3c0 <.text+0x52e3c0>:
1052f3c0:	8b 0d c0 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786c0
1052f3c6:	85 c9                                           	test   ecx,ecx
1052f3c8:	75 03                                           	jne    0x1052f3cd
1052f3ca:	33 c0                                           	xor    eax,eax
1052f3cc:	c3                                              	ret
1052f3cd:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1052f3d1:	50                                              	push   eax
1052f3d2:	e8 99 fb ff ff                                  	call   0x1052ef70
1052f3d7:	c3                                              	ret
1052f3d8:	cc                                              	int3
1052f3d9:	cc                                              	int3
1052f3da:	cc                                              	int3
1052f3db:	cc                                              	int3
1052f3dc:	cc                                              	int3
1052f3dd:	cc                                              	int3
1052f3de:	cc                                              	int3
1052f3df:	cc                                              	int3
