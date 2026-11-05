# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985c00 (EffectsManager_DrawStats)
Paired Ghidra pseudocode: 10985C00_EffectsManager_DrawStats.c
Window: [0x10985c00, 0x10985f30) (816 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985c00: 81 ec 7c 04 00 00 53 56 e8 43 75 b8 ff 8b f0 33
10985c10: db 3b f3 0f 84 06 03 00 00 8b 06 8b 90 ac 00 00
10985c20: 00 8b ce ff d2 8d 94 24 84 00 00 00 8d 64 24 00
10985c30: 8a 08 88 0a 83 c0 01 83 c2 01 84 c9 75 f2 8d 84
10985c40: 24 84 00 00 00 8d 48 01 8a 10 83 c0 01 84 d2 75
10985c50: f7 d9 84 24 8c 04 00 00 57 83 ec 08 d9 5c 24 04
10985c60: 2b c1 d9 84 24 94 04 00 00 d9 1c 24 50 8d 84 24
10985c70: 94 00 00 00 50 e8 e6 7a ff ff 8b 16 8b 92 b4 00
10985c80: 00 00 83 c4 10 6a 01 53 8d 44 24 14 50 8b ce 89
10985c90: 5c 24 18 89 5c 24 1c 89 5c 24 20 c7 44 24 24 4c
10985ca0: 69 b9 10 ff d2 68 64 f5 b4 10 68 b0 c5 b4 10 68
10985cb0: 64 ca b4 10 68 24 d5 b4 10 68 6c 1f b5 10 68 64
10985cc0: 1f b5 10 68 5c 1f b5 10 68 f0 9a b3 10 b8 44 82
10985cd0: ca 10 68 50 1f b5 10 89 44 24 4c 89 44 24 50 8d
10985ce0: 44 24 4c 68 1c 1f b5 10 50 c7 44 24 60 34 69 b9
10985cf0: 10 c7 44 24 5c 45 82 ca 10 e8 82 93 68 ff d9 84
10985d00: 24 bc 04 00 00 d8 84 24 c0 04 00 00 8b 7c 24 54
10985d10: 8b 4c 24 58 83 c4 24 d9 94 24 98 04 00 00 2b cf
10985d20: d9 5c 24 04 d9 84 24 94 04 00 00 d9 1c 24 51 57
10985d30: e8 2b 7a ff ff 8b 4c 24 20 8b 74 24 1c 2b ce b8
10985d40: 39 8e e3 38 f7 e9 c1 fa 03 8b c2 c1 e8 1f 83 c4
10985d50: 10 03 c2 89 5c 24 1c 0f 84 85 01 00 00 33 ff 55
10985d60: 8b 74 37 20 6a 4c 8d 4c 24 44 6a 00 51 e8 4c ab
10985d70: 10 00 d9 ee 8b 56 04 8b 52 14 83 c4 0c 8d 44 24
10985d80: 40 8d 4e 04 50 83 ec 08 d9 54 24 04 d9 1c 24 ff
10985d90: d2 8b 06 8b 50 44 bb 3a 7b ae 10 8b ce 89 5c 24
10985da0: 28 89 5c 24 24 8b eb ff d2 84 c0 74 08 c7 44 24
10985db0: 28 10 1f b5 10 8b 06 8b 50 48 8b ce ff d2 84 c0
10985dc0: 74 08 c7 44 24 24 04 1f b5 10 8b 46 44 8b c8 c1
10985dd0: e9 0a f6 c1 01 b9 f8 1e b5 10 75 02 8b cb 83 7e
10985de0: 14 02 7f 05 bb ec 1e b5 10 8b d0 c1 ea 06 f6 c2
10985df0: 01 74 07 bd e0 1e b5 10 eb 0c c1 e8 05 a8 01 74
10985e00: 05 bd d8 1e b5 10 8b 44 24 24 d9 46 28 8b 54 24
10985e10: 70 55 53 51 8b 4c 24 34 50 8b 44 24 78 51 8b 4c
10985e20: 24 6c 52 8b 54 24 68 50 8b 84 24 80 00 00 00 51
10985e30: 8b 4c 24 68 52 8b 54 24 68 50 8b 44 24 38 51 8b
10985e40: 0c 07 52 83 ec 08 dd 1c 24 51 8d 94 24 c8 00 00
10985e50: 00 68 9c 1e b5 10 52 ff 15 28 b6 aa 10 d9 84 24
10985e60: d8 04 00 00 d8 84 24 dc 04 00 00 8d 84 24 d0 00
10985e70: 00 00 83 c4 44 8d 48 01 d9 94 24 94 04 00 00 8a
10985e80: 10 83 c0 01 84 d2 75 f7 83 ec 08 d9 5c 24 04 2b
10985e90: c1 d9 84 24 98 04 00 00 d9 1c 24 50 8d 84 24 98
10985ea0: 00 00 00 50 e8 b7 78 ff ff 8b 4c 24 24 8b 74 24
10985eb0: 20 8b 5c 24 30 2b ce b8 39 8e e3 38 f7 e9 c1 fa
10985ec0: 03 8b ca c1 e9 1f 83 c3 01 03 ca 83 c4 10 83 c7
10985ed0: 24 3b d9 89 5c 24 20 0f 82 83 fe ff ff 8b 7c 24
10985ee0: 2c 5d 8b 54 24 30 2b d7 83 fa 01 7e 11 85 ff 74
10985ef0: 0d 57 e8 99 2f f9 ff 8b 74 24 10 83 c4 04 8b 44
10985f00: 24 10 50 56 8d 4c 24 14 e8 b3 ec d7 ff 8b 44 24
10985f10: 0c 85 c0 5f 74 09 50 e8 74 2f f9 ff 83 c4 04 5e
10985f20: 5b 81 c4 7c 04 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985c00 <.text+0x984c00>:
10985c00:	81 ec 7c 04 00 00                               	sub    esp,0x47c
10985c06:	53                                              	push   ebx
10985c07:	56                                              	push   esi
10985c08:	e8 43 75 b8 ff                                  	call   0x1050d150
10985c0d:	8b f0                                           	mov    esi,eax
10985c0f:	33 db                                           	xor    ebx,ebx
10985c11:	3b f3                                           	cmp    esi,ebx
10985c13:	0f 84 06 03 00 00                               	je     0x10985f1f
10985c19:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985c1b:	8b 90 ac 00 00 00                               	mov    edx,DWORD PTR [eax+0xac]
10985c21:	8b ce                                           	mov    ecx,esi
10985c23:	ff d2                                           	call   edx
10985c25:	8d 94 24 84 00 00 00                            	lea    edx,[esp+0x84]
10985c2c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10985c30:	8a 08                                           	mov    cl,BYTE PTR [eax]
10985c32:	88 0a                                           	mov    BYTE PTR [edx],cl
10985c34:	83 c0 01                                        	add    eax,0x1
10985c37:	83 c2 01                                        	add    edx,0x1
10985c3a:	84 c9                                           	test   cl,cl
10985c3c:	75 f2                                           	jne    0x10985c30
10985c3e:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
10985c45:	8d 48 01                                        	lea    ecx,[eax+0x1]
10985c48:	8a 10                                           	mov    dl,BYTE PTR [eax]
10985c4a:	83 c0 01                                        	add    eax,0x1
10985c4d:	84 d2                                           	test   dl,dl
10985c4f:	75 f7                                           	jne    0x10985c48
10985c51:	d9 84 24 8c 04 00 00                            	fld    DWORD PTR [esp+0x48c]
10985c58:	57                                              	push   edi
10985c59:	83 ec 08                                        	sub    esp,0x8
10985c5c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10985c60:	2b c1                                           	sub    eax,ecx
10985c62:	d9 84 24 94 04 00 00                            	fld    DWORD PTR [esp+0x494]
10985c69:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985c6c:	50                                              	push   eax
10985c6d:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
10985c74:	50                                              	push   eax
10985c75:	e8 e6 7a ff ff                                  	call   0x1097d760
10985c7a:	8b 16                                           	mov    edx,DWORD PTR [esi]
10985c7c:	8b 92 b4 00 00 00                               	mov    edx,DWORD PTR [edx+0xb4]
10985c82:	83 c4 10                                        	add    esp,0x10
10985c85:	6a 01                                           	push   0x1
10985c87:	53                                              	push   ebx
10985c88:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10985c8c:	50                                              	push   eax
10985c8d:	8b ce                                           	mov    ecx,esi
10985c8f:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
10985c93:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10985c97:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
10985c9b:	c7 44 24 24 4c 69 b9 10                         	mov    DWORD PTR [esp+0x24],0x10b9694c
10985ca3:	ff d2                                           	call   edx
10985ca5:	68 64 f5 b4 10                                  	push   0x10b4f564
10985caa:	68 b0 c5 b4 10                                  	push   0x10b4c5b0
10985caf:	68 64 ca b4 10                                  	push   0x10b4ca64
10985cb4:	68 24 d5 b4 10                                  	push   0x10b4d524
10985cb9:	68 6c 1f b5 10                                  	push   0x10b51f6c
10985cbe:	68 64 1f b5 10                                  	push   0x10b51f64
10985cc3:	68 5c 1f b5 10                                  	push   0x10b51f5c
10985cc8:	68 f0 9a b3 10                                  	push   0x10b39af0
10985ccd:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10985cd2:	68 50 1f b5 10                                  	push   0x10b51f50
10985cd7:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
10985cdb:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
10985cdf:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
10985ce3:	68 1c 1f b5 10                                  	push   0x10b51f1c
10985ce8:	50                                              	push   eax
10985ce9:	c7 44 24 60 34 69 b9 10                         	mov    DWORD PTR [esp+0x60],0x10b96934
10985cf1:	c7 44 24 5c 45 82 ca 10                         	mov    DWORD PTR [esp+0x5c],0x10ca8245
10985cf9:	e8 82 93 68 ff                                  	call   0x1000f080
10985cfe:	d9 84 24 bc 04 00 00                            	fld    DWORD PTR [esp+0x4bc]
10985d05:	d8 84 24 c0 04 00 00                            	fadd   DWORD PTR [esp+0x4c0]
10985d0c:	8b 7c 24 54                                     	mov    edi,DWORD PTR [esp+0x54]
10985d10:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
10985d14:	83 c4 24                                        	add    esp,0x24
10985d17:	d9 94 24 98 04 00 00                            	fst    DWORD PTR [esp+0x498]
10985d1e:	2b cf                                           	sub    ecx,edi
10985d20:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10985d24:	d9 84 24 94 04 00 00                            	fld    DWORD PTR [esp+0x494]
10985d2b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985d2e:	51                                              	push   ecx
10985d2f:	57                                              	push   edi
10985d30:	e8 2b 7a ff ff                                  	call   0x1097d760
10985d35:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10985d39:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
10985d3d:	2b ce                                           	sub    ecx,esi
10985d3f:	b8 39 8e e3 38                                  	mov    eax,0x38e38e39
10985d44:	f7 e9                                           	imul   ecx
10985d46:	c1 fa 03                                        	sar    edx,0x3
10985d49:	8b c2                                           	mov    eax,edx
10985d4b:	c1 e8 1f                                        	shr    eax,0x1f
10985d4e:	83 c4 10                                        	add    esp,0x10
10985d51:	03 c2                                           	add    eax,edx
10985d53:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10985d57:	0f 84 85 01 00 00                               	je     0x10985ee2
10985d5d:	33 ff                                           	xor    edi,edi
10985d5f:	55                                              	push   ebp
10985d60:	8b 74 37 20                                     	mov    esi,DWORD PTR [edi+esi*1+0x20]
10985d64:	6a 4c                                           	push   0x4c
10985d66:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10985d6a:	6a 00                                           	push   0x0
10985d6c:	51                                              	push   ecx
10985d6d:	e8 4c ab 10 00                                  	call   0x10a908be
10985d72:	d9 ee                                           	fldz
10985d74:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
10985d77:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
10985d7a:	83 c4 0c                                        	add    esp,0xc
10985d7d:	8d 44 24 40                                     	lea    eax,[esp+0x40]
10985d81:	8d 4e 04                                        	lea    ecx,[esi+0x4]
10985d84:	50                                              	push   eax
10985d85:	83 ec 08                                        	sub    esp,0x8
10985d88:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10985d8c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985d8f:	ff d2                                           	call   edx
10985d91:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985d93:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10985d96:	bb 3a 7b ae 10                                  	mov    ebx,0x10ae7b3a
10985d9b:	8b ce                                           	mov    ecx,esi
10985d9d:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
10985da1:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10985da5:	8b eb                                           	mov    ebp,ebx
10985da7:	ff d2                                           	call   edx
10985da9:	84 c0                                           	test   al,al
10985dab:	74 08                                           	je     0x10985db5
10985dad:	c7 44 24 28 10 1f b5 10                         	mov    DWORD PTR [esp+0x28],0x10b51f10
10985db5:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985db7:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
10985dba:	8b ce                                           	mov    ecx,esi
10985dbc:	ff d2                                           	call   edx
10985dbe:	84 c0                                           	test   al,al
10985dc0:	74 08                                           	je     0x10985dca
10985dc2:	c7 44 24 24 04 1f b5 10                         	mov    DWORD PTR [esp+0x24],0x10b51f04
10985dca:	8b 46 44                                        	mov    eax,DWORD PTR [esi+0x44]
10985dcd:	8b c8                                           	mov    ecx,eax
10985dcf:	c1 e9 0a                                        	shr    ecx,0xa
10985dd2:	f6 c1 01                                        	test   cl,0x1
10985dd5:	b9 f8 1e b5 10                                  	mov    ecx,0x10b51ef8
10985dda:	75 02                                           	jne    0x10985dde
10985ddc:	8b cb                                           	mov    ecx,ebx
10985dde:	83 7e 14 02                                     	cmp    DWORD PTR [esi+0x14],0x2
10985de2:	7f 05                                           	jg     0x10985de9
10985de4:	bb ec 1e b5 10                                  	mov    ebx,0x10b51eec
10985de9:	8b d0                                           	mov    edx,eax
10985deb:	c1 ea 06                                        	shr    edx,0x6
10985dee:	f6 c2 01                                        	test   dl,0x1
10985df1:	74 07                                           	je     0x10985dfa
10985df3:	bd e0 1e b5 10                                  	mov    ebp,0x10b51ee0
10985df8:	eb 0c                                           	jmp    0x10985e06
10985dfa:	c1 e8 05                                        	shr    eax,0x5
10985dfd:	a8 01                                           	test   al,0x1
10985dff:	74 05                                           	je     0x10985e06
10985e01:	bd d8 1e b5 10                                  	mov    ebp,0x10b51ed8
10985e06:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10985e0a:	d9 46 28                                        	fld    DWORD PTR [esi+0x28]
10985e0d:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
10985e11:	55                                              	push   ebp
10985e12:	53                                              	push   ebx
10985e13:	51                                              	push   ecx
10985e14:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10985e18:	50                                              	push   eax
10985e19:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
10985e1d:	51                                              	push   ecx
10985e1e:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10985e22:	52                                              	push   edx
10985e23:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
10985e27:	50                                              	push   eax
10985e28:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
10985e2f:	51                                              	push   ecx
10985e30:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10985e34:	52                                              	push   edx
10985e35:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
10985e39:	50                                              	push   eax
10985e3a:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10985e3e:	51                                              	push   ecx
10985e3f:	8b 0c 07                                        	mov    ecx,DWORD PTR [edi+eax*1]
10985e42:	52                                              	push   edx
10985e43:	83 ec 08                                        	sub    esp,0x8
10985e46:	dd 1c 24                                        	fstp   QWORD PTR [esp]
10985e49:	51                                              	push   ecx
10985e4a:	8d 94 24 c8 00 00 00                            	lea    edx,[esp+0xc8]
10985e51:	68 9c 1e b5 10                                  	push   0x10b51e9c
10985e56:	52                                              	push   edx
10985e57:	ff 15 28 b6 aa 10                               	call   DWORD PTR ds:0x10aab628
10985e5d:	d9 84 24 d8 04 00 00                            	fld    DWORD PTR [esp+0x4d8]
10985e64:	d8 84 24 dc 04 00 00                            	fadd   DWORD PTR [esp+0x4dc]
10985e6b:	8d 84 24 d0 00 00 00                            	lea    eax,[esp+0xd0]
10985e72:	83 c4 44                                        	add    esp,0x44
10985e75:	8d 48 01                                        	lea    ecx,[eax+0x1]
10985e78:	d9 94 24 94 04 00 00                            	fst    DWORD PTR [esp+0x494]
10985e7f:	8a 10                                           	mov    dl,BYTE PTR [eax]
10985e81:	83 c0 01                                        	add    eax,0x1
10985e84:	84 d2                                           	test   dl,dl
10985e86:	75 f7                                           	jne    0x10985e7f
10985e88:	83 ec 08                                        	sub    esp,0x8
10985e8b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10985e8f:	2b c1                                           	sub    eax,ecx
10985e91:	d9 84 24 98 04 00 00                            	fld    DWORD PTR [esp+0x498]
10985e98:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985e9b:	50                                              	push   eax
10985e9c:	8d 84 24 98 00 00 00                            	lea    eax,[esp+0x98]
10985ea3:	50                                              	push   eax
10985ea4:	e8 b7 78 ff ff                                  	call   0x1097d760
10985ea9:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10985ead:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10985eb1:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
10985eb5:	2b ce                                           	sub    ecx,esi
10985eb7:	b8 39 8e e3 38                                  	mov    eax,0x38e38e39
10985ebc:	f7 e9                                           	imul   ecx
10985ebe:	c1 fa 03                                        	sar    edx,0x3
10985ec1:	8b ca                                           	mov    ecx,edx
10985ec3:	c1 e9 1f                                        	shr    ecx,0x1f
10985ec6:	83 c3 01                                        	add    ebx,0x1
10985ec9:	03 ca                                           	add    ecx,edx
10985ecb:	83 c4 10                                        	add    esp,0x10
10985ece:	83 c7 24                                        	add    edi,0x24
10985ed1:	3b d9                                           	cmp    ebx,ecx
10985ed3:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
10985ed7:	0f 82 83 fe ff ff                               	jb     0x10985d60
10985edd:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
10985ee1:	5d                                              	pop    ebp
10985ee2:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10985ee6:	2b d7                                           	sub    edx,edi
10985ee8:	83 fa 01                                        	cmp    edx,0x1
10985eeb:	7e 11                                           	jle    0x10985efe
10985eed:	85 ff                                           	test   edi,edi
10985eef:	74 0d                                           	je     0x10985efe
10985ef1:	57                                              	push   edi
10985ef2:	e8 99 2f f9 ff                                  	call   0x10918e90
10985ef7:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10985efb:	83 c4 04                                        	add    esp,0x4
10985efe:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10985f02:	50                                              	push   eax
10985f03:	56                                              	push   esi
10985f04:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10985f08:	e8 b3 ec d7 ff                                  	call   0x10704bc0
10985f0d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10985f11:	85 c0                                           	test   eax,eax
10985f13:	5f                                              	pop    edi
10985f14:	74 09                                           	je     0x10985f1f
10985f16:	50                                              	push   eax
10985f17:	e8 74 2f f9 ff                                  	call   0x10918e90
10985f1c:	83 c4 04                                        	add    esp,0x4
10985f1f:	5e                                              	pop    esi
10985f20:	5b                                              	pop    ebx
10985f21:	81 c4 7c 04 00 00                               	add    esp,0x47c
10985f27:	c3                                              	ret
10985f28:	cc                                              	int3
10985f29:	cc                                              	int3
10985f2a:	cc                                              	int3
10985f2b:	cc                                              	int3
10985f2c:	cc                                              	int3
10985f2d:	cc                                              	int3
10985f2e:	cc                                              	int3
10985f2f:	cc                                              	int3
