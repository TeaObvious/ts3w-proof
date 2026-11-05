# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568b20 (Swarm_SetAutoDestroy)
Paired Ghidra pseudocode: 10568B20_Swarm_SetAutoDestroy.c
Window: [0x10568b20, 0x10568b90) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568b20: 51 56 e8 79 16 1c 00 8b 4c 24 10 8b 54 24 0c 51
10568b30: 52 8b c8 e8 78 20 1c 00 8b f0 85 f6 74 4a a1 d0
10568b40: d6 c8 10 50 8b ce e8 55 e2 1b 00 85 c0 74 1d 33
10568b50: c9 38 4c 24 14 6a 01 0f 95 c1 8d 54 24 08 52 6a
10568b60: 05 89 4c 24 10 8b c8 e8 54 df 1c 00 a1 98 d9 c8
10568b70: 10 50 8b ce e8 27 e2 1b 00 85 c0 74 0b 8b c8 5e
10568b80: 83 c4 04 e9 28 fc 1d 00 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10568b20 <.text+0x567b20>:
10568b20:	51                                              	push   ecx
10568b21:	56                                              	push   esi
10568b22:	e8 79 16 1c 00                                  	call   0x1072a1a0
10568b27:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10568b2b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10568b2f:	51                                              	push   ecx
10568b30:	52                                              	push   edx
10568b31:	8b c8                                           	mov    ecx,eax
10568b33:	e8 78 20 1c 00                                  	call   0x1072abb0
10568b38:	8b f0                                           	mov    esi,eax
10568b3a:	85 f6                                           	test   esi,esi
10568b3c:	74 4a                                           	je     0x10568b88
10568b3e:	a1 d0 d6 c8 10                                  	mov    eax,ds:0x10c8d6d0
10568b43:	50                                              	push   eax
10568b44:	8b ce                                           	mov    ecx,esi
10568b46:	e8 55 e2 1b 00                                  	call   0x10726da0
10568b4b:	85 c0                                           	test   eax,eax
10568b4d:	74 1d                                           	je     0x10568b6c
10568b4f:	33 c9                                           	xor    ecx,ecx
10568b51:	38 4c 24 14                                     	cmp    BYTE PTR [esp+0x14],cl
10568b55:	6a 01                                           	push   0x1
10568b57:	0f 95 c1                                        	setne  cl
10568b5a:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10568b5e:	52                                              	push   edx
10568b5f:	6a 05                                           	push   0x5
10568b61:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10568b65:	8b c8                                           	mov    ecx,eax
10568b67:	e8 54 df 1c 00                                  	call   0x10736ac0
10568b6c:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
10568b71:	50                                              	push   eax
10568b72:	8b ce                                           	mov    ecx,esi
10568b74:	e8 27 e2 1b 00                                  	call   0x10726da0
10568b79:	85 c0                                           	test   eax,eax
10568b7b:	74 0b                                           	je     0x10568b88
10568b7d:	8b c8                                           	mov    ecx,eax
10568b7f:	5e                                              	pop    esi
10568b80:	83 c4 04                                        	add    esp,0x4
10568b83:	e9 28 fc 1d 00                                  	jmp    0x107487b0
10568b88:	5e                                              	pop    esi
10568b89:	59                                              	pop    ecx
10568b8a:	c3                                              	ret
10568b8b:	cc                                              	int3
10568b8c:	cc                                              	int3
10568b8d:	cc                                              	int3
10568b8e:	cc                                              	int3
10568b8f:	cc                                              	int3
