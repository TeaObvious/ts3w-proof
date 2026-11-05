# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0f70 (CASUtils_SimBuilderSetSkinToneImpl)
Paired Ghidra pseudocode: 103A0F70_CASUtils_SimBuilderSetSkinToneImpl.c
Window: [0x103a0f70, 0x103a0fa0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0f70: 8b 4c 24 08 8b 54 24 0c 83 ec 10 8b c4 89 08 8b
103a0f80: 4c 24 20 89 50 04 8b 54 24 24 89 48 08 89 50 0c
103a0f90: 8b 44 24 14 50 e8 86 e4 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a0f70 <.text+0x39ff70>:
103a0f70:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a0f74:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a0f78:	83 ec 10                                        	sub    esp,0x10
103a0f7b:	8b c4                                           	mov    eax,esp
103a0f7d:	89 08                                           	mov    DWORD PTR [eax],ecx
103a0f7f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a0f83:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a0f86:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a0f8a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a0f8d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a0f90:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a0f94:	50                                              	push   eax
103a0f95:	e8 86 e4 ff ff                                  	call   0x1039f420
103a0f9a:	83 c4 14                                        	add    esp,0x14
103a0f9d:	c3                                              	ret
103a0f9e:	cc                                              	int3
103a0f9f:	cc                                              	int3
