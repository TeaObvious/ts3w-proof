# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562890 (SocialFeaturesHost_GetNumberOfEarnedBadges)
Paired Ghidra pseudocode: 10562890_SocialFeaturesHost_GetNumberOfEarnedBadges.c
Window: [0x10562890, 0x105628b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105628b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562890: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 d2 2a 00 83
105628a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562890 <.text+0x561890>:
10562890:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562894:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10562898:	50                                              	push   eax
10562899:	51                                              	push   ecx
1056289a:	e8 01 d2 2a 00                                  	call   0x1080faa0
1056289f:	83 c4 08                                        	add    esp,0x8
105628a2:	c3                                              	ret
105628a3:	cc                                              	int3
105628a4:	cc                                              	int3
105628a5:	cc                                              	int3
105628a6:	cc                                              	int3
105628a7:	cc                                              	int3
105628a8:	cc                                              	int3
105628a9:	cc                                              	int3
105628aa:	cc                                              	int3
105628ab:	cc                                              	int3
105628ac:	cc                                              	int3
105628ad:	cc                                              	int3
105628ae:	cc                                              	int3
105628af:	cc                                              	int3
