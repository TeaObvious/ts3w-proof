# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1cd0 (CASUtils_SimOutfitGetHairBaseColorImpl)
Paired Ghidra pseudocode: 103A1CD0_CASUtils_SimOutfitGetHairBaseColorImpl.c
Window: [0x103a1cd0, 0x103a1d00) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1cd0: 8b 44 24 08 83 ec 0c 50 8d 4c 24 04 51 e8 5e e5
103a1ce0: ff ff 8b 10 8b 4c 24 18 89 11 8b 50 04 8b 40 08
103a1cf0: 89 51 04 89 41 08 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1cd0 <.text+0x3a0cd0>:
103a1cd0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a1cd4:	83 ec 0c                                        	sub    esp,0xc
103a1cd7:	50                                              	push   eax
103a1cd8:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a1cdc:	51                                              	push   ecx
103a1cdd:	e8 5e e5 ff ff                                  	call   0x103a0240
103a1ce2:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1ce4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a1ce8:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1cea:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1ced:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
103a1cf0:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1cf3:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
103a1cf6:	8b c1                                           	mov    eax,ecx
103a1cf8:	83 c4 14                                        	add    esp,0x14
103a1cfb:	c3                                              	ret
103a1cfc:	cc                                              	int3
103a1cfd:	cc                                              	int3
103a1cfe:	cc                                              	int3
103a1cff:	cc                                              	int3
