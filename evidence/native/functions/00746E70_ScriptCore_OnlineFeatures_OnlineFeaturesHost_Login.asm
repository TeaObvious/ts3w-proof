# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746e70 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_Login)
Paired Ghidra pseudocode: 00746E70_ScriptCore_OnlineFeatures_OnlineFeaturesHost_Login.c
Window: [0x00746e70, 0x00746ff0) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746e70: 83 ec 34 56 e8 17 25 02 00 8b f0 a1 68 50 1d 01
00746e80: 85 c0 74 09 83 c0 f8 89 44 24 04 eb 08 c7 44 24
00746e90: 04 00 00 00 00 85 f6 0f 84 49 01 00 00 8b 44 24
00746ea0: 3c 85 c0 0f 84 3d 01 00 00 83 7c 24 40 00 0f 84
00746eb0: 32 01 00 00 83 7c 24 04 00 0f 84 27 01 00 00 8b
00746ec0: 16 53 55 57 bb 54 8e 1c 01 50 8b 42 58 bf 04 3c
00746ed0: 00 01 8b eb 8b ce 89 7c 24 34 89 6c 24 28 89 5c
00746ee0: 24 2c c7 44 24 30 55 8e 1c 01 ff d0 6a 00 6a ff
00746ef0: 50 8d 4c 24 20 51 e8 c5 cd da ff 8d 54 24 34 83
00746f00: c4 10 3b c2 74 14 8b 48 04 8b 10 51 52 8d 4c 24
00746f10: 2c e8 fa e9 cb ff 8b 6c 24 24 8b 4c 24 1c 8b 44
00746f20: 24 14 2b c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 ad
00746f30: d5 d9 ff 83 c4 04 8b 16 8b 44 24 4c 8b 52 58 89
00746f40: 7c 24 20 bf 55 8e 1c 01 50 8b ce 89 5c 24 18 89
00746f50: 5c 24 1c 89 7c 24 20 ff d2 6a 00 6a ff 50 8d 44
00746f60: 24 40 50 e8 58 cd da ff 8d 4c 24 24 83 c4 10 3b
00746f70: c1 74 14 8b 50 04 8b 00 52 50 e8 91 e9 cb ff 8b
00746f80: 7c 24 1c 8b 5c 24 14 8b 4c 24 3c 8b 44 24 34 2b
00746f90: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 40 d5 d9 ff
00746fa0: 83 c4 04 8b 4c 24 10 53 55 e8 e2 53 14 00 2b fb
00746fb0: 83 ff 01 8b f0 7e 0d 85 db 74 09 53 e8 1f d5 d9
00746fc0: ff 83 c4 04 8b 44 24 2c 2b c5 83 f8 01 7e 0d 85
00746fd0: ed 74 09 55 e8 07 d5 d9 ff 83 c4 04 5f 5d 5b 8b
00746fe0: c6 5e 83 c4 34 c3 b8 01 00 00 00 5e 83 c4 34 c3

LINEAR DISASSEMBLY
00746e70 <.text+0x345e70>:
  746e70:	83 ec 34                                        	sub    esp,0x34
  746e73:	56                                              	push   esi
  746e74:	e8 17 25 02 00                                  	call   0x769390
  746e79:	8b f0                                           	mov    esi,eax
  746e7b:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  746e80:	85 c0                                           	test   eax,eax
  746e82:	74 09                                           	je     0x746e8d
  746e84:	83 c0 f8                                        	add    eax,0xfffffff8
  746e87:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  746e8b:	eb 08                                           	jmp    0x746e95
  746e8d:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  746e95:	85 f6                                           	test   esi,esi
  746e97:	0f 84 49 01 00 00                               	je     0x746fe6
  746e9d:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  746ea1:	85 c0                                           	test   eax,eax
  746ea3:	0f 84 3d 01 00 00                               	je     0x746fe6
  746ea9:	83 7c 24 40 00                                  	cmp    DWORD PTR [esp+0x40],0x0
  746eae:	0f 84 32 01 00 00                               	je     0x746fe6
  746eb4:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  746eb9:	0f 84 27 01 00 00                               	je     0x746fe6
  746ebf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  746ec1:	53                                              	push   ebx
  746ec2:	55                                              	push   ebp
  746ec3:	57                                              	push   edi
  746ec4:	bb 54 8e 1c 01                                  	mov    ebx,0x11c8e54
  746ec9:	50                                              	push   eax
  746eca:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  746ecd:	bf 04 3c 00 01                                  	mov    edi,0x1003c04
  746ed2:	8b eb                                           	mov    ebp,ebx
  746ed4:	8b ce                                           	mov    ecx,esi
  746ed6:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  746eda:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
  746ede:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  746ee2:	c7 44 24 30 55 8e 1c 01                         	mov    DWORD PTR [esp+0x30],0x11c8e55
  746eea:	ff d0                                           	call   eax
  746eec:	6a 00                                           	push   0x0
  746eee:	6a ff                                           	push   0xffffffff
  746ef0:	50                                              	push   eax
  746ef1:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  746ef5:	51                                              	push   ecx
  746ef6:	e8 c5 cd da ff                                  	call   0x4f3cc0
  746efb:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  746eff:	83 c4 10                                        	add    esp,0x10
  746f02:	3b c2                                           	cmp    eax,edx
  746f04:	74 14                                           	je     0x746f1a
  746f06:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  746f09:	8b 10                                           	mov    edx,DWORD PTR [eax]
  746f0b:	51                                              	push   ecx
  746f0c:	52                                              	push   edx
  746f0d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  746f11:	e8 fa e9 cb ff                                  	call   0x405910
  746f16:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
  746f1a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  746f1e:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  746f22:	2b c8                                           	sub    ecx,eax
  746f24:	83 f9 01                                        	cmp    ecx,0x1
  746f27:	7e 0d                                           	jle    0x746f36
  746f29:	85 c0                                           	test   eax,eax
  746f2b:	74 09                                           	je     0x746f36
  746f2d:	50                                              	push   eax
  746f2e:	e8 ad d5 d9 ff                                  	call   0x4e44e0
  746f33:	83 c4 04                                        	add    esp,0x4
  746f36:	8b 16                                           	mov    edx,DWORD PTR [esi]
  746f38:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  746f3c:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  746f3f:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  746f43:	bf 55 8e 1c 01                                  	mov    edi,0x11c8e55
  746f48:	50                                              	push   eax
  746f49:	8b ce                                           	mov    ecx,esi
  746f4b:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  746f4f:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  746f53:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  746f57:	ff d2                                           	call   edx
  746f59:	6a 00                                           	push   0x0
  746f5b:	6a ff                                           	push   0xffffffff
  746f5d:	50                                              	push   eax
  746f5e:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  746f62:	50                                              	push   eax
  746f63:	e8 58 cd da ff                                  	call   0x4f3cc0
  746f68:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  746f6c:	83 c4 10                                        	add    esp,0x10
  746f6f:	3b c1                                           	cmp    eax,ecx
  746f71:	74 14                                           	je     0x746f87
  746f73:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  746f76:	8b 00                                           	mov    eax,DWORD PTR [eax]
  746f78:	52                                              	push   edx
  746f79:	50                                              	push   eax
  746f7a:	e8 91 e9 cb ff                                  	call   0x405910
  746f7f:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  746f83:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  746f87:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  746f8b:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  746f8f:	2b c8                                           	sub    ecx,eax
  746f91:	83 f9 01                                        	cmp    ecx,0x1
  746f94:	7e 0d                                           	jle    0x746fa3
  746f96:	85 c0                                           	test   eax,eax
  746f98:	74 09                                           	je     0x746fa3
  746f9a:	50                                              	push   eax
  746f9b:	e8 40 d5 d9 ff                                  	call   0x4e44e0
  746fa0:	83 c4 04                                        	add    esp,0x4
  746fa3:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  746fa7:	53                                              	push   ebx
  746fa8:	55                                              	push   ebp
  746fa9:	e8 e2 53 14 00                                  	call   0x88c390
  746fae:	2b fb                                           	sub    edi,ebx
  746fb0:	83 ff 01                                        	cmp    edi,0x1
  746fb3:	8b f0                                           	mov    esi,eax
  746fb5:	7e 0d                                           	jle    0x746fc4
  746fb7:	85 db                                           	test   ebx,ebx
  746fb9:	74 09                                           	je     0x746fc4
  746fbb:	53                                              	push   ebx
  746fbc:	e8 1f d5 d9 ff                                  	call   0x4e44e0
  746fc1:	83 c4 04                                        	add    esp,0x4
  746fc4:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  746fc8:	2b c5                                           	sub    eax,ebp
  746fca:	83 f8 01                                        	cmp    eax,0x1
  746fcd:	7e 0d                                           	jle    0x746fdc
  746fcf:	85 ed                                           	test   ebp,ebp
  746fd1:	74 09                                           	je     0x746fdc
  746fd3:	55                                              	push   ebp
  746fd4:	e8 07 d5 d9 ff                                  	call   0x4e44e0
  746fd9:	83 c4 04                                        	add    esp,0x4
  746fdc:	5f                                              	pop    edi
  746fdd:	5d                                              	pop    ebp
  746fde:	5b                                              	pop    ebx
  746fdf:	8b c6                                           	mov    eax,esi
  746fe1:	5e                                              	pop    esi
  746fe2:	83 c4 34                                        	add    esp,0x34
  746fe5:	c3                                              	ret
  746fe6:	b8 01 00 00 00                                  	mov    eax,0x1
  746feb:	5e                                              	pop    esi
  746fec:	83 c4 34                                        	add    esp,0x34
  746fef:	c3                                              	ret
