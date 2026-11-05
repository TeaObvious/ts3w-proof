# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3e10 (CASUtils_SimBuilderGetSkinToneRampKeyImpl)
Paired Ghidra pseudocode: 103A3E10_CASUtils_SimBuilderGetSkinToneRampKeyImpl.c
Window: [0x103a3e10, 0x103a3e50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3e10: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 fe ee
103a3e20: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
103a3e30: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
103a3e40: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3e10 <.text+0x3a2e10>:
103a3e10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a3e14:	83 ec 10                                        	sub    esp,0x10
103a3e17:	50                                              	push   eax
103a3e18:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a3e1c:	51                                              	push   ecx
103a3e1d:	e8 fe ee ff ff                                  	call   0x103a2d20
103a3e22:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3e26:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a3e28:	89 11                                           	mov    DWORD PTR [ecx],edx
103a3e2a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a3e2d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a3e30:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a3e33:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a3e36:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a3e39:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a3e3c:	8b c1                                           	mov    eax,ecx
103a3e3e:	83 c4 18                                        	add    esp,0x18
103a3e41:	c3                                              	ret
103a3e42:	cc                                              	int3
103a3e43:	cc                                              	int3
103a3e44:	cc                                              	int3
103a3e45:	cc                                              	int3
103a3e46:	cc                                              	int3
103a3e47:	cc                                              	int3
103a3e48:	cc                                              	int3
103a3e49:	cc                                              	int3
103a3e4a:	cc                                              	int3
103a3e4b:	cc                                              	int3
103a3e4c:	cc                                              	int3
103a3e4d:	cc                                              	int3
103a3e4e:	cc                                              	int3
103a3e4f:	cc                                              	int3
