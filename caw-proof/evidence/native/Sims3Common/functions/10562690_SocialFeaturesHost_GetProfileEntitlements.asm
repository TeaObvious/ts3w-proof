# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562690 (SocialFeaturesHost_GetProfileEntitlements)
Paired Ghidra pseudocode: 10562690_SocialFeaturesHost_GetProfileEntitlements.c
Window: [0x10562690, 0x105626b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105626b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562690: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 ca 2a 00 83
105626a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562690 <.text+0x561690>:
10562690:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562694:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562698:	50                                              	push   eax
10562699:	51                                              	push   ecx
1056269a:	e8 11 ca 2a 00                                  	call   0x1080f0b0
1056269f:	83 c4 08                                        	add    esp,0x8
105626a2:	c3                                              	ret
105626a3:	cc                                              	int3
105626a4:	cc                                              	int3
105626a5:	cc                                              	int3
105626a6:	cc                                              	int3
105626a7:	cc                                              	int3
105626a8:	cc                                              	int3
105626a9:	cc                                              	int3
105626aa:	cc                                              	int3
105626ab:	cc                                              	int3
105626ac:	cc                                              	int3
105626ad:	cc                                              	int3
105626ae:	cc                                              	int3
105626af:	cc                                              	int3
