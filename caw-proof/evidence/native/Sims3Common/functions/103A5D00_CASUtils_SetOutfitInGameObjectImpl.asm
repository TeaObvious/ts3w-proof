# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5d00 (CASUtils_SetOutfitInGameObjectImpl)
Paired Ghidra pseudocode: 103A5D00_CASUtils_SetOutfitInGameObjectImpl.c
Window: [0x103a5d00, 0x103a5d40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5d00: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 6a 00 51
103a5d10: 8b 4c 24 10 52 8b 54 24 18 83 ec 10 8b c4 89 08
103a5d20: 8b 4c 24 2c 89 50 04 8b 54 24 30 89 48 08 89 50
103a5d30: 0c e8 3a f3 ff ff 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5d00 <.text+0x3a4d00>:
103a5d00:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
103a5d04:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a5d08:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a5d0c:	50                                              	push   eax
103a5d0d:	6a 00                                           	push   0x0
103a5d0f:	51                                              	push   ecx
103a5d10:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a5d14:	52                                              	push   edx
103a5d15:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a5d19:	83 ec 10                                        	sub    esp,0x10
103a5d1c:	8b c4                                           	mov    eax,esp
103a5d1e:	89 08                                           	mov    DWORD PTR [eax],ecx
103a5d20:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a5d24:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a5d27:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
103a5d2b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a5d2e:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a5d31:	e8 3a f3 ff ff                                  	call   0x103a5070
103a5d36:	83 c4 20                                        	add    esp,0x20
103a5d39:	c3                                              	ret
103a5d3a:	cc                                              	int3
103a5d3b:	cc                                              	int3
103a5d3c:	cc                                              	int3
103a5d3d:	cc                                              	int3
103a5d3e:	cc                                              	int3
103a5d3f:	cc                                              	int3
