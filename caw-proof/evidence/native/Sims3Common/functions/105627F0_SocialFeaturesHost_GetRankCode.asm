# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105627f0 (SocialFeaturesHost_GetRankCode)
Paired Ghidra pseudocode: 105627F0_SocialFeaturesHost_GetRankCode.c
Window: [0x105627f0, 0x10562810) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105627f0: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 cd 2a 00 83
10562800: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105627f0 <.text+0x5617f0>:
105627f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105627f4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105627f8:	50                                              	push   eax
105627f9:	51                                              	push   ecx
105627fa:	e8 11 cd 2a 00                                  	call   0x1080f510
105627ff:	83 c4 08                                        	add    esp,0x8
10562802:	c3                                              	ret
10562803:	cc                                              	int3
10562804:	cc                                              	int3
10562805:	cc                                              	int3
10562806:	cc                                              	int3
10562807:	cc                                              	int3
10562808:	cc                                              	int3
10562809:	cc                                              	int3
1056280a:	cc                                              	int3
1056280b:	cc                                              	int3
1056280c:	cc                                              	int3
1056280d:	cc                                              	int3
1056280e:	cc                                              	int3
1056280f:	cc                                              	int3
