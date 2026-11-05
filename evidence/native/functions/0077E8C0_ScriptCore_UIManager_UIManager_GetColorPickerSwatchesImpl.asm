# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077e8c0 (ScriptCore.UIManager::UIManager_GetColorPickerSwatchesImpl)
Paired Ghidra pseudocode: 0077E8C0_ScriptCore_UIManager_UIManager_GetColorPickerSwatchesImpl.c
Window: [0x0077e8c0, 0x0077ebb0) (752 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ebb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077e8c0: 81 ec cc 01 00 00 53 57 e8 c3 aa fe ff 8b f8 33
0077e8d0: db 33 c0 3b fb 89 7c 24 20 89 44 24 0c 0f 84 be
0077e8e0: 02 00 00 8b 84 24 d8 01 00 00 8b 8c 24 dc 01 00
0077e8f0: 00 56 89 5c 24 20 89 44 24 28 89 4c 24 2c c7 44
0077e900: 24 30 48 40 e3 e6 89 5c 24 34 89 44 24 38 89 4c
0077e910: 24 3c c7 44 24 40 04 00 7d 2f 89 5c 24 44 e8 5d
0077e920: 15 d3 ff 8b f0 8b 06 8b 50 2c 6a ff 68 48 40 e3
0077e930: e6 8b ce ff d2 8d 4c 24 28 51 50 53 53 8d 44 24
0077e940: 24 89 5c 24 24 8b 16 8b 52 0c 50 8d 4c 24 4c 51
0077e950: 8b ce ff d2 84 c0 74 52 8b 4c 24 14 3b cb 74 4a
0077e960: 8b 01 8b 50 0c 68 48 40 e3 e6 ff d2 8b f0 3b f3
0077e970: 74 38 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 84 00
0077e980: 00 00 6a 64 8d 4c 24 14 51 8b cf ff d2 8b 07 8b
0077e990: 80 9c 00 00 00 6a 64 53 8d 4e 28 51 8d 54 24 1c
0077e9a0: 52 8b cf ff d0 e9 d6 01 00 00 55 68 90 01 00 00
0077e9b0: 8d 4c 24 50 53 51 e8 dd 08 80 00 b8 68 2d 16 01
0077e9c0: 83 c4 0c 89 44 24 1c 8d 6c 24 50 eb 03 8d 49 00
0077e9d0: 8b 00 8b c8 0f b6 d0 89 54 24 20 0f b6 f4 c1 e9
0077e9e0: 10 81 e1 ff 00 00 00 b8 cd cc cc cc f7 e1 8b fa
0077e9f0: b8 cd cc cc cc f7 e6 8b da b8 cd cc cc cc f7 64
0077ea00: 24 20 c1 ea 03 89 54 24 10 8b 54 24 20 8b c1 0d
0077ea10: 00 ff ff ff c1 e0 08 0b c6 c1 e0 08 0b c2 2b 54
0077ea20: 24 10 c1 ef 03 c1 eb 03 2b cf 2b f3 89 45 fc 8b
0077ea30: c1 8b ce 8b f2 8b d0 81 ca 00 ff ff ff c1 e2 08
0077ea40: 0b d1 c1 e2 08 0b d6 2b 74 24 10 89 55 00 2b c7
0077ea50: 8b d0 81 ca 00 ff ff ff c1 e2 08 2b cb 0b d1 c1
0077ea60: e2 08 0b d6 2b 74 24 10 89 55 04 2b c7 8b d0 81
0077ea70: ca 00 ff ff ff c1 e2 08 2b cb 0b d1 c1 e2 08 0b
0077ea80: d6 2b 74 24 10 89 55 08 2b c7 8b d0 81 ca 00 ff
0077ea90: ff ff c1 e2 08 2b cb 0b d1 c1 e2 08 0b d6 2b 74
0077eaa0: 24 10 89 55 0c 2b c7 8b d0 81 ca 00 ff ff ff c1
0077eab0: e2 08 2b cb 0b d1 c1 e2 08 0b d6 89 55 10 2b c7
0077eac0: 2b 74 24 10 8b d0 81 ca 00 ff ff ff c1 e2 08 2b
0077ead0: cb 0b d1 c1 e2 08 0b d6 2b 74 24 10 89 55 14 2b
0077eae0: c7 8b d0 81 ca 00 ff ff ff c1 e2 08 2b cb 0b d1
0077eaf0: c1 e2 08 0b d6 2b 74 24 10 89 55 18 2b c7 8b d0
0077eb00: 2b cb 81 ca 00 ff ff ff c1 e2 08 0b d1 2b cb 2b
0077eb10: c7 c1 e2 08 c1 e1 08 c1 e0 10 0b d6 2b 74 24 10
0077eb20: 0b c8 8b 44 24 1c 0b ce 81 c9 00 00 00 ff 83 c0
0077eb30: 04 89 55 1c 89 4d 20 83 c5 28 3d 90 2d 16 01 89
0077eb40: 44 24 1c 0f 8c 87 fe ff ff 8b 74 24 28 8b 06 8b
0077eb50: 90 84 00 00 00 6a 64 8d 4c 24 18 51 8b ce ff d2
0077eb60: 8b 06 8b 80 9c 00 00 00 6a 64 33 db 53 8d 4c 24
0077eb70: 54 51 8d 54 24 20 52 8b ce ff d0 8b 74 24 24 5d
0077eb80: 8b 4c 24 14 3b cb 74 07 8b 11 8b 42 04 ff d0 3b
0077eb90: f3 74 09 8b 16 8b 42 04 8b ce ff d0 8b 44 24 10
0077eba0: 5e 5f 5b 81 c4 cc 01 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077e8c0 <.text+0x37d8c0>:
  77e8c0:	81 ec cc 01 00 00                               	sub    esp,0x1cc
  77e8c6:	53                                              	push   ebx
  77e8c7:	57                                              	push   edi
  77e8c8:	e8 c3 aa fe ff                                  	call   0x769390
  77e8cd:	8b f8                                           	mov    edi,eax
  77e8cf:	33 db                                           	xor    ebx,ebx
  77e8d1:	33 c0                                           	xor    eax,eax
  77e8d3:	3b fb                                           	cmp    edi,ebx
  77e8d5:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  77e8d9:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  77e8dd:	0f 84 be 02 00 00                               	je     0x77eba1
  77e8e3:	8b 84 24 d8 01 00 00                            	mov    eax,DWORD PTR [esp+0x1d8]
  77e8ea:	8b 8c 24 dc 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1dc]
  77e8f1:	56                                              	push   esi
  77e8f2:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  77e8f6:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  77e8fa:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  77e8fe:	c7 44 24 30 48 40 e3 e6                         	mov    DWORD PTR [esp+0x30],0xe6e34048
  77e906:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  77e90a:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  77e90e:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  77e912:	c7 44 24 40 04 00 7d 2f                         	mov    DWORD PTR [esp+0x40],0x2f7d0004
  77e91a:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  77e91e:	e8 5d 15 d3 ff                                  	call   0x4afe80
  77e923:	8b f0                                           	mov    esi,eax
  77e925:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77e927:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  77e92a:	6a ff                                           	push   0xffffffff
  77e92c:	68 48 40 e3 e6                                  	push   0xe6e34048
  77e931:	8b ce                                           	mov    ecx,esi
  77e933:	ff d2                                           	call   edx
  77e935:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77e939:	51                                              	push   ecx
  77e93a:	50                                              	push   eax
  77e93b:	53                                              	push   ebx
  77e93c:	53                                              	push   ebx
  77e93d:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  77e941:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  77e945:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77e947:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  77e94a:	50                                              	push   eax
  77e94b:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  77e94f:	51                                              	push   ecx
  77e950:	8b ce                                           	mov    ecx,esi
  77e952:	ff d2                                           	call   edx
  77e954:	84 c0                                           	test   al,al
  77e956:	74 52                                           	je     0x77e9aa
  77e958:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77e95c:	3b cb                                           	cmp    ecx,ebx
  77e95e:	74 4a                                           	je     0x77e9aa
  77e960:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  77e962:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  77e965:	68 48 40 e3 e6                                  	push   0xe6e34048
  77e96a:	ff d2                                           	call   edx
  77e96c:	8b f0                                           	mov    esi,eax
  77e96e:	3b f3                                           	cmp    esi,ebx
  77e970:	74 38                                           	je     0x77e9aa
  77e972:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77e974:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77e976:	8b ce                                           	mov    ecx,esi
  77e978:	ff d2                                           	call   edx
  77e97a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77e97c:	8b 90 84 00 00 00                               	mov    edx,DWORD PTR [eax+0x84]
  77e982:	6a 64                                           	push   0x64
  77e984:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77e988:	51                                              	push   ecx
  77e989:	8b cf                                           	mov    ecx,edi
  77e98b:	ff d2                                           	call   edx
  77e98d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77e98f:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  77e995:	6a 64                                           	push   0x64
  77e997:	53                                              	push   ebx
  77e998:	8d 4e 28                                        	lea    ecx,[esi+0x28]
  77e99b:	51                                              	push   ecx
  77e99c:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  77e9a0:	52                                              	push   edx
  77e9a1:	8b cf                                           	mov    ecx,edi
  77e9a3:	ff d0                                           	call   eax
  77e9a5:	e9 d6 01 00 00                                  	jmp    0x77eb80
  77e9aa:	55                                              	push   ebp
  77e9ab:	68 90 01 00 00                                  	push   0x190
  77e9b0:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  77e9b4:	53                                              	push   ebx
  77e9b5:	51                                              	push   ecx
  77e9b6:	e8 dd 08 80 00                                  	call   0xf7f298
  77e9bb:	b8 68 2d 16 01                                  	mov    eax,0x1162d68
  77e9c0:	83 c4 0c                                        	add    esp,0xc
  77e9c3:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  77e9c7:	8d 6c 24 50                                     	lea    ebp,[esp+0x50]
  77e9cb:	eb 03                                           	jmp    0x77e9d0
  77e9cd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  77e9d0:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77e9d2:	8b c8                                           	mov    ecx,eax
  77e9d4:	0f b6 d0                                        	movzx  edx,al
  77e9d7:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  77e9db:	0f b6 f4                                        	movzx  esi,ah
  77e9de:	c1 e9 10                                        	shr    ecx,0x10
  77e9e1:	81 e1 ff 00 00 00                               	and    ecx,0xff
  77e9e7:	b8 cd cc cc cc                                  	mov    eax,0xcccccccd
  77e9ec:	f7 e1                                           	mul    ecx
  77e9ee:	8b fa                                           	mov    edi,edx
  77e9f0:	b8 cd cc cc cc                                  	mov    eax,0xcccccccd
  77e9f5:	f7 e6                                           	mul    esi
  77e9f7:	8b da                                           	mov    ebx,edx
  77e9f9:	b8 cd cc cc cc                                  	mov    eax,0xcccccccd
  77e9fe:	f7 64 24 20                                     	mul    DWORD PTR [esp+0x20]
  77ea02:	c1 ea 03                                        	shr    edx,0x3
  77ea05:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  77ea09:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  77ea0d:	8b c1                                           	mov    eax,ecx
  77ea0f:	0d 00 ff ff ff                                  	or     eax,0xffffff00
  77ea14:	c1 e0 08                                        	shl    eax,0x8
  77ea17:	0b c6                                           	or     eax,esi
  77ea19:	c1 e0 08                                        	shl    eax,0x8
  77ea1c:	0b c2                                           	or     eax,edx
  77ea1e:	2b 54 24 10                                     	sub    edx,DWORD PTR [esp+0x10]
  77ea22:	c1 ef 03                                        	shr    edi,0x3
  77ea25:	c1 eb 03                                        	shr    ebx,0x3
  77ea28:	2b cf                                           	sub    ecx,edi
  77ea2a:	2b f3                                           	sub    esi,ebx
  77ea2c:	89 45 fc                                        	mov    DWORD PTR [ebp-0x4],eax
  77ea2f:	8b c1                                           	mov    eax,ecx
  77ea31:	8b ce                                           	mov    ecx,esi
  77ea33:	8b f2                                           	mov    esi,edx
  77ea35:	8b d0                                           	mov    edx,eax
  77ea37:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77ea3d:	c1 e2 08                                        	shl    edx,0x8
  77ea40:	0b d1                                           	or     edx,ecx
  77ea42:	c1 e2 08                                        	shl    edx,0x8
  77ea45:	0b d6                                           	or     edx,esi
  77ea47:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77ea4b:	89 55 00                                        	mov    DWORD PTR [ebp+0x0],edx
  77ea4e:	2b c7                                           	sub    eax,edi
  77ea50:	8b d0                                           	mov    edx,eax
  77ea52:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77ea58:	c1 e2 08                                        	shl    edx,0x8
  77ea5b:	2b cb                                           	sub    ecx,ebx
  77ea5d:	0b d1                                           	or     edx,ecx
  77ea5f:	c1 e2 08                                        	shl    edx,0x8
  77ea62:	0b d6                                           	or     edx,esi
  77ea64:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77ea68:	89 55 04                                        	mov    DWORD PTR [ebp+0x4],edx
  77ea6b:	2b c7                                           	sub    eax,edi
  77ea6d:	8b d0                                           	mov    edx,eax
  77ea6f:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77ea75:	c1 e2 08                                        	shl    edx,0x8
  77ea78:	2b cb                                           	sub    ecx,ebx
  77ea7a:	0b d1                                           	or     edx,ecx
  77ea7c:	c1 e2 08                                        	shl    edx,0x8
  77ea7f:	0b d6                                           	or     edx,esi
  77ea81:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77ea85:	89 55 08                                        	mov    DWORD PTR [ebp+0x8],edx
  77ea88:	2b c7                                           	sub    eax,edi
  77ea8a:	8b d0                                           	mov    edx,eax
  77ea8c:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77ea92:	c1 e2 08                                        	shl    edx,0x8
  77ea95:	2b cb                                           	sub    ecx,ebx
  77ea97:	0b d1                                           	or     edx,ecx
  77ea99:	c1 e2 08                                        	shl    edx,0x8
  77ea9c:	0b d6                                           	or     edx,esi
  77ea9e:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77eaa2:	89 55 0c                                        	mov    DWORD PTR [ebp+0xc],edx
  77eaa5:	2b c7                                           	sub    eax,edi
  77eaa7:	8b d0                                           	mov    edx,eax
  77eaa9:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77eaaf:	c1 e2 08                                        	shl    edx,0x8
  77eab2:	2b cb                                           	sub    ecx,ebx
  77eab4:	0b d1                                           	or     edx,ecx
  77eab6:	c1 e2 08                                        	shl    edx,0x8
  77eab9:	0b d6                                           	or     edx,esi
  77eabb:	89 55 10                                        	mov    DWORD PTR [ebp+0x10],edx
  77eabe:	2b c7                                           	sub    eax,edi
  77eac0:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77eac4:	8b d0                                           	mov    edx,eax
  77eac6:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77eacc:	c1 e2 08                                        	shl    edx,0x8
  77eacf:	2b cb                                           	sub    ecx,ebx
  77ead1:	0b d1                                           	or     edx,ecx
  77ead3:	c1 e2 08                                        	shl    edx,0x8
  77ead6:	0b d6                                           	or     edx,esi
  77ead8:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77eadc:	89 55 14                                        	mov    DWORD PTR [ebp+0x14],edx
  77eadf:	2b c7                                           	sub    eax,edi
  77eae1:	8b d0                                           	mov    edx,eax
  77eae3:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77eae9:	c1 e2 08                                        	shl    edx,0x8
  77eaec:	2b cb                                           	sub    ecx,ebx
  77eaee:	0b d1                                           	or     edx,ecx
  77eaf0:	c1 e2 08                                        	shl    edx,0x8
  77eaf3:	0b d6                                           	or     edx,esi
  77eaf5:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77eaf9:	89 55 18                                        	mov    DWORD PTR [ebp+0x18],edx
  77eafc:	2b c7                                           	sub    eax,edi
  77eafe:	8b d0                                           	mov    edx,eax
  77eb00:	2b cb                                           	sub    ecx,ebx
  77eb02:	81 ca 00 ff ff ff                               	or     edx,0xffffff00
  77eb08:	c1 e2 08                                        	shl    edx,0x8
  77eb0b:	0b d1                                           	or     edx,ecx
  77eb0d:	2b cb                                           	sub    ecx,ebx
  77eb0f:	2b c7                                           	sub    eax,edi
  77eb11:	c1 e2 08                                        	shl    edx,0x8
  77eb14:	c1 e1 08                                        	shl    ecx,0x8
  77eb17:	c1 e0 10                                        	shl    eax,0x10
  77eb1a:	0b d6                                           	or     edx,esi
  77eb1c:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  77eb20:	0b c8                                           	or     ecx,eax
  77eb22:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  77eb26:	0b ce                                           	or     ecx,esi
  77eb28:	81 c9 00 00 00 ff                               	or     ecx,0xff000000
  77eb2e:	83 c0 04                                        	add    eax,0x4
  77eb31:	89 55 1c                                        	mov    DWORD PTR [ebp+0x1c],edx
  77eb34:	89 4d 20                                        	mov    DWORD PTR [ebp+0x20],ecx
  77eb37:	83 c5 28                                        	add    ebp,0x28
  77eb3a:	3d 90 2d 16 01                                  	cmp    eax,0x1162d90
  77eb3f:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  77eb43:	0f 8c 87 fe ff ff                               	jl     0x77e9d0
  77eb49:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  77eb4d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77eb4f:	8b 90 84 00 00 00                               	mov    edx,DWORD PTR [eax+0x84]
  77eb55:	6a 64                                           	push   0x64
  77eb57:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77eb5b:	51                                              	push   ecx
  77eb5c:	8b ce                                           	mov    ecx,esi
  77eb5e:	ff d2                                           	call   edx
  77eb60:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77eb62:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  77eb68:	6a 64                                           	push   0x64
  77eb6a:	33 db                                           	xor    ebx,ebx
  77eb6c:	53                                              	push   ebx
  77eb6d:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  77eb71:	51                                              	push   ecx
  77eb72:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77eb76:	52                                              	push   edx
  77eb77:	8b ce                                           	mov    ecx,esi
  77eb79:	ff d0                                           	call   eax
  77eb7b:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  77eb7f:	5d                                              	pop    ebp
  77eb80:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77eb84:	3b cb                                           	cmp    ecx,ebx
  77eb86:	74 07                                           	je     0x77eb8f
  77eb88:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  77eb8a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77eb8d:	ff d0                                           	call   eax
  77eb8f:	3b f3                                           	cmp    esi,ebx
  77eb91:	74 09                                           	je     0x77eb9c
  77eb93:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77eb95:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77eb98:	8b ce                                           	mov    ecx,esi
  77eb9a:	ff d0                                           	call   eax
  77eb9c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77eba0:	5e                                              	pop    esi
  77eba1:	5f                                              	pop    edi
  77eba2:	5b                                              	pop    ebx
  77eba3:	81 c4 cc 01 00 00                               	add    esp,0x1cc
  77eba9:	c3                                              	ret
  77ebaa:	cc                                              	int3
  77ebab:	cc                                              	int3
  77ebac:	cc                                              	int3
  77ebad:	cc                                              	int3
  77ebae:	cc                                              	int3
  77ebaf:	cc                                              	int3
