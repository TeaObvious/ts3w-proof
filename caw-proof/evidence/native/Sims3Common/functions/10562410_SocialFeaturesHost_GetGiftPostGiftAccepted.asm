# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562410 (SocialFeaturesHost_GetGiftPostGiftAccepted)
Paired Ghidra pseudocode: 10562410_SocialFeaturesHost_GetGiftPostGiftAccepted.c
Window: [0x10562410, 0x10562430) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562410: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562420: 08 51 52 50 e8 07 c6 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562410 <.text+0x561410>:
10562410:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562414:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562418:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056241c:	50                                              	push   eax
1056241d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562421:	51                                              	push   ecx
10562422:	52                                              	push   edx
10562423:	50                                              	push   eax
10562424:	e8 07 c6 2a 00                                  	call   0x1080ea30
10562429:	83 c4 10                                        	add    esp,0x10
1056242c:	c3                                              	ret
1056242d:	cc                                              	int3
1056242e:	cc                                              	int3
1056242f:	cc                                              	int3
