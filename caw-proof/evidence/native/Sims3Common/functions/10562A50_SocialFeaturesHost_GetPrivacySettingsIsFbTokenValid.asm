# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562a50 (SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid)
Paired Ghidra pseudocode: 10562A50_SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid.c
Window: [0x10562a50, 0x10562a70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562a50: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 d5 2a 00 83
10562a60: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562a50 <.text+0x561a50>:
10562a50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562a54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562a58:	50                                              	push   eax
10562a59:	51                                              	push   ecx
10562a5a:	e8 01 d5 2a 00                                  	call   0x1080ff60
10562a5f:	83 c4 08                                        	add    esp,0x8
10562a62:	c3                                              	ret
10562a63:	cc                                              	int3
10562a64:	cc                                              	int3
10562a65:	cc                                              	int3
10562a66:	cc                                              	int3
10562a67:	cc                                              	int3
10562a68:	cc                                              	int3
10562a69:	cc                                              	int3
10562a6a:	cc                                              	int3
10562a6b:	cc                                              	int3
10562a6c:	cc                                              	int3
10562a6d:	cc                                              	int3
10562a6e:	cc                                              	int3
10562a6f:	cc                                              	int3
