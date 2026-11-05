# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536970 (Objects_DoPostReachingValidSpatialConfiguration)
Paired Ghidra pseudocode: 10536970_Objects_DoPostReachingValidSpatialConfiguration.c
Window: [0x10536970, 0x105369b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105369b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536970: e8 2b 38 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536980: c8 e8 2a 42 1f 00 85 c0 74 19 8b 0d 08 04 c7 10
10536990: 51 8b c8 e8 08 04 1f 00 85 c0 74 07 8b c8 e9 7d
105369a0: 96 d2 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536970 <.text+0x535970>:
10536970:	e8 2b 38 1f 00                                  	call   0x1072a1a0
10536975:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536979:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053697d:	51                                              	push   ecx
1053697e:	52                                              	push   edx
1053697f:	8b c8                                           	mov    ecx,eax
10536981:	e8 2a 42 1f 00                                  	call   0x1072abb0
10536986:	85 c0                                           	test   eax,eax
10536988:	74 19                                           	je     0x105369a3
1053698a:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536990:	51                                              	push   ecx
10536991:	8b c8                                           	mov    ecx,eax
10536993:	e8 08 04 1f 00                                  	call   0x10726da0
10536998:	85 c0                                           	test   eax,eax
1053699a:	74 07                                           	je     0x105369a3
1053699c:	8b c8                                           	mov    ecx,eax
1053699e:	e9 7d 96 d2 ff                                  	jmp    0x10260020
105369a3:	c3                                              	ret
105369a4:	cc                                              	int3
105369a5:	cc                                              	int3
105369a6:	cc                                              	int3
105369a7:	cc                                              	int3
105369a8:	cc                                              	int3
105369a9:	cc                                              	int3
105369aa:	cc                                              	int3
105369ab:	cc                                              	int3
105369ac:	cc                                              	int3
105369ad:	cc                                              	int3
105369ae:	cc                                              	int3
105369af:	cc                                              	int3
