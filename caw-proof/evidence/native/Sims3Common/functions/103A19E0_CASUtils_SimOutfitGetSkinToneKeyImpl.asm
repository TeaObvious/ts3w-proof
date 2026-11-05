# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a19e0 (CASUtils_SimOutfitGetSkinToneKeyImpl)
Paired Ghidra pseudocode: 103A19E0_CASUtils_SimOutfitGetSkinToneKeyImpl.c
Window: [0x103a19e0, 0x103a1a20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a19e0: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 2e eb
103a19f0: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
103a1a00: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
103a1a10: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a19e0 <.text+0x3a09e0>:
103a19e0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a19e4:	83 ec 10                                        	sub    esp,0x10
103a19e7:	50                                              	push   eax
103a19e8:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a19ec:	51                                              	push   ecx
103a19ed:	e8 2e eb ff ff                                  	call   0x103a0520
103a19f2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a19f6:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a19f8:	89 11                                           	mov    DWORD PTR [ecx],edx
103a19fa:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a19fd:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1a00:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a1a03:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a1a06:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a1a09:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1a0c:	8b c1                                           	mov    eax,ecx
103a1a0e:	83 c4 18                                        	add    esp,0x18
103a1a11:	c3                                              	ret
103a1a12:	cc                                              	int3
103a1a13:	cc                                              	int3
103a1a14:	cc                                              	int3
103a1a15:	cc                                              	int3
103a1a16:	cc                                              	int3
103a1a17:	cc                                              	int3
103a1a18:	cc                                              	int3
103a1a19:	cc                                              	int3
103a1a1a:	cc                                              	int3
103a1a1b:	cc                                              	int3
103a1a1c:	cc                                              	int3
103a1a1d:	cc                                              	int3
103a1a1e:	cc                                              	int3
103a1a1f:	cc                                              	int3
