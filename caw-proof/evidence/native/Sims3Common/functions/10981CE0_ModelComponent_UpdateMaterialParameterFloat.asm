# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981ce0 (ModelComponent_UpdateMaterialParameterFloat)
Paired Ghidra pseudocode: 10981CE0_ModelComponent_UpdateMaterialParameterFloat.c
Window: [0x10981ce0, 0x10981d20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981ce0: 8b 44 24 04 56 50 e8 15 ff ff ff 8b f0 83 c4 04
10981cf0: 85 f6 74 27 8b 54 24 10 57 8b 3e 6a 01 8d 4c 24
10981d00: 1c 51 6a 01 52 e8 a6 1c c4 ff 8b 57 1c 83 c4 04
10981d10: 50 8b 44 24 20 50 8b ce ff d2 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10981ce0 <.text+0x980ce0>:
10981ce0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10981ce4:	56                                              	push   esi
10981ce5:	50                                              	push   eax
10981ce6:	e8 15 ff ff ff                                  	call   0x10981c00
10981ceb:	8b f0                                           	mov    esi,eax
10981ced:	83 c4 04                                        	add    esp,0x4
10981cf0:	85 f6                                           	test   esi,esi
10981cf2:	74 27                                           	je     0x10981d1b
10981cf4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10981cf8:	57                                              	push   edi
10981cf9:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10981cfb:	6a 01                                           	push   0x1
10981cfd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10981d01:	51                                              	push   ecx
10981d02:	6a 01                                           	push   0x1
10981d04:	52                                              	push   edx
10981d05:	e8 a6 1c c4 ff                                  	call   0x105c39b0
10981d0a:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
10981d0d:	83 c4 04                                        	add    esp,0x4
10981d10:	50                                              	push   eax
10981d11:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10981d15:	50                                              	push   eax
10981d16:	8b ce                                           	mov    ecx,esi
10981d18:	ff d2                                           	call   edx
10981d1a:	5f                                              	pop    edi
10981d1b:	5e                                              	pop    esi
10981d1c:	c3                                              	ret
10981d1d:	cc                                              	int3
10981d1e:	cc                                              	int3
10981d1f:	cc                                              	int3
