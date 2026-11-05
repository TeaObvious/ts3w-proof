# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1c80 (CASUtils_SimOutfitAddRefImpl)
Paired Ghidra pseudocode: 103A1C80_CASUtils_SimOutfitAddRefImpl.c
Window: [0x103a1c80, 0x103a1cc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1c80: 83 ec 10 e8 58 43 04 00 8b 4c 24 1c 8b 54 24 20
103a1c90: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
103a1ca0: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 5e 6c
103a1cb0: 04 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1c80 <.text+0x3a0c80>:
103a1c80:	83 ec 10                                        	sub    esp,0x10
103a1c83:	e8 58 43 04 00                                  	call   0x103e5fe0
103a1c88:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1c8c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
103a1c90:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
103a1c93:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a1c97:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a1c9b:	8d 0c 24                                        	lea    ecx,[esp]
103a1c9e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
103a1ca2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a1ca6:	51                                              	push   ecx
103a1ca7:	8b c8                                           	mov    ecx,eax
103a1ca9:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
103a1cad:	e8 5e 6c 04 00                                  	call   0x103e8910
103a1cb2:	83 c4 10                                        	add    esp,0x10
103a1cb5:	c3                                              	ret
103a1cb6:	cc                                              	int3
103a1cb7:	cc                                              	int3
103a1cb8:	cc                                              	int3
103a1cb9:	cc                                              	int3
103a1cba:	cc                                              	int3
103a1cbb:	cc                                              	int3
103a1cbc:	cc                                              	int3
103a1cbd:	cc                                              	int3
103a1cbe:	cc                                              	int3
103a1cbf:	cc                                              	int3
