# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3af0 (CASUtils_SetBodyShapeInGameObjectImpl)
Paired Ghidra pseudocode: 103A3AF0_CASUtils_SetBodyShapeInGameObjectImpl.c
Window: [0x103a3af0, 0x103a3b50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3af0: e8 ab 66 38 00 8b 4c 24 18 8b 54 24 14 51 52 8b
103a3b00: c8 e8 aa 70 38 00 85 c0 74 3b 8b 0d 3c d9 c8 10
103a3b10: 51 8b c8 e8 88 32 38 00 85 c0 74 29 d9 44 24 10
103a3b20: 83 ec 10 d9 5c 24 0c 8b c8 d9 44 24 1c d9 5c 24
103a3b30: 08 d9 44 24 18 d9 5c 24 04 d9 44 24 14 d9 1c 24
103a3b40: e8 3b e2 39 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3af0 <.text+0x3a2af0>:
103a3af0:	e8 ab 66 38 00                                  	call   0x1072a1a0
103a3af5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a3af9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a3afd:	51                                              	push   ecx
103a3afe:	52                                              	push   edx
103a3aff:	8b c8                                           	mov    ecx,eax
103a3b01:	e8 aa 70 38 00                                  	call   0x1072abb0
103a3b06:	85 c0                                           	test   eax,eax
103a3b08:	74 3b                                           	je     0x103a3b45
103a3b0a:	8b 0d 3c d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d93c
103a3b10:	51                                              	push   ecx
103a3b11:	8b c8                                           	mov    ecx,eax
103a3b13:	e8 88 32 38 00                                  	call   0x10726da0
103a3b18:	85 c0                                           	test   eax,eax
103a3b1a:	74 29                                           	je     0x103a3b45
103a3b1c:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
103a3b20:	83 ec 10                                        	sub    esp,0x10
103a3b23:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
103a3b27:	8b c8                                           	mov    ecx,eax
103a3b29:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
103a3b2d:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
103a3b31:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
103a3b35:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
103a3b39:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
103a3b3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a3b40:	e8 3b e2 39 00                                  	call   0x10741d80
103a3b45:	c3                                              	ret
103a3b46:	cc                                              	int3
103a3b47:	cc                                              	int3
103a3b48:	cc                                              	int3
103a3b49:	cc                                              	int3
103a3b4a:	cc                                              	int3
103a3b4b:	cc                                              	int3
103a3b4c:	cc                                              	int3
103a3b4d:	cc                                              	int3
103a3b4e:	cc                                              	int3
103a3b4f:	cc                                              	int3
