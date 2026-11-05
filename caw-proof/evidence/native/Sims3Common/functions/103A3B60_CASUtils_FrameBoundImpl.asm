# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3b60 (CASUtils_FrameBoundImpl)
Paired Ghidra pseudocode: 103A3B60_CASUtils_FrameBoundImpl.c
Window: [0x103a3b60, 0x103a3bb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3b60: 8b 44 24 20 8b 4c 24 14 8b 54 24 18 50 83 ec 0c
103a3b70: 8b c4 89 08 8b 4c 24 2c 89 50 04 8b 54 24 18 89
103a3b80: 48 08 8b 4c 24 1c 83 ec 0c 8b c4 89 10 8b 54 24
103a3b90: 2c 89 48 04 89 50 08 8b 44 24 20 50 e8 af f2 ff
103a3ba0: ff 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3b60 <.text+0x3a2b60>:
103a3b60:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a3b64:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a3b68:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a3b6c:	50                                              	push   eax
103a3b6d:	83 ec 0c                                        	sub    esp,0xc
103a3b70:	8b c4                                           	mov    eax,esp
103a3b72:	89 08                                           	mov    DWORD PTR [eax],ecx
103a3b74:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a3b78:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a3b7b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a3b7f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a3b82:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3b86:	83 ec 0c                                        	sub    esp,0xc
103a3b89:	8b c4                                           	mov    eax,esp
103a3b8b:	89 10                                           	mov    DWORD PTR [eax],edx
103a3b8d:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
103a3b91:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
103a3b94:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
103a3b97:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a3b9b:	50                                              	push   eax
103a3b9c:	e8 af f2 ff ff                                  	call   0x103a2e50
103a3ba1:	83 c4 20                                        	add    esp,0x20
103a3ba4:	c3                                              	ret
103a3ba5:	cc                                              	int3
103a3ba6:	cc                                              	int3
103a3ba7:	cc                                              	int3
103a3ba8:	cc                                              	int3
103a3ba9:	cc                                              	int3
103a3baa:	cc                                              	int3
103a3bab:	cc                                              	int3
103a3bac:	cc                                              	int3
103a3bad:	cc                                              	int3
103a3bae:	cc                                              	int3
103a3baf:	cc                                              	int3
