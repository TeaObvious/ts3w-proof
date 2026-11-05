# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562c20 (SocialFeaturesHost_RejectPassportInvite)
Paired Ghidra pseudocode: 10562C20_SocialFeaturesHost_RejectPassportInvite.c
Window: [0x10562c20, 0x10562c40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562c20: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 d7 2a 00 83
10562c30: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562c20 <.text+0x561c20>:
10562c20:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562c24:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562c28:	50                                              	push   eax
10562c29:	51                                              	push   ecx
10562c2a:	e8 21 d7 2a 00                                  	call   0x10810350
10562c2f:	83 c4 08                                        	add    esp,0x8
10562c32:	c3                                              	ret
10562c33:	cc                                              	int3
10562c34:	cc                                              	int3
10562c35:	cc                                              	int3
10562c36:	cc                                              	int3
10562c37:	cc                                              	int3
10562c38:	cc                                              	int3
10562c39:	cc                                              	int3
10562c3a:	cc                                              	int3
10562c3b:	cc                                              	int3
10562c3c:	cc                                              	int3
10562c3d:	cc                                              	int3
10562c3e:	cc                                              	int3
10562c3f:	cc                                              	int3
