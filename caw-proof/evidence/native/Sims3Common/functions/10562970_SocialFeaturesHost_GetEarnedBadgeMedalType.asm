# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562970 (SocialFeaturesHost_GetEarnedBadgeMedalType)
Paired Ghidra pseudocode: 10562970_SocialFeaturesHost_GetEarnedBadgeMedalType.c
Window: [0x10562970, 0x10562990) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562970: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10562980: bc d3 2a 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562970 <.text+0x561970>:
10562970:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562974:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10562978:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1056297c:	50                                              	push   eax
1056297d:	51                                              	push   ecx
1056297e:	52                                              	push   edx
1056297f:	e8 bc d3 2a 00                                  	call   0x1080fd40
10562984:	83 c4 0c                                        	add    esp,0xc
10562987:	c3                                              	ret
10562988:	cc                                              	int3
10562989:	cc                                              	int3
1056298a:	cc                                              	int3
1056298b:	cc                                              	int3
1056298c:	cc                                              	int3
1056298d:	cc                                              	int3
1056298e:	cc                                              	int3
1056298f:	cc                                              	int3
