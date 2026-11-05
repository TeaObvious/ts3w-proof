# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fbe0 (SimComponent_GetSimOutfitKey)
Paired Ghidra pseudocode: 1097FBE0_SimComponent_GetSimOutfitKey.c
Window: [0x1097fbe0, 0x1097fc00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fc00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fbe0: 8b 4c 24 08 8b 44 24 04 8b 51 10 89 10 8b 51 14
1097fbf0: 89 50 04 8b 51 18 8b 49 1c 89 50 08 89 48 0c c3

LINEAR DISASSEMBLY
1097fbe0 <.text+0x97ebe0>:
1097fbe0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097fbe4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097fbe8:	8b 51 10                                        	mov    edx,DWORD PTR [ecx+0x10]
1097fbeb:	89 10                                           	mov    DWORD PTR [eax],edx
1097fbed:	8b 51 14                                        	mov    edx,DWORD PTR [ecx+0x14]
1097fbf0:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1097fbf3:	8b 51 18                                        	mov    edx,DWORD PTR [ecx+0x18]
1097fbf6:	8b 49 1c                                        	mov    ecx,DWORD PTR [ecx+0x1c]
1097fbf9:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097fbfc:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097fbff:	c3                                              	ret
