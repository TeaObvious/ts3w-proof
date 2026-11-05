# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1d00 (CASUtils_SimOutfitGetHairHaloLowColorImpl)
Paired Ghidra pseudocode: 103A1D00_CASUtils_SimOutfitGetHairHaloLowColorImpl.c
Window: [0x103a1d00, 0x103a1d30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1d00: 8b 44 24 08 83 ec 0c 50 8d 4c 24 04 51 e8 be e5
103a1d10: ff ff 8b 10 8b 4c 24 18 89 11 8b 50 04 8b 40 08
103a1d20: 89 51 04 89 41 08 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1d00 <.text+0x3a0d00>:
103a1d00:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a1d04:	83 ec 0c                                        	sub    esp,0xc
103a1d07:	50                                              	push   eax
103a1d08:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a1d0c:	51                                              	push   ecx
103a1d0d:	e8 be e5 ff ff                                  	call   0x103a02d0
103a1d12:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1d14:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a1d18:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1d1a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1d1d:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
103a1d20:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1d23:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
103a1d26:	8b c1                                           	mov    eax,ecx
103a1d28:	83 c4 14                                        	add    esp,0x14
103a1d2b:	c3                                              	ret
103a1d2c:	cc                                              	int3
103a1d2d:	cc                                              	int3
103a1d2e:	cc                                              	int3
103a1d2f:	cc                                              	int3
