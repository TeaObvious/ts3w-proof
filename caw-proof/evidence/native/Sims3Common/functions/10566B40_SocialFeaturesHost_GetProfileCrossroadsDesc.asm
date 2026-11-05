# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566b40 (SocialFeaturesHost_GetProfileCrossroadsDesc)
Paired Ghidra pseudocode: 10566B40_SocialFeaturesHost_GetProfileCrossroadsDesc.c
Window: [0x10566b40, 0x10566b60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566b40: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 e3 ff ff 83
10566b50: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566b40 <.text+0x565b40>:
10566b40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566b44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10566b48:	50                                              	push   eax
10566b49:	51                                              	push   ecx
10566b4a:	e8 91 e3 ff ff                                  	call   0x10564ee0
10566b4f:	83 c4 08                                        	add    esp,0x8
10566b52:	c3                                              	ret
10566b53:	cc                                              	int3
10566b54:	cc                                              	int3
10566b55:	cc                                              	int3
10566b56:	cc                                              	int3
10566b57:	cc                                              	int3
10566b58:	cc                                              	int3
10566b59:	cc                                              	int3
10566b5a:	cc                                              	int3
10566b5b:	cc                                              	int3
10566b5c:	cc                                              	int3
10566b5d:	cc                                              	int3
10566b5e:	cc                                              	int3
10566b5f:	cc                                              	int3
