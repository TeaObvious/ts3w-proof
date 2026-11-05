# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562b10 (SocialFeaturesHost_GetPassportIdFromPost)
Paired Ghidra pseudocode: 10562B10_SocialFeaturesHost_GetPassportIdFromPost.c
Window: [0x10562b10, 0x10562b30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562b10: 8b 44 24 08 8b 4c 24 04 50 51 e8 b1 d5 2a 00 83
10562b20: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562b10 <.text+0x561b10>:
10562b10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562b14:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562b18:	50                                              	push   eax
10562b19:	51                                              	push   ecx
10562b1a:	e8 b1 d5 2a 00                                  	call   0x108100d0
10562b1f:	83 c4 08                                        	add    esp,0x8
10562b22:	c3                                              	ret
10562b23:	cc                                              	int3
10562b24:	cc                                              	int3
10562b25:	cc                                              	int3
10562b26:	cc                                              	int3
10562b27:	cc                                              	int3
10562b28:	cc                                              	int3
10562b29:	cc                                              	int3
10562b2a:	cc                                              	int3
10562b2b:	cc                                              	int3
10562b2c:	cc                                              	int3
10562b2d:	cc                                              	int3
10562b2e:	cc                                              	int3
10562b2f:	cc                                              	int3
