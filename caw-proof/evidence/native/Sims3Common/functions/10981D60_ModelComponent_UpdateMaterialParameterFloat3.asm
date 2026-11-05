# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981d60 (ModelComponent_UpdateMaterialParameterFloat3)
Paired Ghidra pseudocode: 10981D60_ModelComponent_UpdateMaterialParameterFloat3.c
Window: [0x10981d60, 0x10981da0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981d60: 8b 44 24 04 56 50 e8 95 fe ff ff 8b f0 83 c4 04
10981d70: 85 f6 74 27 8b 4c 24 14 8b 54 24 10 57 8b 3e 6a
10981d80: 03 51 6a 01 52 e8 26 1c c4 ff 8b 57 1c 83 c4 04
10981d90: 50 8b 44 24 20 50 8b ce ff d2 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10981d60 <.text+0x980d60>:
10981d60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10981d64:	56                                              	push   esi
10981d65:	50                                              	push   eax
10981d66:	e8 95 fe ff ff                                  	call   0x10981c00
10981d6b:	8b f0                                           	mov    esi,eax
10981d6d:	83 c4 04                                        	add    esp,0x4
10981d70:	85 f6                                           	test   esi,esi
10981d72:	74 27                                           	je     0x10981d9b
10981d74:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10981d78:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10981d7c:	57                                              	push   edi
10981d7d:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10981d7f:	6a 03                                           	push   0x3
10981d81:	51                                              	push   ecx
10981d82:	6a 01                                           	push   0x1
10981d84:	52                                              	push   edx
10981d85:	e8 26 1c c4 ff                                  	call   0x105c39b0
10981d8a:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
10981d8d:	83 c4 04                                        	add    esp,0x4
10981d90:	50                                              	push   eax
10981d91:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10981d95:	50                                              	push   eax
10981d96:	8b ce                                           	mov    ecx,esi
10981d98:	ff d2                                           	call   edx
10981d9a:	5f                                              	pop    edi
10981d9b:	5e                                              	pop    esi
10981d9c:	c3                                              	ret
10981d9d:	cc                                              	int3
10981d9e:	cc                                              	int3
10981d9f:	cc                                              	int3
