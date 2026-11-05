# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986d60 (ModelProxyWrap_TextureTest)
Paired Ghidra pseudocode: 10986D60_ModelProxyWrap_TextureTest.c
Window: [0x10986d60, 0x10986f30) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986d60: 83 ec 40 8b 0d 88 bd c7 10 8d 44 24 08 50 68 85
10986d70: fd c0 6c 89 4c 24 14 e8 14 64 c0 ff 84 c0 0f 84
10986d80: a5 01 00 00 8b 4c 24 44 53 55 56 57 33 db e8 9d
10986d90: b2 b4 ff 8b f0 8b ce e8 14 ed fb ff 53 8b ce e8
10986da0: bc 03 b4 ff 8b e8 8b cd e8 03 19 b9 ff 33 ff 85
10986db0: c0 89 44 24 54 0f 86 6a 01 00 00 eb 03 8d 49 00
10986dc0: 85 db 75 4f 8b 4d 40 8b 0c b9 e8 e1 ec fb ff 8b
10986dd0: f0 8b ce e8 d8 93 b3 ff 8b ce e8 d1 69 fc ff 3d
10986de0: ae 59 be c1 75 1c 8b 54 24 18 8b 4c 24 1c 52 e8
10986df0: 5c 7b 85 ff 85 c0 74 0a 66 83 78 06 05 75 03 8b
10986e00: 58 0c 83 c7 01 3b 7c 24 54 72 b5 85 db 0f 84 12
10986e10: 01 00 00 8b 6b 30 8d 4c 24 10 51 33 ff 89 7c 24
10986e20: 14 8b 45 00 8b 10 68 8c 69 b9 10 55 ff d2 8b 44
10986e30: 24 10 8d 54 24 14 52 89 7c 24 18 8b 08 57 50 8b
10986e40: 41 48 ff d0 57 57 57 57 68 6c 6a b9 10 6a 34 e8
10986e50: 5c 20 f9 ff 83 c4 18 3b c7 74 09 8b c8 e8 9e bf
10986e60: a8 ff 8b f8 8b 17 8b 42 04 8b cf ff d0 8d 4c 24
10986e70: 28 e8 aa a3 a8 ff 8b 5c 24 60 8b 4c 24 5c 68 64
10986e80: 69 b9 10 68 00 01 00 00 6a 3d 6a 01 53 51 8b cf
10986e90: e8 2b c0 a8 ff 84 c0 74 77 8d 54 24 28 52 6a 00
10986ea0: 8b cf e8 49 b8 a8 ff 8b 74 24 4c 85 f6 74 58 8b
10986eb0: 06 8b 50 34 6a 10 6a 00 8d 4c 24 28 51 56 ff d2
10986ec0: 85 c0 7c 43 0f af 5c 24 64 8b 44 24 58 8b 4c 24
10986ed0: 24 53 50 51 e8 49 9a 10 00 8b 16 8b 42 38 83 c4
10986ee0: 0c 56 ff d0 8b 4c 24 14 6a 00 6a 03 6a 00 6a 00
10986ef0: 56 6a 00 6a 00 51 e8 ef 3b 01 00 6a ff 6a ff 6a
10986f00: 00 55 e8 e9 3b 01 00 8b 17 8b 42 08 8b cf ff d0
10986f10: 8b 44 24 10 8b 08 8b 51 08 50 ff d2 8d 4c 24 28
10986f20: e8 bb a0 a8 ff 5f 5e 5d 5b 83 c4 40 c3 cc cc cc

LINEAR DISASSEMBLY
10986d60 <.text+0x985d60>:
10986d60:	83 ec 40                                        	sub    esp,0x40
10986d63:	8b 0d 88 bd c7 10                               	mov    ecx,DWORD PTR ds:0x10c7bd88
10986d69:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10986d6d:	50                                              	push   eax
10986d6e:	68 85 fd c0 6c                                  	push   0x6cc0fd85
10986d73:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10986d77:	e8 14 64 c0 ff                                  	call   0x1058d190
10986d7c:	84 c0                                           	test   al,al
10986d7e:	0f 84 a5 01 00 00                               	je     0x10986f29
10986d84:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10986d88:	53                                              	push   ebx
10986d89:	55                                              	push   ebp
10986d8a:	56                                              	push   esi
10986d8b:	57                                              	push   edi
10986d8c:	33 db                                           	xor    ebx,ebx
10986d8e:	e8 9d b2 b4 ff                                  	call   0x104d2030
10986d93:	8b f0                                           	mov    esi,eax
10986d95:	8b ce                                           	mov    ecx,esi
10986d97:	e8 14 ed fb ff                                  	call   0x10945ab0
10986d9c:	53                                              	push   ebx
10986d9d:	8b ce                                           	mov    ecx,esi
10986d9f:	e8 bc 03 b4 ff                                  	call   0x104c7160
10986da4:	8b e8                                           	mov    ebp,eax
10986da6:	8b cd                                           	mov    ecx,ebp
10986da8:	e8 03 19 b9 ff                                  	call   0x105186b0
10986dad:	33 ff                                           	xor    edi,edi
10986daf:	85 c0                                           	test   eax,eax
10986db1:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
10986db5:	0f 86 6a 01 00 00                               	jbe    0x10986f25
10986dbb:	eb 03                                           	jmp    0x10986dc0
10986dbd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10986dc0:	85 db                                           	test   ebx,ebx
10986dc2:	75 4f                                           	jne    0x10986e13
10986dc4:	8b 4d 40                                        	mov    ecx,DWORD PTR [ebp+0x40]
10986dc7:	8b 0c b9                                        	mov    ecx,DWORD PTR [ecx+edi*4]
10986dca:	e8 e1 ec fb ff                                  	call   0x10945ab0
10986dcf:	8b f0                                           	mov    esi,eax
10986dd1:	8b ce                                           	mov    ecx,esi
10986dd3:	e8 d8 93 b3 ff                                  	call   0x104c01b0
10986dd8:	8b ce                                           	mov    ecx,esi
10986dda:	e8 d1 69 fc ff                                  	call   0x1094d7b0
10986ddf:	3d ae 59 be c1                                  	cmp    eax,0xc1be59ae
10986de4:	75 1c                                           	jne    0x10986e02
10986de6:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10986dea:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10986dee:	52                                              	push   edx
10986def:	e8 5c 7b 85 ff                                  	call   0x101de950
10986df4:	85 c0                                           	test   eax,eax
10986df6:	74 0a                                           	je     0x10986e02
10986df8:	66 83 78 06 05                                  	cmp    WORD PTR [eax+0x6],0x5
10986dfd:	75 03                                           	jne    0x10986e02
10986dff:	8b 58 0c                                        	mov    ebx,DWORD PTR [eax+0xc]
10986e02:	83 c7 01                                        	add    edi,0x1
10986e05:	3b 7c 24 54                                     	cmp    edi,DWORD PTR [esp+0x54]
10986e09:	72 b5                                           	jb     0x10986dc0
10986e0b:	85 db                                           	test   ebx,ebx
10986e0d:	0f 84 12 01 00 00                               	je     0x10986f25
10986e13:	8b 6b 30                                        	mov    ebp,DWORD PTR [ebx+0x30]
10986e16:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10986e1a:	51                                              	push   ecx
10986e1b:	33 ff                                           	xor    edi,edi
10986e1d:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
10986e21:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10986e24:	8b 10                                           	mov    edx,DWORD PTR [eax]
10986e26:	68 8c 69 b9 10                                  	push   0x10b9698c
10986e2b:	55                                              	push   ebp
10986e2c:	ff d2                                           	call   edx
10986e2e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10986e32:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10986e36:	52                                              	push   edx
10986e37:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
10986e3b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10986e3d:	57                                              	push   edi
10986e3e:	50                                              	push   eax
10986e3f:	8b 41 48                                        	mov    eax,DWORD PTR [ecx+0x48]
10986e42:	ff d0                                           	call   eax
10986e44:	57                                              	push   edi
10986e45:	57                                              	push   edi
10986e46:	57                                              	push   edi
10986e47:	57                                              	push   edi
10986e48:	68 6c 6a b9 10                                  	push   0x10b96a6c
10986e4d:	6a 34                                           	push   0x34
10986e4f:	e8 5c 20 f9 ff                                  	call   0x10918eb0
10986e54:	83 c4 18                                        	add    esp,0x18
10986e57:	3b c7                                           	cmp    eax,edi
10986e59:	74 09                                           	je     0x10986e64
10986e5b:	8b c8                                           	mov    ecx,eax
10986e5d:	e8 9e bf a8 ff                                  	call   0x10412e00
10986e62:	8b f8                                           	mov    edi,eax
10986e64:	8b 17                                           	mov    edx,DWORD PTR [edi]
10986e66:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10986e69:	8b cf                                           	mov    ecx,edi
10986e6b:	ff d0                                           	call   eax
10986e6d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10986e71:	e8 aa a3 a8 ff                                  	call   0x10411220
10986e76:	8b 5c 24 60                                     	mov    ebx,DWORD PTR [esp+0x60]
10986e7a:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10986e7e:	68 64 69 b9 10                                  	push   0x10b96964
10986e83:	68 00 01 00 00                                  	push   0x100
10986e88:	6a 3d                                           	push   0x3d
10986e8a:	6a 01                                           	push   0x1
10986e8c:	53                                              	push   ebx
10986e8d:	51                                              	push   ecx
10986e8e:	8b cf                                           	mov    ecx,edi
10986e90:	e8 2b c0 a8 ff                                  	call   0x10412ec0
10986e95:	84 c0                                           	test   al,al
10986e97:	74 77                                           	je     0x10986f10
10986e99:	8d 54 24 28                                     	lea    edx,[esp+0x28]
10986e9d:	52                                              	push   edx
10986e9e:	6a 00                                           	push   0x0
10986ea0:	8b cf                                           	mov    ecx,edi
10986ea2:	e8 49 b8 a8 ff                                  	call   0x104126f0
10986ea7:	8b 74 24 4c                                     	mov    esi,DWORD PTR [esp+0x4c]
10986eab:	85 f6                                           	test   esi,esi
10986ead:	74 58                                           	je     0x10986f07
10986eaf:	8b 06                                           	mov    eax,DWORD PTR [esi]
10986eb1:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
10986eb4:	6a 10                                           	push   0x10
10986eb6:	6a 00                                           	push   0x0
10986eb8:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10986ebc:	51                                              	push   ecx
10986ebd:	56                                              	push   esi
10986ebe:	ff d2                                           	call   edx
10986ec0:	85 c0                                           	test   eax,eax
10986ec2:	7c 43                                           	jl     0x10986f07
10986ec4:	0f af 5c 24 64                                  	imul   ebx,DWORD PTR [esp+0x64]
10986ec9:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
10986ecd:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10986ed1:	53                                              	push   ebx
10986ed2:	50                                              	push   eax
10986ed3:	51                                              	push   ecx
10986ed4:	e8 49 9a 10 00                                  	call   0x10a90922
10986ed9:	8b 16                                           	mov    edx,DWORD PTR [esi]
10986edb:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
10986ede:	83 c4 0c                                        	add    esp,0xc
10986ee1:	56                                              	push   esi
10986ee2:	ff d0                                           	call   eax
10986ee4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10986ee8:	6a 00                                           	push   0x0
10986eea:	6a 03                                           	push   0x3
10986eec:	6a 00                                           	push   0x0
10986eee:	6a 00                                           	push   0x0
10986ef0:	56                                              	push   esi
10986ef1:	6a 00                                           	push   0x0
10986ef3:	6a 00                                           	push   0x0
10986ef5:	51                                              	push   ecx
10986ef6:	e8 ef 3b 01 00                                  	call   0x1099aaea
10986efb:	6a ff                                           	push   0xffffffff
10986efd:	6a ff                                           	push   0xffffffff
10986eff:	6a 00                                           	push   0x0
10986f01:	55                                              	push   ebp
10986f02:	e8 e9 3b 01 00                                  	call   0x1099aaf0
10986f07:	8b 17                                           	mov    edx,DWORD PTR [edi]
10986f09:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10986f0c:	8b cf                                           	mov    ecx,edi
10986f0e:	ff d0                                           	call   eax
10986f10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10986f14:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10986f16:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
10986f19:	50                                              	push   eax
10986f1a:	ff d2                                           	call   edx
10986f1c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10986f20:	e8 bb a0 a8 ff                                  	call   0x10410fe0
10986f25:	5f                                              	pop    edi
10986f26:	5e                                              	pop    esi
10986f27:	5d                                              	pop    ebp
10986f28:	5b                                              	pop    ebx
10986f29:	83 c4 40                                        	add    esp,0x40
10986f2c:	c3                                              	ret
10986f2d:	cc                                              	int3
10986f2e:	cc                                              	int3
10986f2f:	cc                                              	int3
