# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105628b0 (SocialFeaturesHost_GetTotalNumberOfEarnedBadges)
Paired Ghidra pseudocode: 105628B0_SocialFeaturesHost_GetTotalNumberOfEarnedBadges.c
Window: [0x105628b0, 0x105628d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105628d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105628b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 d2 2a 00 83
105628c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105628b0 <.text+0x5618b0>:
105628b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105628b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105628b8:	50                                              	push   eax
105628b9:	51                                              	push   ecx
105628ba:	e8 21 d2 2a 00                                  	call   0x1080fae0
105628bf:	83 c4 08                                        	add    esp,0x8
105628c2:	c3                                              	ret
105628c3:	cc                                              	int3
105628c4:	cc                                              	int3
105628c5:	cc                                              	int3
105628c6:	cc                                              	int3
105628c7:	cc                                              	int3
105628c8:	cc                                              	int3
105628c9:	cc                                              	int3
105628ca:	cc                                              	int3
105628cb:	cc                                              	int3
105628cc:	cc                                              	int3
105628cd:	cc                                              	int3
105628ce:	cc                                              	int3
105628cf:	cc                                              	int3
