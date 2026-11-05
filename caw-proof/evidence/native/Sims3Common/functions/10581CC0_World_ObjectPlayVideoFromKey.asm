# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581cc0 (World_ObjectPlayVideoFromKey)
Paired Ghidra pseudocode: 10581CC0_World_ObjectPlayVideoFromKey.c
Window: [0x10581cc0, 0x10581d30) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581cc0: 53 55 56 57 e8 d7 84 1a 00 85 c0 74 57 8b 5c 24
10581cd0: 18 8b 6c 24 14 53 55 8b c8 e8 d2 8e 1a 00 85 c0
10581ce0: 74 42 e8 39 94 fd ff e8 e4 33 36 00 8b 44 24 2c
10581cf0: 8b 4c 24 24 8b 54 24 28 8b 74 24 1c 8b 7c 24 20
10581d00: 6a 01 6a 01 50 83 ec 10 8b c4 89 08 89 50 04 53
10581d10: 89 70 08 55 89 78 0c e8 14 ee ff ff 83 c4 24 5f
10581d20: 5e 5d 5b c3 5f 5e 5d 33 c0 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10581cc0 <.text+0x580cc0>:
10581cc0:	53                                              	push   ebx
10581cc1:	55                                              	push   ebp
10581cc2:	56                                              	push   esi
10581cc3:	57                                              	push   edi
10581cc4:	e8 d7 84 1a 00                                  	call   0x1072a1a0
10581cc9:	85 c0                                           	test   eax,eax
10581ccb:	74 57                                           	je     0x10581d24
10581ccd:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
10581cd1:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
10581cd5:	53                                              	push   ebx
10581cd6:	55                                              	push   ebp
10581cd7:	8b c8                                           	mov    ecx,eax
10581cd9:	e8 d2 8e 1a 00                                  	call   0x1072abb0
10581cde:	85 c0                                           	test   eax,eax
10581ce0:	74 42                                           	je     0x10581d24
10581ce2:	e8 39 94 fd ff                                  	call   0x1055b120
10581ce7:	e8 e4 33 36 00                                  	call   0x108e50d0
10581cec:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10581cf0:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10581cf4:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10581cf8:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
10581cfc:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
10581d00:	6a 01                                           	push   0x1
10581d02:	6a 01                                           	push   0x1
10581d04:	50                                              	push   eax
10581d05:	83 ec 10                                        	sub    esp,0x10
10581d08:	8b c4                                           	mov    eax,esp
10581d0a:	89 08                                           	mov    DWORD PTR [eax],ecx
10581d0c:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10581d0f:	53                                              	push   ebx
10581d10:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
10581d13:	55                                              	push   ebp
10581d14:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
10581d17:	e8 14 ee ff ff                                  	call   0x10580b30
10581d1c:	83 c4 24                                        	add    esp,0x24
10581d1f:	5f                                              	pop    edi
10581d20:	5e                                              	pop    esi
10581d21:	5d                                              	pop    ebp
10581d22:	5b                                              	pop    ebx
10581d23:	c3                                              	ret
10581d24:	5f                                              	pop    edi
10581d25:	5e                                              	pop    esi
10581d26:	5d                                              	pop    ebp
10581d27:	33 c0                                           	xor    eax,eax
10581d29:	5b                                              	pop    ebx
10581d2a:	c3                                              	ret
10581d2b:	cc                                              	int3
10581d2c:	cc                                              	int3
10581d2d:	cc                                              	int3
10581d2e:	cc                                              	int3
10581d2f:	cc                                              	int3
