# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562500 (SocialFeaturesHost_GetSystemWallPostNucleusID)
Paired Ghidra pseudocode: 10562500_SocialFeaturesHost_GetSystemWallPostNucleusID.c
Window: [0x10562500, 0x10562520) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562500: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562510: 08 51 52 50 e8 e7 c6 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562500 <.text+0x561500>:
10562500:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562504:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562508:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056250c:	50                                              	push   eax
1056250d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562511:	51                                              	push   ecx
10562512:	52                                              	push   edx
10562513:	50                                              	push   eax
10562514:	e8 e7 c6 2a 00                                  	call   0x1080ec00
10562519:	83 c4 10                                        	add    esp,0x10
1056251c:	c3                                              	ret
1056251d:	cc                                              	int3
1056251e:	cc                                              	int3
1056251f:	cc                                              	int3
