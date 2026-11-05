# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989ad0 (PresetEncoderWrap_EncodePresetData)
Paired Ghidra pseudocode: 10989AD0_PresetEncoderWrap_EncodePresetData.c
Window: [0x10989ad0, 0x10989c30) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989ad0: 81 ec a4 00 00 00 8d 4c 24 44 e8 a1 0d a3 ff 6a
10989ae0: 00 6a 00 6a 00 8d 4c 24 0c e8 a2 a5 f8 ff d9 e8
10989af0: 83 44 24 0c 01 51 d9 1c 24 6a 01 8d 4c 24 08 e8
10989b00: 6c 9f f8 ff 8b 84 24 a8 00 00 00 50 8d 4c 24 48
10989b10: e8 0b 13 a3 ff 6a 01 8d 4c 24 04 51 8d 4c 24 34
10989b20: e8 7b 27 c4 ff 6a 00 8d 54 24 30 52 8d 4c 24 4c
10989b30: e8 eb 07 a3 ff 84 c0 8d 4c 24 2c 75 32 e8 be 0d
10989b40: c4 ff 8b 4c 24 04 85 c9 c7 04 24 10 ad b8 10 74
10989b50: 05 e8 da 9e f8 ff 8d 4c 24 44 c7 04 24 e4 fe aa
10989b60: 10 e8 3a 0f a3 ff 33 c0 81 c4 a4 00 00 00 c3 56
10989b70: 57 e8 ba 17 c4 ff 8b f8 57 6a 00 6a 11 ff 15 e4
10989b80: b6 aa 10 8b f0 56 ff 15 e8 b6 aa 10 85 c0 7c 5c
10989b90: 6a 00 6a 00 8d 4c 24 10 e8 43 a3 f8 ff 8b 46 0c
10989ba0: 57 50 8d 4c 24 10 e8 c5 a3 f8 ff 56 ff 15 ec b6
10989bb0: aa 10 8d 4c 24 34 e8 45 0d c4 ff 8b 4c 24 0c 85
10989bc0: c9 c7 44 24 08 10 ad b8 10 74 05 e8 60 9e f8 ff
10989bd0: 8d 4c 24 4c c7 44 24 08 e4 fe aa 10 e8 bf 0e a3
10989be0: ff 5f 8b c6 5e 81 c4 a4 00 00 00 c3 56 ff 15 f8
10989bf0: b6 aa 10 8d 4c 24 34 e8 04 0d c4 ff 8b 4c 24 0c
10989c00: 85 c9 c7 44 24 08 10 ad b8 10 74 05 e8 1f 9e f8
10989c10: ff 8d 4c 24 4c c7 44 24 08 e4 fe aa 10 e8 7e 0e
10989c20: a3 ff 5f 33 c0 5e 81 c4 a4 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10989ad0 <.text+0x988ad0>:
10989ad0:	81 ec a4 00 00 00                               	sub    esp,0xa4
10989ad6:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10989ada:	e8 a1 0d a3 ff                                  	call   0x103ba880
10989adf:	6a 00                                           	push   0x0
10989ae1:	6a 00                                           	push   0x0
10989ae3:	6a 00                                           	push   0x0
10989ae5:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10989ae9:	e8 a2 a5 f8 ff                                  	call   0x10914090
10989aee:	d9 e8                                           	fld1
10989af0:	83 44 24 0c 01                                  	add    DWORD PTR [esp+0xc],0x1
10989af5:	51                                              	push   ecx
10989af6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10989af9:	6a 01                                           	push   0x1
10989afb:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10989aff:	e8 6c 9f f8 ff                                  	call   0x10913a70
10989b04:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
10989b0b:	50                                              	push   eax
10989b0c:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10989b10:	e8 0b 13 a3 ff                                  	call   0x103bae20
10989b15:	6a 01                                           	push   0x1
10989b17:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10989b1b:	51                                              	push   ecx
10989b1c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10989b20:	e8 7b 27 c4 ff                                  	call   0x105cc2a0
10989b25:	6a 00                                           	push   0x0
10989b27:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10989b2b:	52                                              	push   edx
10989b2c:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10989b30:	e8 eb 07 a3 ff                                  	call   0x103ba320
10989b35:	84 c0                                           	test   al,al
10989b37:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10989b3b:	75 32                                           	jne    0x10989b6f
10989b3d:	e8 be 0d c4 ff                                  	call   0x105ca900
10989b42:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989b46:	85 c9                                           	test   ecx,ecx
10989b48:	c7 04 24 10 ad b8 10                            	mov    DWORD PTR [esp],0x10b8ad10
10989b4f:	74 05                                           	je     0x10989b56
10989b51:	e8 da 9e f8 ff                                  	call   0x10913a30
10989b56:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10989b5a:	c7 04 24 e4 fe aa 10                            	mov    DWORD PTR [esp],0x10aafee4
10989b61:	e8 3a 0f a3 ff                                  	call   0x103baaa0
10989b66:	33 c0                                           	xor    eax,eax
10989b68:	81 c4 a4 00 00 00                               	add    esp,0xa4
10989b6e:	c3                                              	ret
10989b6f:	56                                              	push   esi
10989b70:	57                                              	push   edi
10989b71:	e8 ba 17 c4 ff                                  	call   0x105cb330
10989b76:	8b f8                                           	mov    edi,eax
10989b78:	57                                              	push   edi
10989b79:	6a 00                                           	push   0x0
10989b7b:	6a 11                                           	push   0x11
10989b7d:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
10989b83:	8b f0                                           	mov    esi,eax
10989b85:	56                                              	push   esi
10989b86:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10989b8c:	85 c0                                           	test   eax,eax
10989b8e:	7c 5c                                           	jl     0x10989bec
10989b90:	6a 00                                           	push   0x0
10989b92:	6a 00                                           	push   0x0
10989b94:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10989b98:	e8 43 a3 f8 ff                                  	call   0x10913ee0
10989b9d:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
10989ba0:	57                                              	push   edi
10989ba1:	50                                              	push   eax
10989ba2:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10989ba6:	e8 c5 a3 f8 ff                                  	call   0x10913f70
10989bab:	56                                              	push   esi
10989bac:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10989bb2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10989bb6:	e8 45 0d c4 ff                                  	call   0x105ca900
10989bbb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10989bbf:	85 c9                                           	test   ecx,ecx
10989bc1:	c7 44 24 08 10 ad b8 10                         	mov    DWORD PTR [esp+0x8],0x10b8ad10
10989bc9:	74 05                                           	je     0x10989bd0
10989bcb:	e8 60 9e f8 ff                                  	call   0x10913a30
10989bd0:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10989bd4:	c7 44 24 08 e4 fe aa 10                         	mov    DWORD PTR [esp+0x8],0x10aafee4
10989bdc:	e8 bf 0e a3 ff                                  	call   0x103baaa0
10989be1:	5f                                              	pop    edi
10989be2:	8b c6                                           	mov    eax,esi
10989be4:	5e                                              	pop    esi
10989be5:	81 c4 a4 00 00 00                               	add    esp,0xa4
10989beb:	c3                                              	ret
10989bec:	56                                              	push   esi
10989bed:	ff 15 f8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6f8
10989bf3:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10989bf7:	e8 04 0d c4 ff                                  	call   0x105ca900
10989bfc:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10989c00:	85 c9                                           	test   ecx,ecx
10989c02:	c7 44 24 08 10 ad b8 10                         	mov    DWORD PTR [esp+0x8],0x10b8ad10
10989c0a:	74 05                                           	je     0x10989c11
10989c0c:	e8 1f 9e f8 ff                                  	call   0x10913a30
10989c11:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10989c15:	c7 44 24 08 e4 fe aa 10                         	mov    DWORD PTR [esp+0x8],0x10aafee4
10989c1d:	e8 7e 0e a3 ff                                  	call   0x103baaa0
10989c22:	5f                                              	pop    edi
10989c23:	33 c0                                           	xor    eax,eax
10989c25:	5e                                              	pop    esi
10989c26:	81 c4 a4 00 00 00                               	add    esp,0xa4
10989c2c:	c3                                              	ret
10989c2d:	cc                                              	int3
10989c2e:	cc                                              	int3
10989c2f:	cc                                              	int3
