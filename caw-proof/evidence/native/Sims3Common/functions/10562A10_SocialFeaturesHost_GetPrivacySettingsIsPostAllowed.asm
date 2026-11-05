# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562a10 (SocialFeaturesHost_GetPrivacySettingsIsPostAllowed)
Paired Ghidra pseudocode: 10562A10_SocialFeaturesHost_GetPrivacySettingsIsPostAllowed.c
Window: [0x10562a10, 0x10562a30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562a10: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 d4 2a 00 83
10562a20: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562a10 <.text+0x561a10>:
10562a10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562a14:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562a18:	50                                              	push   eax
10562a19:	51                                              	push   ecx
10562a1a:	e8 c1 d4 2a 00                                  	call   0x1080fee0
10562a1f:	83 c4 08                                        	add    esp,0x8
10562a22:	c3                                              	ret
10562a23:	cc                                              	int3
10562a24:	cc                                              	int3
10562a25:	cc                                              	int3
10562a26:	cc                                              	int3
10562a27:	cc                                              	int3
10562a28:	cc                                              	int3
10562a29:	cc                                              	int3
10562a2a:	cc                                              	int3
10562a2b:	cc                                              	int3
10562a2c:	cc                                              	int3
10562a2d:	cc                                              	int3
10562a2e:	cc                                              	int3
10562a2f:	cc                                              	int3
