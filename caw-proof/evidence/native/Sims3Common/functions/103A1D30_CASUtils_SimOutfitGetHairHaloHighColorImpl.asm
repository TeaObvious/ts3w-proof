# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1d30 (CASUtils_SimOutfitGetHairHaloHighColorImpl)
Paired Ghidra pseudocode: 103A1D30_CASUtils_SimOutfitGetHairHaloHighColorImpl.c
Window: [0x103a1d30, 0x103a1d60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1d30: 8b 44 24 08 83 ec 0c 50 8d 4c 24 04 51 e8 1e e6
103a1d40: ff ff 8b 10 8b 4c 24 18 89 11 8b 50 04 8b 40 08
103a1d50: 89 51 04 89 41 08 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1d30 <.text+0x3a0d30>:
103a1d30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a1d34:	83 ec 0c                                        	sub    esp,0xc
103a1d37:	50                                              	push   eax
103a1d38:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a1d3c:	51                                              	push   ecx
103a1d3d:	e8 1e e6 ff ff                                  	call   0x103a0360
103a1d42:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1d44:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a1d48:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1d4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1d4d:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
103a1d50:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1d53:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
103a1d56:	8b c1                                           	mov    eax,ecx
103a1d58:	83 c4 14                                        	add    esp,0x14
103a1d5b:	c3                                              	ret
103a1d5c:	cc                                              	int3
103a1d5d:	cc                                              	int3
103a1d5e:	cc                                              	int3
103a1d5f:	cc                                              	int3
