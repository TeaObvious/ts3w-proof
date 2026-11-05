# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981c90 (ModelComponent_UpdateMaterialParameterBool)
Paired Ghidra pseudocode: 10981C90_ModelComponent_UpdateMaterialParameterBool.c
Window: [0x10981c90, 0x10981ce0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981c90: 51 8b 44 24 08 56 50 e8 64 ff ff ff 8b f0 83 c4
10981ca0: 04 85 f6 74 34 8b 44 24 14 33 c9 38 4c 24 18 57
10981cb0: 8b 3e 0f 95 c1 6a 01 8d 54 24 0c 52 6a 02 50 89
10981cc0: 4c 24 18 e8 e8 1c c4 ff 8b 4c 24 24 8b 57 1c 83
10981cd0: c4 04 50 51 8b ce ff d2 5f 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
10981c90 <.text+0x980c90>:
10981c90:	51                                              	push   ecx
10981c91:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10981c95:	56                                              	push   esi
10981c96:	50                                              	push   eax
10981c97:	e8 64 ff ff ff                                  	call   0x10981c00
10981c9c:	8b f0                                           	mov    esi,eax
10981c9e:	83 c4 04                                        	add    esp,0x4
10981ca1:	85 f6                                           	test   esi,esi
10981ca3:	74 34                                           	je     0x10981cd9
10981ca5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10981ca9:	33 c9                                           	xor    ecx,ecx
10981cab:	38 4c 24 18                                     	cmp    BYTE PTR [esp+0x18],cl
10981caf:	57                                              	push   edi
10981cb0:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10981cb2:	0f 95 c1                                        	setne  cl
10981cb5:	6a 01                                           	push   0x1
10981cb7:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10981cbb:	52                                              	push   edx
10981cbc:	6a 02                                           	push   0x2
10981cbe:	50                                              	push   eax
10981cbf:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10981cc3:	e8 e8 1c c4 ff                                  	call   0x105c39b0
10981cc8:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10981ccc:	8b 57 1c                                        	mov    edx,DWORD PTR [edi+0x1c]
10981ccf:	83 c4 04                                        	add    esp,0x4
10981cd2:	50                                              	push   eax
10981cd3:	51                                              	push   ecx
10981cd4:	8b ce                                           	mov    ecx,esi
10981cd6:	ff d2                                           	call   edx
10981cd8:	5f                                              	pop    edi
10981cd9:	5e                                              	pop    esi
10981cda:	59                                              	pop    ecx
10981cdb:	c3                                              	ret
10981cdc:	cc                                              	int3
10981cdd:	cc                                              	int3
10981cde:	cc                                              	int3
10981cdf:	cc                                              	int3
