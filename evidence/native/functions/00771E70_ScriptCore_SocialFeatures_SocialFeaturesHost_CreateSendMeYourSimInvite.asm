# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771e70 (ScriptCore.SocialFeatures::SocialFeaturesHost_CreateSendMeYourSimInvite)
Paired Ghidra pseudocode: 00771E70_ScriptCore_SocialFeatures_SocialFeaturesHost_CreateSendMeYourSimInvite.c
Window: [0x00771e70, 0x00772040) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771e70: 83 ec 40 56 e8 17 75 ff ff 8b f0 85 f6 0f 84 ad
00771e80: 01 00 00 8b 4c 24 54 8b 06 8b 50 58 55 57 51 8b
00771e90: ce ff d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c
00771ea0: 01 bd bc 9c 00 01 50 89 6c 24 48 89 7c 24 3c 89
00771eb0: 7c 24 40 c7 44 24 44 55 8e 1c 01 e8 00 1e d8 ff
00771ec0: 8d 4c 24 3c 83 c4 10 3b c1 74 0c 8b 50 04 8b 00
00771ed0: 52 50 e8 39 3a c9 ff 8b 4c 24 24 8b 44 24 1c 2b
00771ee0: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 f0 25 d7 ff
00771ef0: 83 c4 04 8b 16 8b 44 24 60 8b 52 58 53 50 8b ce
00771f00: ff d2 6a 00 6a ff 50 8d 44 24 1c 8b df 50 89 6c
00771f10: 24 3c 89 5c 24 30 89 7c 24 34 c7 44 24 38 55 8e
00771f20: 1c 01 e8 99 1d d8 ff 8d 4c 24 30 83 c4 10 3b c1
00771f30: 74 10 8b 50 04 8b 00 52 50 e8 d2 39 c9 ff 8b 5c
00771f40: 24 20 8b 4c 24 18 8b 44 24 10 2b c8 83 f9 01 7e
00771f50: 0d 85 c0 74 09 50 e8 85 25 d7 ff 83 c4 04 8b 16
00771f60: 8b 44 24 68 8b 52 58 50 8b ce ff d2 6a 00 6a ff
00771f70: 50 8d 44 24 4c be 55 8e 1c 01 50 89 6c 24 2c 89
00771f80: 7c 24 20 89 7c 24 24 89 74 24 28 e8 30 1d d8 ff
00771f90: 8d 4c 24 20 83 c4 10 3b c1 74 14 8b 50 04 8b 00
00771fa0: 52 50 e8 69 39 c9 ff 8b 74 24 18 8b 7c 24 10 8b
00771fb0: 4c 24 48 8b 44 24 40 2b c8 83 f9 01 7e 0d 85 c0
00771fc0: 74 09 50 e8 18 25 d7 ff 83 c4 04 8b 6c 24 30 8b
00771fd0: 54 24 5c 8b 44 24 58 8b 4c 24 54 57 53 55 52 50
00771fe0: 51 e8 5a 31 2b 00 2b f7 83 c4 18 83 fe 01 7e 0d
00771ff0: 85 ff 74 09 57 e8 e6 24 d7 ff 83 c4 04 8b 44 24
00772000: 28 2b c3 83 f8 01 7e 0d 85 db 74 09 53 e8 ce 24
00772010: d7 ff 83 c4 04 8b 44 24 38 2b c5 83 f8 01 5b 7e
00772020: 0d 85 ed 74 09 55 e8 b5 24 d7 ff 83 c4 04 5f 5d
00772030: 5e 83 c4 40 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771e70 <.text+0x370e70>:
  771e70:	83 ec 40                                        	sub    esp,0x40
  771e73:	56                                              	push   esi
  771e74:	e8 17 75 ff ff                                  	call   0x769390
  771e79:	8b f0                                           	mov    esi,eax
  771e7b:	85 f6                                           	test   esi,esi
  771e7d:	0f 84 ad 01 00 00                               	je     0x772030
  771e83:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  771e87:	8b 06                                           	mov    eax,DWORD PTR [esi]
  771e89:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  771e8c:	55                                              	push   ebp
  771e8d:	57                                              	push   edi
  771e8e:	51                                              	push   ecx
  771e8f:	8b ce                                           	mov    ecx,esi
  771e91:	ff d2                                           	call   edx
  771e93:	6a 00                                           	push   0x0
  771e95:	6a ff                                           	push   0xffffffff
  771e97:	50                                              	push   eax
  771e98:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  771e9c:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  771ea1:	bd bc 9c 00 01                                  	mov    ebp,0x1009cbc
  771ea6:	50                                              	push   eax
  771ea7:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
  771eab:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  771eaf:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
  771eb3:	c7 44 24 44 55 8e 1c 01                         	mov    DWORD PTR [esp+0x44],0x11c8e55
  771ebb:	e8 00 1e d8 ff                                  	call   0x4f3cc0
  771ec0:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  771ec4:	83 c4 10                                        	add    esp,0x10
  771ec7:	3b c1                                           	cmp    eax,ecx
  771ec9:	74 0c                                           	je     0x771ed7
  771ecb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771ece:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771ed0:	52                                              	push   edx
  771ed1:	50                                              	push   eax
  771ed2:	e8 39 3a c9 ff                                  	call   0x405910
  771ed7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771edb:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771edf:	2b c8                                           	sub    ecx,eax
  771ee1:	83 f9 01                                        	cmp    ecx,0x1
  771ee4:	7e 0d                                           	jle    0x771ef3
  771ee6:	85 c0                                           	test   eax,eax
  771ee8:	74 09                                           	je     0x771ef3
  771eea:	50                                              	push   eax
  771eeb:	e8 f0 25 d7 ff                                  	call   0x4e44e0
  771ef0:	83 c4 04                                        	add    esp,0x4
  771ef3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  771ef5:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  771ef9:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771efc:	53                                              	push   ebx
  771efd:	50                                              	push   eax
  771efe:	8b ce                                           	mov    ecx,esi
  771f00:	ff d2                                           	call   edx
  771f02:	6a 00                                           	push   0x0
  771f04:	6a ff                                           	push   0xffffffff
  771f06:	50                                              	push   eax
  771f07:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  771f0b:	8b df                                           	mov    ebx,edi
  771f0d:	50                                              	push   eax
  771f0e:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
  771f12:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  771f16:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  771f1a:	c7 44 24 38 55 8e 1c 01                         	mov    DWORD PTR [esp+0x38],0x11c8e55
  771f22:	e8 99 1d d8 ff                                  	call   0x4f3cc0
  771f27:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  771f2b:	83 c4 10                                        	add    esp,0x10
  771f2e:	3b c1                                           	cmp    eax,ecx
  771f30:	74 10                                           	je     0x771f42
  771f32:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771f35:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771f37:	52                                              	push   edx
  771f38:	50                                              	push   eax
  771f39:	e8 d2 39 c9 ff                                  	call   0x405910
  771f3e:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  771f42:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  771f46:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  771f4a:	2b c8                                           	sub    ecx,eax
  771f4c:	83 f9 01                                        	cmp    ecx,0x1
  771f4f:	7e 0d                                           	jle    0x771f5e
  771f51:	85 c0                                           	test   eax,eax
  771f53:	74 09                                           	je     0x771f5e
  771f55:	50                                              	push   eax
  771f56:	e8 85 25 d7 ff                                  	call   0x4e44e0
  771f5b:	83 c4 04                                        	add    esp,0x4
  771f5e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  771f60:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  771f64:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771f67:	50                                              	push   eax
  771f68:	8b ce                                           	mov    ecx,esi
  771f6a:	ff d2                                           	call   edx
  771f6c:	6a 00                                           	push   0x0
  771f6e:	6a ff                                           	push   0xffffffff
  771f70:	50                                              	push   eax
  771f71:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  771f75:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771f7a:	50                                              	push   eax
  771f7b:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  771f7f:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771f83:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  771f87:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  771f8b:	e8 30 1d d8 ff                                  	call   0x4f3cc0
  771f90:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  771f94:	83 c4 10                                        	add    esp,0x10
  771f97:	3b c1                                           	cmp    eax,ecx
  771f99:	74 14                                           	je     0x771faf
  771f9b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771f9e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771fa0:	52                                              	push   edx
  771fa1:	50                                              	push   eax
  771fa2:	e8 69 39 c9 ff                                  	call   0x405910
  771fa7:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  771fab:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  771faf:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  771fb3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  771fb7:	2b c8                                           	sub    ecx,eax
  771fb9:	83 f9 01                                        	cmp    ecx,0x1
  771fbc:	7e 0d                                           	jle    0x771fcb
  771fbe:	85 c0                                           	test   eax,eax
  771fc0:	74 09                                           	je     0x771fcb
  771fc2:	50                                              	push   eax
  771fc3:	e8 18 25 d7 ff                                  	call   0x4e44e0
  771fc8:	83 c4 04                                        	add    esp,0x4
  771fcb:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
  771fcf:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  771fd3:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  771fd7:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  771fdb:	57                                              	push   edi
  771fdc:	53                                              	push   ebx
  771fdd:	55                                              	push   ebp
  771fde:	52                                              	push   edx
  771fdf:	50                                              	push   eax
  771fe0:	51                                              	push   ecx
  771fe1:	e8 5a 31 2b 00                                  	call   0xa25140
  771fe6:	2b f7                                           	sub    esi,edi
  771fe8:	83 c4 18                                        	add    esp,0x18
  771feb:	83 fe 01                                        	cmp    esi,0x1
  771fee:	7e 0d                                           	jle    0x771ffd
  771ff0:	85 ff                                           	test   edi,edi
  771ff2:	74 09                                           	je     0x771ffd
  771ff4:	57                                              	push   edi
  771ff5:	e8 e6 24 d7 ff                                  	call   0x4e44e0
  771ffa:	83 c4 04                                        	add    esp,0x4
  771ffd:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  772001:	2b c3                                           	sub    eax,ebx
  772003:	83 f8 01                                        	cmp    eax,0x1
  772006:	7e 0d                                           	jle    0x772015
  772008:	85 db                                           	test   ebx,ebx
  77200a:	74 09                                           	je     0x772015
  77200c:	53                                              	push   ebx
  77200d:	e8 ce 24 d7 ff                                  	call   0x4e44e0
  772012:	83 c4 04                                        	add    esp,0x4
  772015:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  772019:	2b c5                                           	sub    eax,ebp
  77201b:	83 f8 01                                        	cmp    eax,0x1
  77201e:	5b                                              	pop    ebx
  77201f:	7e 0d                                           	jle    0x77202e
  772021:	85 ed                                           	test   ebp,ebp
  772023:	74 09                                           	je     0x77202e
  772025:	55                                              	push   ebp
  772026:	e8 b5 24 d7 ff                                  	call   0x4e44e0
  77202b:	83 c4 04                                        	add    esp,0x4
  77202e:	5f                                              	pop    edi
  77202f:	5d                                              	pop    ebp
  772030:	5e                                              	pop    esi
  772031:	83 c4 40                                        	add    esp,0x40
  772034:	c3                                              	ret
  772035:	cc                                              	int3
  772036:	cc                                              	int3
  772037:	cc                                              	int3
  772038:	cc                                              	int3
  772039:	cc                                              	int3
  77203a:	cc                                              	int3
  77203b:	cc                                              	int3
  77203c:	cc                                              	int3
  77203d:	cc                                              	int3
  77203e:	cc                                              	int3
  77203f:	cc                                              	int3
