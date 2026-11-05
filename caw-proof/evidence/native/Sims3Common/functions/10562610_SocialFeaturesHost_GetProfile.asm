# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562610 (SocialFeaturesHost_GetProfile)
Paired Ghidra pseudocode: 10562610_SocialFeaturesHost_GetProfile.c
Window: [0x10562610, 0x10562630) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562610: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10562620: 08 51 52 50 e8 a7 c8 2a 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10562610 <.text+0x561610>:
10562610:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10562614:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562618:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056261c:	50                                              	push   eax
1056261d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562621:	51                                              	push   ecx
10562622:	52                                              	push   edx
10562623:	50                                              	push   eax
10562624:	e8 a7 c8 2a 00                                  	call   0x1080eed0
10562629:	83 c4 10                                        	add    esp,0x10
1056262c:	c3                                              	ret
1056262d:	cc                                              	int3
1056262e:	cc                                              	int3
1056262f:	cc                                              	int3
