# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566b60 (SocialFeaturesHost_GetLatestStatusUpdateText)
Paired Ghidra pseudocode: 10566B60_SocialFeaturesHost_GetLatestStatusUpdateText.c
Window: [0x10566b60, 0x10566b80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566b60: 8b 44 24 08 8b 4c 24 04 50 51 e8 41 e4 ff ff 83
10566b70: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566b60 <.text+0x565b60>:
10566b60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566b64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566b68:	50                                              	push   eax
10566b69:	51                                              	push   ecx
10566b6a:	e8 41 e4 ff ff                                  	call   0x10564fb0
10566b6f:	83 c4 08                                        	add    esp,0x8
10566b72:	c3                                              	ret
10566b73:	cc                                              	int3
10566b74:	cc                                              	int3
10566b75:	cc                                              	int3
10566b76:	cc                                              	int3
10566b77:	cc                                              	int3
10566b78:	cc                                              	int3
10566b79:	cc                                              	int3
10566b7a:	cc                                              	int3
10566b7b:	cc                                              	int3
10566b7c:	cc                                              	int3
10566b7d:	cc                                              	int3
10566b7e:	cc                                              	int3
10566b7f:	cc                                              	int3
