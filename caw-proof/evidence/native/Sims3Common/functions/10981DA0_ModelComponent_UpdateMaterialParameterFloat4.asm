# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981da0 (ModelComponent_UpdateMaterialParameterFloat4)
Paired Ghidra pseudocode: 10981DA0_ModelComponent_UpdateMaterialParameterFloat4.c
Window: [0x10981da0, 0x10981de0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981da0: 8b 44 24 04 56 50 e8 55 fe ff ff 8b f0 83 c4 04
10981db0: 85 f6 74 27 8b 54 24 10 57 8b 3e 6a 04 8d 4c 24
10981dc0: 1c 51 6a 01 52 e8 e6 1b c4 ff 8b 57 1c 83 c4 04
10981dd0: 50 8b 44 24 20 50 8b ce ff d2 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10981da0 <.text+0x980da0>:
10981da0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10981da4:	56                                              	push   esi
10981da5:	50                                              	push   eax
10981da6:	e8 55 fe ff ff                                  	call   0x10981c00
10981dab:	8b f0                                           	mov    esi,eax
10981dad:	83 c4 04                                        	add    esp,0x4
10981db0:	85 f6                                           	test   esi,esi
10981db2:	74 27                                           	je     0x10981ddb
10981db4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10981db8:	57                                              	push   edi
10981db9:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10981dbb:	6a 04                                           	push   0x4
10981dbd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10981dc1:	51                                              	push   ecx
10981dc2:	6a 01                                           	push   0x1
10981dc4:	52                                              	push   edx
10981dc5:	e8 e6 1b c4 ff                                  	call   0x105c39b0
10981dca:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
10981dcd:	83 c4 04                                        	add    esp,0x4
10981dd0:	50                                              	push   eax
10981dd1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10981dd5:	50                                              	push   eax
10981dd6:	8b ce                                           	mov    ecx,esi
10981dd8:	ff d2                                           	call   edx
10981dda:	5f                                              	pop    edi
10981ddb:	5e                                              	pop    esi
10981ddc:	c3                                              	ret
10981ddd:	cc                                              	int3
10981dde:	cc                                              	int3
10981ddf:	cc                                              	int3
