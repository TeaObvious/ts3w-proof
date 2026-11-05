# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3c70 (CASUtils_FacialBlendLoadImpl)
Paired Ghidra pseudocode: 103A3C70_CASUtils_FacialBlendLoadImpl.c
Window: [0x103a3c70, 0x103a3ca0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3c70: 8b 4c 24 04 8b 54 24 08 83 ec 10 8b c4 89 08 8b
103a3c80: 4c 24 1c 89 50 04 8b 54 24 20 89 48 08 89 50 0c
103a3c90: e8 fb f4 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3c70 <.text+0x3a2c70>:
103a3c70:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a3c74:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a3c78:	83 ec 10                                        	sub    esp,0x10
103a3c7b:	8b c4                                           	mov    eax,esp
103a3c7d:	89 08                                           	mov    DWORD PTR [eax],ecx
103a3c7f:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3c83:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a3c86:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
103a3c8a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a3c8d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a3c90:	e8 fb f4 ff ff                                  	call   0x103a3190
103a3c95:	83 c4 10                                        	add    esp,0x10
103a3c98:	c3                                              	ret
103a3c99:	cc                                              	int3
103a3c9a:	cc                                              	int3
103a3c9b:	cc                                              	int3
103a3c9c:	cc                                              	int3
103a3c9d:	cc                                              	int3
103a3c9e:	cc                                              	int3
103a3c9f:	cc                                              	int3
