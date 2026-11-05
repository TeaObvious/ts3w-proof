# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105629b0 (SocialFeaturesHost_GetPrivacySettingsIsProfileViewable)
Paired Ghidra pseudocode: 105629B0_SocialFeaturesHost_GetPrivacySettingsIsProfileViewable.c
Window: [0x105629b0, 0x105629d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105629d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105629b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 d4 2a 00 83
105629c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105629b0 <.text+0x5619b0>:
105629b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105629b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105629b8:	50                                              	push   eax
105629b9:	51                                              	push   ecx
105629ba:	e8 61 d4 2a 00                                  	call   0x1080fe20
105629bf:	83 c4 08                                        	add    esp,0x8
105629c2:	c3                                              	ret
105629c3:	cc                                              	int3
105629c4:	cc                                              	int3
105629c5:	cc                                              	int3
105629c6:	cc                                              	int3
105629c7:	cc                                              	int3
105629c8:	cc                                              	int3
105629c9:	cc                                              	int3
105629ca:	cc                                              	int3
105629cb:	cc                                              	int3
105629cc:	cc                                              	int3
105629cd:	cc                                              	int3
105629ce:	cc                                              	int3
105629cf:	cc                                              	int3
