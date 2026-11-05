# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562770 (SocialFeaturesHost_GetNumberOfProfileBadges)
Paired Ghidra pseudocode: 10562770_SocialFeaturesHost_GetNumberOfProfileBadges.c
Window: [0x10562770, 0x10562790) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562770: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 ca 2a 00 83
10562780: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562770 <.text+0x561770>:
10562770:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562774:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562778:	50                                              	push   eax
10562779:	51                                              	push   ecx
1056277a:	e8 f1 ca 2a 00                                  	call   0x1080f270
1056277f:	83 c4 08                                        	add    esp,0x8
10562782:	c3                                              	ret
10562783:	cc                                              	int3
10562784:	cc                                              	int3
10562785:	cc                                              	int3
10562786:	cc                                              	int3
10562787:	cc                                              	int3
10562788:	cc                                              	int3
10562789:	cc                                              	int3
1056278a:	cc                                              	int3
1056278b:	cc                                              	int3
1056278c:	cc                                              	int3
1056278d:	cc                                              	int3
1056278e:	cc                                              	int3
1056278f:	cc                                              	int3
