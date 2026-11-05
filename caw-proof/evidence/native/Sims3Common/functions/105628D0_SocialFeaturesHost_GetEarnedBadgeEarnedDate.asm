# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105628d0 (SocialFeaturesHost_GetEarnedBadgeEarnedDate)
Paired Ghidra pseudocode: 105628D0_SocialFeaturesHost_GetEarnedBadgeEarnedDate.c
Window: [0x105628d0, 0x105628f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105628f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105628d0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105628e0: 0c d4 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105628d0 <.text+0x5618d0>:
105628d0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105628d4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105628d8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105628dc:	50                                              	push   eax
105628dd:	51                                              	push   ecx
105628de:	52                                              	push   edx
105628df:	e8 0c d4 2a 00                                  	call   0x1080fcf0
105628e4:	83 c4 0c                                        	add    esp,0xc
105628e7:	c3                                              	ret
105628e8:	cc                                              	int3
105628e9:	cc                                              	int3
105628ea:	cc                                              	int3
105628eb:	cc                                              	int3
105628ec:	cc                                              	int3
105628ed:	cc                                              	int3
105628ee:	cc                                              	int3
105628ef:	cc                                              	int3
