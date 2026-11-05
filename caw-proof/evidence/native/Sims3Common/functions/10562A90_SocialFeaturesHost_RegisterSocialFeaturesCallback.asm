# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562a90 (SocialFeaturesHost_RegisterSocialFeaturesCallback)
Paired Ghidra pseudocode: 10562A90_SocialFeaturesHost_RegisterSocialFeaturesCallback.c
Window: [0x10562a90, 0x10562aa0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562a90: 8b 44 24 04 a3 9c b0 c7 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562a90 <.text+0x561a90>:
10562a90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10562a94:	a3 9c b0 c7 10                                  	mov    ds:0x10c7b09c,eax
10562a99:	c3                                              	ret
10562a9a:	cc                                              	int3
10562a9b:	cc                                              	int3
10562a9c:	cc                                              	int3
10562a9d:	cc                                              	int3
10562a9e:	cc                                              	int3
10562a9f:	cc                                              	int3
