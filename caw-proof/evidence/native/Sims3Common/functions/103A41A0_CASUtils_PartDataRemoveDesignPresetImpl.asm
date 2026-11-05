# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a41a0 (CASUtils_PartDataRemoveDesignPresetImpl)
Paired Ghidra pseudocode: 103A41A0_CASUtils_PartDataRemoveDesignPresetImpl.c
Window: [0x103a41a0, 0x103a41d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a41d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a41a0: 8b 44 24 14 8b 4c 24 04 8b 54 24 08 50 83 ec 10
103a41b0: 8b c4 89 08 8b 4c 24 20 89 50 04 8b 54 24 24 89
103a41c0: 48 08 89 50 0c e8 d6 e4 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a41a0 <.text+0x3a31a0>:
103a41a0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a41a4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a41a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a41ac:	50                                              	push   eax
103a41ad:	83 ec 10                                        	sub    esp,0x10
103a41b0:	8b c4                                           	mov    eax,esp
103a41b2:	89 08                                           	mov    DWORD PTR [eax],ecx
103a41b4:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a41b8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a41bb:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a41bf:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a41c2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a41c5:	e8 d6 e4 ff ff                                  	call   0x103a26a0
103a41ca:	83 c4 14                                        	add    esp,0x14
103a41cd:	c3                                              	ret
103a41ce:	cc                                              	int3
103a41cf:	cc                                              	int3
