# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2980 (DirectTargetOf_GameUtils_GameUtils_SetDebugOption)
Paired Ghidra pseudocode: 00EC2980_DirectTargetOf_GameUtils_GameUtils_SetDebugOption.c
Window: [0x00ec2980, 0x00ec2c70) (752 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2980: 83 ec 28 56 57 be 54 8e 1c 01 bf 56 8e 1c 01 c7
00ec2990: 44 24 1c f0 3b 00 01 89 74 24 10 89 74 24 14 89
00ec29a0: 7c 24 18 e8 e8 69 8a ff 85 c0 0f 84 30 01 00 00
00ec29b0: 8b 4c 24 34 8b 10 8b 52 58 51 8b c8 ff d2 85 c0
00ec29c0: 0f 84 1a 01 00 00 66 83 38 00 0f 84 10 01 00 00
00ec29d0: 50 8d 4c 24 14 e8 76 65 54 ff c7 44 24 2c f0 3b
00ec29e0: 00 01 89 74 24 20 89 74 24 24 89 7c 24 28 e8 9d
00ec29f0: 69 8a ff 85 c0 0f 84 25 02 00 00 8b 4c 24 38 8b
00ec2a00: 10 8b 52 58 51 8b c8 ff d2 85 c0 0f 84 0f 02 00
00ec2a10: 00 66 83 38 00 0f 84 05 02 00 00 50 8d 4c 24 24
00ec2a20: e8 2b 65 54 ff b8 08 34 0f 01 8d 9b 00 00 00 00
00ec2a30: 83 c0 02 66 83 38 00 75 f7 8b 74 24 14 8b 4c 24
00ec2a40: 10 2d 08 34 0f 01 d1 f8 03 c0 2b f1 8b f8 d1 fe
00ec2a50: d1 ff 3b fe 89 74 24 0c 89 7c 24 08 8d 44 24 08
00ec2a60: 7c 04 8d 44 24 0c 8b 00 50 68 08 34 0f 01 51 e8
00ec2a70: 6c 0e 62 ff 83 c4 0c 85 c0 0f 85 cb 00 00 00 3b
00ec2a80: f7 0f 8c c3 00 00 00 3b f7 0f 9f c0 85 c0 0f 85
00ec2a90: b6 00 00 00 e8 d7 56 82 ff 8b f0 85 f6 0f 84 7d
00ec2aa0: 01 00 00 8d 44 24 0c 50 8d 4c 24 0c 51 8b ce c7
00ec2ab0: 44 24 10 00 00 00 00 c7 44 24 14 00 00 00 00 e8
00ec2ac0: 7c 57 82 ff 68 d8 1c fc 00 8d 4c 24 24 e8 ae 0e
00ec2ad0: 62 ff 85 c0 8b ce 75 1d 8b 54 24 08 50 52 eb 1f
00ec2ae0: 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02
00ec2af0: e9 5a 01 00 00 8b 44 24 08 68 00 f0 ff 7f 50 e8
00ec2b00: 5c 57 82 ff 8b 4c 24 28 8b 44 24 20 2b c8 83 e1
00ec2b10: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 c0 19 62 ff
00ec2b20: 83 c4 04 8b 54 24 18 8b 44 24 10 2b d0 83 e2 fe
00ec2b30: 83 fa 02 7e 0d 85 c0 74 09 50 e8 a1 19 62 ff 83
00ec2b40: c4 04 5f b0 01 5e 83 c4 28 c3 68 ec 33 0f 01 8d
00ec2b50: 4c 24 14 e8 28 0e 62 ff 85 c0 75 54 e8 0f 56 82
00ec2b60: ff 8b f0 85 f6 8d 4c 24 20 75 16 e8 80 cd 62 ff
00ec2b70: 8d 4c 24 10 e8 77 cd 62 ff 5f 32 c0 5e 83 c4 28
00ec2b80: c3 68 d8 1c fc 00 e8 f5 0d 62 ff 85 c0 0f 94 c0
00ec2b90: 8d 4c 24 20 88 86 76 02 00 00 e8 51 cd 62 ff 8d
00ec2ba0: 4c 24 10 e8 48 cd 62 ff 5f b0 01 5e 83 c4 28 c3
00ec2bb0: 68 d0 33 0f 01 8d 4c 24 14 e8 c2 0d 62 ff 85 c0
00ec2bc0: 75 2a 68 d8 1c fc 00 8d 4c 24 24 e8 b0 0d 62 ff
00ec2bd0: 85 c0 75 0c 6a 01 e8 15 60 6c ff 83 c4 04 eb 40
00ec2be0: 6a 00 e8 09 60 6c ff 83 c4 04 eb 34 68 9c 33 0f
00ec2bf0: 01 8d 4c 24 14 e8 86 0d 62 ff 85 c0 75 22 8b 4c
00ec2c00: 24 20 51 e8 78 70 91 ff 83 c4 04 8b f0 e8 7e d3
00ec2c10: b1 ff 85 c0 74 0a 8b 10 8b c8 8b 42 18 56 ff d0
00ec2c20: 8b 44 24 20 8b 4c 24 28 2b c8 83 e1 fe 83 f9 02
00ec2c30: 7e 0d 85 c0 74 09 50 e8 a4 18 62 ff 83 c4 04 8b
00ec2c40: 44 24 10 8b 54 24 18 2b d0 83 e2 fe 83 fa 02 7e
00ec2c50: 0d 85 c0 74 09 50 e8 85 18 62 ff 83 c4 04 5f 32
00ec2c60: c0 5e 83 c4 28 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2980 <.text+0xac1980>:
  ec2980:	83 ec 28                                        	sub    esp,0x28
  ec2983:	56                                              	push   esi
  ec2984:	57                                              	push   edi
  ec2985:	be 54 8e 1c 01                                  	mov    esi,0x11c8e54
  ec298a:	bf 56 8e 1c 01                                  	mov    edi,0x11c8e56
  ec298f:	c7 44 24 1c f0 3b 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003bf0
  ec2997:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  ec299b:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  ec299f:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  ec29a3:	e8 e8 69 8a ff                                  	call   0x769390
  ec29a8:	85 c0                                           	test   eax,eax
  ec29aa:	0f 84 30 01 00 00                               	je     0xec2ae0
  ec29b0:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ec29b4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec29b6:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec29b9:	51                                              	push   ecx
  ec29ba:	8b c8                                           	mov    ecx,eax
  ec29bc:	ff d2                                           	call   edx
  ec29be:	85 c0                                           	test   eax,eax
  ec29c0:	0f 84 1a 01 00 00                               	je     0xec2ae0
  ec29c6:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ec29ca:	0f 84 10 01 00 00                               	je     0xec2ae0
  ec29d0:	50                                              	push   eax
  ec29d1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec29d5:	e8 76 65 54 ff                                  	call   0x408f50
  ec29da:	c7 44 24 2c f0 3b 00 01                         	mov    DWORD PTR [esp+0x2c],0x1003bf0
  ec29e2:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  ec29e6:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  ec29ea:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  ec29ee:	e8 9d 69 8a ff                                  	call   0x769390
  ec29f3:	85 c0                                           	test   eax,eax
  ec29f5:	0f 84 25 02 00 00                               	je     0xec2c20
  ec29fb:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  ec29ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec2a01:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec2a04:	51                                              	push   ecx
  ec2a05:	8b c8                                           	mov    ecx,eax
  ec2a07:	ff d2                                           	call   edx
  ec2a09:	85 c0                                           	test   eax,eax
  ec2a0b:	0f 84 0f 02 00 00                               	je     0xec2c20
  ec2a11:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ec2a15:	0f 84 05 02 00 00                               	je     0xec2c20
  ec2a1b:	50                                              	push   eax
  ec2a1c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec2a20:	e8 2b 65 54 ff                                  	call   0x408f50
  ec2a25:	b8 08 34 0f 01                                  	mov    eax,0x10f3408
  ec2a2a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  ec2a30:	83 c0 02                                        	add    eax,0x2
  ec2a33:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ec2a37:	75 f7                                           	jne    0xec2a30
  ec2a39:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  ec2a3d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec2a41:	2d 08 34 0f 01                                  	sub    eax,0x10f3408
  ec2a46:	d1 f8                                           	sar    eax,1
  ec2a48:	03 c0                                           	add    eax,eax
  ec2a4a:	2b f1                                           	sub    esi,ecx
  ec2a4c:	8b f8                                           	mov    edi,eax
  ec2a4e:	d1 fe                                           	sar    esi,1
  ec2a50:	d1 ff                                           	sar    edi,1
  ec2a52:	3b fe                                           	cmp    edi,esi
  ec2a54:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  ec2a58:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  ec2a5c:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ec2a60:	7c 04                                           	jl     0xec2a66
  ec2a62:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ec2a66:	8b 00                                           	mov    eax,DWORD PTR [eax]
  ec2a68:	50                                              	push   eax
  ec2a69:	68 08 34 0f 01                                  	push   0x10f3408
  ec2a6e:	51                                              	push   ecx
  ec2a6f:	e8 6c 0e 62 ff                                  	call   0x4e38e0
  ec2a74:	83 c4 0c                                        	add    esp,0xc
  ec2a77:	85 c0                                           	test   eax,eax
  ec2a79:	0f 85 cb 00 00 00                               	jne    0xec2b4a
  ec2a7f:	3b f7                                           	cmp    esi,edi
  ec2a81:	0f 8c c3 00 00 00                               	jl     0xec2b4a
  ec2a87:	3b f7                                           	cmp    esi,edi
  ec2a89:	0f 9f c0                                        	setg   al
  ec2a8c:	85 c0                                           	test   eax,eax
  ec2a8e:	0f 85 b6 00 00 00                               	jne    0xec2b4a
  ec2a94:	e8 d7 56 82 ff                                  	call   0x6e8170
  ec2a99:	8b f0                                           	mov    esi,eax
  ec2a9b:	85 f6                                           	test   esi,esi
  ec2a9d:	0f 84 7d 01 00 00                               	je     0xec2c20
  ec2aa3:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ec2aa7:	50                                              	push   eax
  ec2aa8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec2aac:	51                                              	push   ecx
  ec2aad:	8b ce                                           	mov    ecx,esi
  ec2aaf:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ec2ab7:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ec2abf:	e8 7c 57 82 ff                                  	call   0x6e8240
  ec2ac4:	68 d8 1c fc 00                                  	push   0xfc1cd8
  ec2ac9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec2acd:	e8 ae 0e 62 ff                                  	call   0x4e3980
  ec2ad2:	85 c0                                           	test   eax,eax
  ec2ad4:	8b ce                                           	mov    ecx,esi
  ec2ad6:	75 1d                                           	jne    0xec2af5
  ec2ad8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  ec2adc:	50                                              	push   eax
  ec2add:	52                                              	push   edx
  ec2ade:	eb 1f                                           	jmp    0xec2aff
  ec2ae0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec2ae4:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec2ae8:	2b c8                                           	sub    ecx,eax
  ec2aea:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2aed:	83 f9 02                                        	cmp    ecx,0x2
  ec2af0:	e9 5a 01 00 00                                  	jmp    0xec2c4f
  ec2af5:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ec2af9:	68 00 f0 ff 7f                                  	push   0x7ffff000
  ec2afe:	50                                              	push   eax
  ec2aff:	e8 5c 57 82 ff                                  	call   0x6e8260
  ec2b04:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ec2b08:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ec2b0c:	2b c8                                           	sub    ecx,eax
  ec2b0e:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2b11:	83 f9 02                                        	cmp    ecx,0x2
  ec2b14:	7e 0d                                           	jle    0xec2b23
  ec2b16:	85 c0                                           	test   eax,eax
  ec2b18:	74 09                                           	je     0xec2b23
  ec2b1a:	50                                              	push   eax
  ec2b1b:	e8 c0 19 62 ff                                  	call   0x4e44e0
  ec2b20:	83 c4 04                                        	add    esp,0x4
  ec2b23:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ec2b27:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec2b2b:	2b d0                                           	sub    edx,eax
  ec2b2d:	83 e2 fe                                        	and    edx,0xfffffffe
  ec2b30:	83 fa 02                                        	cmp    edx,0x2
  ec2b33:	7e 0d                                           	jle    0xec2b42
  ec2b35:	85 c0                                           	test   eax,eax
  ec2b37:	74 09                                           	je     0xec2b42
  ec2b39:	50                                              	push   eax
  ec2b3a:	e8 a1 19 62 ff                                  	call   0x4e44e0
  ec2b3f:	83 c4 04                                        	add    esp,0x4
  ec2b42:	5f                                              	pop    edi
  ec2b43:	b0 01                                           	mov    al,0x1
  ec2b45:	5e                                              	pop    esi
  ec2b46:	83 c4 28                                        	add    esp,0x28
  ec2b49:	c3                                              	ret
  ec2b4a:	68 ec 33 0f 01                                  	push   0x10f33ec
  ec2b4f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec2b53:	e8 28 0e 62 ff                                  	call   0x4e3980
  ec2b58:	85 c0                                           	test   eax,eax
  ec2b5a:	75 54                                           	jne    0xec2bb0
  ec2b5c:	e8 0f 56 82 ff                                  	call   0x6e8170
  ec2b61:	8b f0                                           	mov    esi,eax
  ec2b63:	85 f6                                           	test   esi,esi
  ec2b65:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec2b69:	75 16                                           	jne    0xec2b81
  ec2b6b:	e8 80 cd 62 ff                                  	call   0x4ef8f0
  ec2b70:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec2b74:	e8 77 cd 62 ff                                  	call   0x4ef8f0
  ec2b79:	5f                                              	pop    edi
  ec2b7a:	32 c0                                           	xor    al,al
  ec2b7c:	5e                                              	pop    esi
  ec2b7d:	83 c4 28                                        	add    esp,0x28
  ec2b80:	c3                                              	ret
  ec2b81:	68 d8 1c fc 00                                  	push   0xfc1cd8
  ec2b86:	e8 f5 0d 62 ff                                  	call   0x4e3980
  ec2b8b:	85 c0                                           	test   eax,eax
  ec2b8d:	0f 94 c0                                        	sete   al
  ec2b90:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec2b94:	88 86 76 02 00 00                               	mov    BYTE PTR [esi+0x276],al
  ec2b9a:	e8 51 cd 62 ff                                  	call   0x4ef8f0
  ec2b9f:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec2ba3:	e8 48 cd 62 ff                                  	call   0x4ef8f0
  ec2ba8:	5f                                              	pop    edi
  ec2ba9:	b0 01                                           	mov    al,0x1
  ec2bab:	5e                                              	pop    esi
  ec2bac:	83 c4 28                                        	add    esp,0x28
  ec2baf:	c3                                              	ret
  ec2bb0:	68 d0 33 0f 01                                  	push   0x10f33d0
  ec2bb5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec2bb9:	e8 c2 0d 62 ff                                  	call   0x4e3980
  ec2bbe:	85 c0                                           	test   eax,eax
  ec2bc0:	75 2a                                           	jne    0xec2bec
  ec2bc2:	68 d8 1c fc 00                                  	push   0xfc1cd8
  ec2bc7:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec2bcb:	e8 b0 0d 62 ff                                  	call   0x4e3980
  ec2bd0:	85 c0                                           	test   eax,eax
  ec2bd2:	75 0c                                           	jne    0xec2be0
  ec2bd4:	6a 01                                           	push   0x1
  ec2bd6:	e8 15 60 6c ff                                  	call   0x588bf0
  ec2bdb:	83 c4 04                                        	add    esp,0x4
  ec2bde:	eb 40                                           	jmp    0xec2c20
  ec2be0:	6a 00                                           	push   0x0
  ec2be2:	e8 09 60 6c ff                                  	call   0x588bf0
  ec2be7:	83 c4 04                                        	add    esp,0x4
  ec2bea:	eb 34                                           	jmp    0xec2c20
  ec2bec:	68 9c 33 0f 01                                  	push   0x10f339c
  ec2bf1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec2bf5:	e8 86 0d 62 ff                                  	call   0x4e3980
  ec2bfa:	85 c0                                           	test   eax,eax
  ec2bfc:	75 22                                           	jne    0xec2c20
  ec2bfe:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  ec2c02:	51                                              	push   ecx
  ec2c03:	e8 78 70 91 ff                                  	call   0x7d9c80
  ec2c08:	83 c4 04                                        	add    esp,0x4
  ec2c0b:	8b f0                                           	mov    esi,eax
  ec2c0d:	e8 7e d3 b1 ff                                  	call   0x9dff90
  ec2c12:	85 c0                                           	test   eax,eax
  ec2c14:	74 0a                                           	je     0xec2c20
  ec2c16:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec2c18:	8b c8                                           	mov    ecx,eax
  ec2c1a:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  ec2c1d:	56                                              	push   esi
  ec2c1e:	ff d0                                           	call   eax
  ec2c20:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ec2c24:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ec2c28:	2b c8                                           	sub    ecx,eax
  ec2c2a:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2c2d:	83 f9 02                                        	cmp    ecx,0x2
  ec2c30:	7e 0d                                           	jle    0xec2c3f
  ec2c32:	85 c0                                           	test   eax,eax
  ec2c34:	74 09                                           	je     0xec2c3f
  ec2c36:	50                                              	push   eax
  ec2c37:	e8 a4 18 62 ff                                  	call   0x4e44e0
  ec2c3c:	83 c4 04                                        	add    esp,0x4
  ec2c3f:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec2c43:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ec2c47:	2b d0                                           	sub    edx,eax
  ec2c49:	83 e2 fe                                        	and    edx,0xfffffffe
  ec2c4c:	83 fa 02                                        	cmp    edx,0x2
  ec2c4f:	7e 0d                                           	jle    0xec2c5e
  ec2c51:	85 c0                                           	test   eax,eax
  ec2c53:	74 09                                           	je     0xec2c5e
  ec2c55:	50                                              	push   eax
  ec2c56:	e8 85 18 62 ff                                  	call   0x4e44e0
  ec2c5b:	83 c4 04                                        	add    esp,0x4
  ec2c5e:	5f                                              	pop    edi
  ec2c5f:	32 c0                                           	xor    al,al
  ec2c61:	5e                                              	pop    esi
  ec2c62:	83 c4 28                                        	add    esp,0x28
  ec2c65:	c3                                              	ret
  ec2c66:	cc                                              	int3
  ec2c67:	cc                                              	int3
  ec2c68:	cc                                              	int3
  ec2c69:	cc                                              	int3
  ec2c6a:	cc                                              	int3
  ec2c6b:	cc                                              	int3
  ec2c6c:	cc                                              	int3
  ec2c6d:	cc                                              	int3
  ec2c6e:	cc                                              	int3
  ec2c6f:	cc                                              	int3
