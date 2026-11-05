# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105624e0 (SocialFeaturesHost_GetSystemWallPostXroadsID)
Paired Ghidra pseudocode: 105624E0_SocialFeaturesHost_GetSystemWallPostXroadsID.c
Window: [0x105624e0, 0x10562500) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105624e0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105624f0: cc c6 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105624e0 <.text+0x5614e0>:
105624e0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105624e4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105624e8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105624ec:	50                                              	push   eax
105624ed:	51                                              	push   ecx
105624ee:	52                                              	push   edx
105624ef:	e8 cc c6 2a 00                                  	call   0x1080ebc0
105624f4:	83 c4 0c                                        	add    esp,0xc
105624f7:	c3                                              	ret
105624f8:	cc                                              	int3
105624f9:	cc                                              	int3
105624fa:	cc                                              	int3
105624fb:	cc                                              	int3
105624fc:	cc                                              	int3
105624fd:	cc                                              	int3
105624fe:	cc                                              	int3
105624ff:	cc                                              	int3
