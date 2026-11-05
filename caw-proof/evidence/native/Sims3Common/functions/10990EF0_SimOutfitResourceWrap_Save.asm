# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990ef0 (SimOutfitResourceWrap_Save)
Paired Ghidra pseudocode: 10990EF0_SimOutfitResourceWrap_Save.c
Window: [0x10990ef0, 0x10990f50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990ef0: 8b 44 24 0c 8b 4c 24 08 56 6a 00 6a 00 6a 03 50
10990f00: 51 e8 ca a6 ff ff 8b f0 83 c4 14 83 fe ff 75 04
10990f10: 33 c0 5e c3 8b 4c 24 08 85 c9 74 0e 8b 11 8b 42
10990f20: 0c 68 d1 9e 26 02 ff d0 eb 02 33 c0 8b 4c 24 14
10990f30: 6a 00 68 f4 d6 5e 02 51 56 50 e8 c1 99 ff ff 83
10990f40: c4 14 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990ef0 <.text+0x98fef0>:
10990ef0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990ef4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10990ef8:	56                                              	push   esi
10990ef9:	6a 00                                           	push   0x0
10990efb:	6a 00                                           	push   0x0
10990efd:	6a 03                                           	push   0x3
10990eff:	50                                              	push   eax
10990f00:	51                                              	push   ecx
10990f01:	e8 ca a6 ff ff                                  	call   0x1098b5d0
10990f06:	8b f0                                           	mov    esi,eax
10990f08:	83 c4 14                                        	add    esp,0x14
10990f0b:	83 fe ff                                        	cmp    esi,0xffffffff
10990f0e:	75 04                                           	jne    0x10990f14
10990f10:	33 c0                                           	xor    eax,eax
10990f12:	5e                                              	pop    esi
10990f13:	c3                                              	ret
10990f14:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10990f18:	85 c9                                           	test   ecx,ecx
10990f1a:	74 0e                                           	je     0x10990f2a
10990f1c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10990f1e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10990f21:	68 d1 9e 26 02                                  	push   0x2269ed1
10990f26:	ff d0                                           	call   eax
10990f28:	eb 02                                           	jmp    0x10990f2c
10990f2a:	33 c0                                           	xor    eax,eax
10990f2c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10990f30:	6a 00                                           	push   0x0
10990f32:	68 f4 d6 5e 02                                  	push   0x25ed6f4
10990f37:	51                                              	push   ecx
10990f38:	56                                              	push   esi
10990f39:	50                                              	push   eax
10990f3a:	e8 c1 99 ff ff                                  	call   0x1098a900
10990f3f:	83 c4 14                                        	add    esp,0x14
10990f42:	5e                                              	pop    esi
10990f43:	c3                                              	ret
10990f44:	cc                                              	int3
10990f45:	cc                                              	int3
10990f46:	cc                                              	int3
10990f47:	cc                                              	int3
10990f48:	cc                                              	int3
10990f49:	cc                                              	int3
10990f4a:	cc                                              	int3
10990f4b:	cc                                              	int3
10990f4c:	cc                                              	int3
10990f4d:	cc                                              	int3
10990f4e:	cc                                              	int3
10990f4f:	cc                                              	int3
