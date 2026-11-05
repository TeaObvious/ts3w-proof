# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997a80 (WorldWrap_IsImage16bppGrayscale)
Paired Ghidra pseudocode: 10997A80_WorldWrap_IsImage16bppGrayscale.c
Window: [0x10997a80, 0x10997b80) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997a80: 8b 44 24 04 81 ec 40 02 00 00 53 50 8d 4c 24 20
10997a90: 32 db e8 99 8d f7 ff 8d 4c 24 1c e8 a0 87 f7 ff
10997aa0: 6a 00 6a 01 6a 06 6a 01 8d 4c 24 2c e8 cf 88 f7
10997ab0: ff 84 c0 0f 84 a8 00 00 00 8d 4c 24 08 e8 9e 2f
10997ac0: ee ff 8d 4c 24 1c 51 8d 4c 24 0c e8 b0 2f ee ff
10997ad0: 84 c0 8d 4c 24 08 74 14 8d 54 24 04 52 6a 04 e8
10997ae0: 2c 32 ee ff 84 c0 75 1c 8d 4c 24 08 e8 df 31 ee
10997af0: ff 8d 4c 24 1c e8 96 8d f7 ff 32 c0 5b 81 c4 40
10997b00: 02 00 00 c3 83 7c 24 04 01 75 44 6a 00 8d 4c 24
10997b10: 0c e8 0a 30 ee ff b9 10 00 00 00 39 48 1c 75 25
10997b20: 39 88 3c 04 00 00 75 1d 83 b8 38 04 00 00 00 75
10997b30: 14 83 b8 40 04 00 00 00 75 0b 83 b8 44 04 00 00
10997b40: 00 75 02 b3 01 50 8d 4c 24 0c e8 f1 2f ee ff 8d
10997b50: 4c 24 08 e8 88 2f ee ff 8d 4c 24 08 e8 6f 31 ee
10997b60: ff 8d 4c 24 1c e8 26 8d f7 ff 8a c3 5b 81 c4 40
10997b70: 02 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997a80 <.text+0x996a80>:
10997a80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997a84:	81 ec 40 02 00 00                               	sub    esp,0x240
10997a8a:	53                                              	push   ebx
10997a8b:	50                                              	push   eax
10997a8c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10997a90:	32 db                                           	xor    bl,bl
10997a92:	e8 99 8d f7 ff                                  	call   0x10910830
10997a97:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10997a9b:	e8 a0 87 f7 ff                                  	call   0x10910240
10997aa0:	6a 00                                           	push   0x0
10997aa2:	6a 01                                           	push   0x1
10997aa4:	6a 06                                           	push   0x6
10997aa6:	6a 01                                           	push   0x1
10997aa8:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10997aac:	e8 cf 88 f7 ff                                  	call   0x10910380
10997ab1:	84 c0                                           	test   al,al
10997ab3:	0f 84 a8 00 00 00                               	je     0x10997b61
10997ab9:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997abd:	e8 9e 2f ee ff                                  	call   0x1087aa60
10997ac2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10997ac6:	51                                              	push   ecx
10997ac7:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10997acb:	e8 b0 2f ee ff                                  	call   0x1087aa80
10997ad0:	84 c0                                           	test   al,al
10997ad2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997ad6:	74 14                                           	je     0x10997aec
10997ad8:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10997adc:	52                                              	push   edx
10997add:	6a 04                                           	push   0x4
10997adf:	e8 2c 32 ee ff                                  	call   0x1087ad10
10997ae4:	84 c0                                           	test   al,al
10997ae6:	75 1c                                           	jne    0x10997b04
10997ae8:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997aec:	e8 df 31 ee ff                                  	call   0x1087acd0
10997af1:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10997af5:	e8 96 8d f7 ff                                  	call   0x10910890
10997afa:	32 c0                                           	xor    al,al
10997afc:	5b                                              	pop    ebx
10997afd:	81 c4 40 02 00 00                               	add    esp,0x240
10997b03:	c3                                              	ret
10997b04:	83 7c 24 04 01                                  	cmp    DWORD PTR [esp+0x4],0x1
10997b09:	75 44                                           	jne    0x10997b4f
10997b0b:	6a 00                                           	push   0x0
10997b0d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10997b11:	e8 0a 30 ee ff                                  	call   0x1087ab20
10997b16:	b9 10 00 00 00                                  	mov    ecx,0x10
10997b1b:	39 48 1c                                        	cmp    DWORD PTR [eax+0x1c],ecx
10997b1e:	75 25                                           	jne    0x10997b45
10997b20:	39 88 3c 04 00 00                               	cmp    DWORD PTR [eax+0x43c],ecx
10997b26:	75 1d                                           	jne    0x10997b45
10997b28:	83 b8 38 04 00 00 00                            	cmp    DWORD PTR [eax+0x438],0x0
10997b2f:	75 14                                           	jne    0x10997b45
10997b31:	83 b8 40 04 00 00 00                            	cmp    DWORD PTR [eax+0x440],0x0
10997b38:	75 0b                                           	jne    0x10997b45
10997b3a:	83 b8 44 04 00 00 00                            	cmp    DWORD PTR [eax+0x444],0x0
10997b41:	75 02                                           	jne    0x10997b45
10997b43:	b3 01                                           	mov    bl,0x1
10997b45:	50                                              	push   eax
10997b46:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10997b4a:	e8 f1 2f ee ff                                  	call   0x1087ab40
10997b4f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997b53:	e8 88 2f ee ff                                  	call   0x1087aae0
10997b58:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997b5c:	e8 6f 31 ee ff                                  	call   0x1087acd0
10997b61:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10997b65:	e8 26 8d f7 ff                                  	call   0x10910890
10997b6a:	8a c3                                           	mov    al,bl
10997b6c:	5b                                              	pop    ebx
10997b6d:	81 c4 40 02 00 00                               	add    esp,0x240
10997b73:	c3                                              	ret
10997b74:	cc                                              	int3
10997b75:	cc                                              	int3
10997b76:	cc                                              	int3
10997b77:	cc                                              	int3
10997b78:	cc                                              	int3
10997b79:	cc                                              	int3
10997b7a:	cc                                              	int3
10997b7b:	cc                                              	int3
10997b7c:	cc                                              	int3
10997b7d:	cc                                              	int3
10997b7e:	cc                                              	int3
10997b7f:	cc                                              	int3
