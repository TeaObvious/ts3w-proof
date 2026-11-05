# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3ca0 (CASUtils_CompoundBlendLoadImpl)
Paired Ghidra pseudocode: 103A3CA0_CASUtils_CompoundBlendLoadImpl.c
Window: [0x103a3ca0, 0x103a3cd0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3ca0: 8b 4c 24 04 8b 54 24 08 83 ec 10 8b c4 89 08 8b
103a3cb0: 4c 24 1c 89 50 04 8b 54 24 20 89 48 08 89 50 0c
103a3cc0: e8 0b f6 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3ca0 <.text+0x3a2ca0>:
103a3ca0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a3ca4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a3ca8:	83 ec 10                                        	sub    esp,0x10
103a3cab:	8b c4                                           	mov    eax,esp
103a3cad:	89 08                                           	mov    DWORD PTR [eax],ecx
103a3caf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3cb3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a3cb6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
103a3cba:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a3cbd:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a3cc0:	e8 0b f6 ff ff                                  	call   0x103a32d0
103a3cc5:	83 c4 10                                        	add    esp,0x10
103a3cc8:	c3                                              	ret
103a3cc9:	cc                                              	int3
103a3cca:	cc                                              	int3
103a3ccb:	cc                                              	int3
103a3ccc:	cc                                              	int3
103a3ccd:	cc                                              	int3
103a3cce:	cc                                              	int3
103a3ccf:	cc                                              	int3
