# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fdf0 (SimBuilderWrap_GetSkinTone)
Paired Ghidra pseudocode: 1098FDF0_SimBuilderWrap_GetSkinTone.c
Window: [0x1098fdf0, 0x1098fe10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fdf0: 8b 4c 24 08 8b 44 24 04 8b 51 30 89 10 8b 51 28
1098fe00: 89 50 08 8b 51 2c 8b 49 34 89 50 0c 89 48 04 c3

LINEAR DISASSEMBLY
1098fdf0 <.text+0x98edf0>:
1098fdf0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098fdf4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fdf8:	8b 51 30                                        	mov    edx,DWORD PTR [ecx+0x30]
1098fdfb:	89 10                                           	mov    DWORD PTR [eax],edx
1098fdfd:	8b 51 28                                        	mov    edx,DWORD PTR [ecx+0x28]
1098fe00:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1098fe03:	8b 51 2c                                        	mov    edx,DWORD PTR [ecx+0x2c]
1098fe06:	8b 49 34                                        	mov    ecx,DWORD PTR [ecx+0x34]
1098fe09:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098fe0c:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1098fe0f:	c3                                              	ret
