# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5d80 (CASUtils_SimBuilderSetPartPresetImpl)
Paired Ghidra pseudocode: 103A5D80_CASUtils_SimBuilderSetPartPresetImpl.c
Window: [0x103a5d80, 0x103a5dc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5d80: 8b 44 24 18 8b 4c 24 08 8b 54 24 0c 50 83 ec 10
103a5d90: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 28 89
103a5da0: 48 08 89 50 0c 8b 44 24 18 50 e8 71 fe ff ff 83
103a5db0: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5d80 <.text+0x3a4d80>:
103a5d80:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a5d84:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a5d88:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a5d8c:	50                                              	push   eax
103a5d8d:	83 ec 10                                        	sub    esp,0x10
103a5d90:	8b c4                                           	mov    eax,esp
103a5d92:	89 08                                           	mov    DWORD PTR [eax],ecx
103a5d94:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a5d98:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a5d9b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a5d9f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a5da2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a5da5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a5da9:	50                                              	push   eax
103a5daa:	e8 71 fe ff ff                                  	call   0x103a5c20
103a5daf:	83 c4 18                                        	add    esp,0x18
103a5db2:	c3                                              	ret
103a5db3:	cc                                              	int3
103a5db4:	cc                                              	int3
103a5db5:	cc                                              	int3
103a5db6:	cc                                              	int3
103a5db7:	cc                                              	int3
103a5db8:	cc                                              	int3
103a5db9:	cc                                              	int3
103a5dba:	cc                                              	int3
103a5dbb:	cc                                              	int3
103a5dbc:	cc                                              	int3
103a5dbd:	cc                                              	int3
103a5dbe:	cc                                              	int3
103a5dbf:	cc                                              	int3
