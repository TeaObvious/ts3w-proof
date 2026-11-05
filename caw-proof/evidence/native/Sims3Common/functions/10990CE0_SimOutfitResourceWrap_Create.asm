# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990ce0 (SimOutfitResourceWrap_Create)
Paired Ghidra pseudocode: 10990CE0_SimOutfitResourceWrap_Create.c
Window: [0x10990ce0, 0x10990d30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990ce0: 56 6a 00 6a 00 6a 00 6a 00 68 e0 72 b9 10 68 d0
10990cf0: 02 00 00 e8 b8 81 f8 ff 83 c4 18 85 c0 74 15 8b
10990d00: c8 e8 da 0a a5 ff 8b f0 8b 06 8b 10 8b ce ff d2
10990d10: 8b c6 5e c3 33 f6 8b 06 8b 10 8b ce ff d2 8b c6
10990d20: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990ce0 <.text+0x98fce0>:
10990ce0:	56                                              	push   esi
10990ce1:	6a 00                                           	push   0x0
10990ce3:	6a 00                                           	push   0x0
10990ce5:	6a 00                                           	push   0x0
10990ce7:	6a 00                                           	push   0x0
10990ce9:	68 e0 72 b9 10                                  	push   0x10b972e0
10990cee:	68 d0 02 00 00                                  	push   0x2d0
10990cf3:	e8 b8 81 f8 ff                                  	call   0x10918eb0
10990cf8:	83 c4 18                                        	add    esp,0x18
10990cfb:	85 c0                                           	test   eax,eax
10990cfd:	74 15                                           	je     0x10990d14
10990cff:	8b c8                                           	mov    ecx,eax
10990d01:	e8 da 0a a5 ff                                  	call   0x103e17e0
10990d06:	8b f0                                           	mov    esi,eax
10990d08:	8b 06                                           	mov    eax,DWORD PTR [esi]
10990d0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
10990d0c:	8b ce                                           	mov    ecx,esi
10990d0e:	ff d2                                           	call   edx
10990d10:	8b c6                                           	mov    eax,esi
10990d12:	5e                                              	pop    esi
10990d13:	c3                                              	ret
10990d14:	33 f6                                           	xor    esi,esi
10990d16:	8b 06                                           	mov    eax,DWORD PTR [esi]
10990d18:	8b 10                                           	mov    edx,DWORD PTR [eax]
10990d1a:	8b ce                                           	mov    ecx,esi
10990d1c:	ff d2                                           	call   edx
10990d1e:	8b c6                                           	mov    eax,esi
10990d20:	5e                                              	pop    esi
10990d21:	c3                                              	ret
10990d22:	cc                                              	int3
10990d23:	cc                                              	int3
10990d24:	cc                                              	int3
10990d25:	cc                                              	int3
10990d26:	cc                                              	int3
10990d27:	cc                                              	int3
10990d28:	cc                                              	int3
10990d29:	cc                                              	int3
10990d2a:	cc                                              	int3
10990d2b:	cc                                              	int3
10990d2c:	cc                                              	int3
10990d2d:	cc                                              	int3
10990d2e:	cc                                              	int3
10990d2f:	cc                                              	int3
