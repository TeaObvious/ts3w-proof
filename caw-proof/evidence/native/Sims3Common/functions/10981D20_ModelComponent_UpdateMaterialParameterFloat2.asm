# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981d20 (ModelComponent_UpdateMaterialParameterFloat2)
Paired Ghidra pseudocode: 10981D20_ModelComponent_UpdateMaterialParameterFloat2.c
Window: [0x10981d20, 0x10981d60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981d20: 8b 44 24 04 56 50 e8 d5 fe ff ff 8b f0 83 c4 04
10981d30: 85 f6 74 27 8b 4c 24 14 8b 54 24 10 57 8b 3e 6a
10981d40: 02 51 6a 01 52 e8 66 1c c4 ff 8b 57 1c 83 c4 04
10981d50: 50 8b 44 24 20 50 8b ce ff d2 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10981d20 <.text+0x980d20>:
10981d20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10981d24:	56                                              	push   esi
10981d25:	50                                              	push   eax
10981d26:	e8 d5 fe ff ff                                  	call   0x10981c00
10981d2b:	8b f0                                           	mov    esi,eax
10981d2d:	83 c4 04                                        	add    esp,0x4
10981d30:	85 f6                                           	test   esi,esi
10981d32:	74 27                                           	je     0x10981d5b
10981d34:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10981d38:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10981d3c:	57                                              	push   edi
10981d3d:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10981d3f:	6a 02                                           	push   0x2
10981d41:	51                                              	push   ecx
10981d42:	6a 01                                           	push   0x1
10981d44:	52                                              	push   edx
10981d45:	e8 66 1c c4 ff                                  	call   0x105c39b0
10981d4a:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
10981d4d:	83 c4 04                                        	add    esp,0x4
10981d50:	50                                              	push   eax
10981d51:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10981d55:	50                                              	push   eax
10981d56:	8b ce                                           	mov    ecx,esi
10981d58:	ff d2                                           	call   edx
10981d5a:	5f                                              	pop    edi
10981d5b:	5e                                              	pop    esi
10981d5c:	c3                                              	ret
10981d5d:	cc                                              	int3
10981d5e:	cc                                              	int3
10981d5f:	cc                                              	int3
