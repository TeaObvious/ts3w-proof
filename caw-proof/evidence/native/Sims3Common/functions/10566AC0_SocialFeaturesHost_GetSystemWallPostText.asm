# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ac0 (SocialFeaturesHost_GetSystemWallPostText)
Paired Ghidra pseudocode: 10566AC0_SocialFeaturesHost_GetSystemWallPostText.c
Window: [0x10566ac0, 0x10566ae0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ac0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566ad0: 08 51 52 50 e8 a7 e0 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566ac0 <.text+0x565ac0>:
10566ac0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566ac4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566ac8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566acc:	50                                              	push   eax
10566acd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566ad1:	51                                              	push   ecx
10566ad2:	52                                              	push   edx
10566ad3:	50                                              	push   eax
10566ad4:	e8 a7 e0 ff ff                                  	call   0x10564b80
10566ad9:	83 c4 10                                        	add    esp,0x10
10566adc:	c3                                              	ret
10566add:	cc                                              	int3
10566ade:	cc                                              	int3
10566adf:	cc                                              	int3
