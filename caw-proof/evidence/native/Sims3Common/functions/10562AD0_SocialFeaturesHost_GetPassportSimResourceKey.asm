# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562ad0 (SocialFeaturesHost_GetPassportSimResourceKey)
Paired Ghidra pseudocode: 10562AD0_SocialFeaturesHost_GetPassportSimResourceKey.c
Window: [0x10562ad0, 0x10562b00) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562ad0: 83 ec 10 8d 04 24 50 e8 74 d5 2a 00 8b 4c 24 18
10562ae0: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
10562af0: 89 51 08 89 41 0c 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
10562ad0 <.text+0x561ad0>:
10562ad0:	83 ec 10                                        	sub    esp,0x10
10562ad3:	8d 04 24                                        	lea    eax,[esp]
10562ad6:	50                                              	push   eax
10562ad7:	e8 74 d5 2a 00                                  	call   0x10810050
10562adc:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10562ae0:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562ae2:	89 11                                           	mov    DWORD PTR [ecx],edx
10562ae4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562ae7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10562aea:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562aed:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10562af0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562af3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562af6:	8b c1                                           	mov    eax,ecx
10562af8:	83 c4 14                                        	add    esp,0x14
10562afb:	c3                                              	ret
10562afc:	cc                                              	int3
10562afd:	cc                                              	int3
10562afe:	cc                                              	int3
10562aff:	cc                                              	int3
