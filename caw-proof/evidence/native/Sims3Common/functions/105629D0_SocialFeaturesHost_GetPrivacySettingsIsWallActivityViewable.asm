# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105629d0 (SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable)
Paired Ghidra pseudocode: 105629D0_SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable.c
Window: [0x105629d0, 0x105629f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105629f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105629d0: 8b 44 24 08 8b 4c 24 04 50 51 e8 81 d4 2a 00 83
105629e0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105629d0 <.text+0x5619d0>:
105629d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105629d4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105629d8:	50                                              	push   eax
105629d9:	51                                              	push   ecx
105629da:	e8 81 d4 2a 00                                  	call   0x1080fe60
105629df:	83 c4 08                                        	add    esp,0x8
105629e2:	c3                                              	ret
105629e3:	cc                                              	int3
105629e4:	cc                                              	int3
105629e5:	cc                                              	int3
105629e6:	cc                                              	int3
105629e7:	cc                                              	int3
105629e8:	cc                                              	int3
105629e9:	cc                                              	int3
105629ea:	cc                                              	int3
105629eb:	cc                                              	int3
105629ec:	cc                                              	int3
105629ed:	cc                                              	int3
105629ee:	cc                                              	int3
105629ef:	cc                                              	int3
