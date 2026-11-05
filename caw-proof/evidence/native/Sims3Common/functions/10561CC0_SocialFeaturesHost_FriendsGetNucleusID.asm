# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561cc0 (SocialFeaturesHost_FriendsGetNucleusID)
Paired Ghidra pseudocode: 10561CC0_SocialFeaturesHost_FriendsGetNucleusID.c
Window: [0x10561cc0, 0x10561ce0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561cc0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10561cd0: 08 51 52 50 e8 37 ba 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10561cc0 <.text+0x560cc0>:
10561cc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561cc4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561cc8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10561ccc:	50                                              	push   eax
10561ccd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561cd1:	51                                              	push   ecx
10561cd2:	52                                              	push   edx
10561cd3:	50                                              	push   eax
10561cd4:	e8 37 ba 2a 00                                  	call   0x1080d710
10561cd9:	83 c4 10                                        	add    esp,0x10
10561cdc:	c3                                              	ret
10561cdd:	cc                                              	int3
10561cde:	cc                                              	int3
10561cdf:	cc                                              	int3
