# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562a30 (SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed)
Paired Ghidra pseudocode: 10562A30_SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed.c
Window: [0x10562a30, 0x10562a50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562a30: 8b 44 24 08 8b 4c 24 04 50 51 e8 e1 d4 2a 00 83
10562a40: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562a30 <.text+0x561a30>:
10562a30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562a34:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562a38:	50                                              	push   eax
10562a39:	51                                              	push   ecx
10562a3a:	e8 e1 d4 2a 00                                  	call   0x1080ff20
10562a3f:	83 c4 08                                        	add    esp,0x8
10562a42:	c3                                              	ret
10562a43:	cc                                              	int3
10562a44:	cc                                              	int3
10562a45:	cc                                              	int3
10562a46:	cc                                              	int3
10562a47:	cc                                              	int3
10562a48:	cc                                              	int3
10562a49:	cc                                              	int3
10562a4a:	cc                                              	int3
10562a4b:	cc                                              	int3
10562a4c:	cc                                              	int3
10562a4d:	cc                                              	int3
10562a4e:	cc                                              	int3
10562a4f:	cc                                              	int3
