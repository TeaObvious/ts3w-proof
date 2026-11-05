# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562360 (SocialFeaturesHost_PostToSocial)
Paired Ghidra pseudocode: 10562360_SocialFeaturesHost_PostToSocial.c
Window: [0x10562360, 0x10562380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562360: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10562370: 9c c3 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562360 <.text+0x561360>:
10562360:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562364:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10562368:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1056236c:	50                                              	push   eax
1056236d:	51                                              	push   ecx
1056236e:	52                                              	push   edx
1056236f:	e8 9c c3 2a 00                                  	call   0x1080e710
10562374:	83 c4 0c                                        	add    esp,0xc
10562377:	c3                                              	ret
10562378:	cc                                              	int3
10562379:	cc                                              	int3
1056237a:	cc                                              	int3
1056237b:	cc                                              	int3
1056237c:	cc                                              	int3
1056237d:	cc                                              	int3
1056237e:	cc                                              	int3
1056237f:	cc                                              	int3
