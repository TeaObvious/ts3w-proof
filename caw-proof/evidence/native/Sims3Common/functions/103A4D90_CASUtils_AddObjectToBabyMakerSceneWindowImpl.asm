# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4d90 (CASUtils_AddObjectToBabyMakerSceneWindowImpl)
Paired Ghidra pseudocode: 103A4D90_CASUtils_AddObjectToBabyMakerSceneWindowImpl.c
Window: [0x103a4d90, 0x103a4db0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4d90: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
103a4da0: 08 51 52 50 e8 17 f8 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
103a4d90 <.text+0x3a3d90>:
103a4d90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a4d94:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a4d98:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a4d9c:	50                                              	push   eax
103a4d9d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a4da1:	51                                              	push   ecx
103a4da2:	52                                              	push   edx
103a4da3:	50                                              	push   eax
103a4da4:	e8 17 f8 ff ff                                  	call   0x103a45c0
103a4da9:	83 c4 10                                        	add    esp,0x10
103a4dac:	c3                                              	ret
103a4dad:	cc                                              	int3
103a4dae:	cc                                              	int3
103a4daf:	cc                                              	int3
