# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562a70 (SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid)
Paired Ghidra pseudocode: 10562A70_SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid.c
Window: [0x10562a70, 0x10562a90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562a70: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 d5 2a 00 83
10562a80: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562a70 <.text+0x561a70>:
10562a70:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562a74:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562a78:	50                                              	push   eax
10562a79:	51                                              	push   ecx
10562a7a:	e8 11 d5 2a 00                                  	call   0x1080ff90
10562a7f:	83 c4 08                                        	add    esp,0x8
10562a82:	c3                                              	ret
10562a83:	cc                                              	int3
10562a84:	cc                                              	int3
10562a85:	cc                                              	int3
10562a86:	cc                                              	int3
10562a87:	cc                                              	int3
10562a88:	cc                                              	int3
10562a89:	cc                                              	int3
10562a8a:	cc                                              	int3
10562a8b:	cc                                              	int3
10562a8c:	cc                                              	int3
10562a8d:	cc                                              	int3
10562a8e:	cc                                              	int3
10562a8f:	cc                                              	int3
