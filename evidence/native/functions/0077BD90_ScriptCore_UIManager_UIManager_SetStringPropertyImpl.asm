# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077bd90 (ScriptCore.UIManager::UIManager_SetStringPropertyImpl)
Paired Ghidra pseudocode: 0077BD90_ScriptCore_UIManager_UIManager_SetStringPropertyImpl.c
Window: [0x0077bd90, 0x0077bef0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077bef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077bd90: 83 ec 50 57 e8 f7 d5 fe ff 8b f8 8b 44 24 58 8b
0077bda0: c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85 37
0077bdb0: 01 00 00 83 7c 24 60 00 0f 84 2c 01 00 00 8b 17
0077bdc0: 53 55 56 50 8b 82 cc 00 00 00 8b cf ff d0 8b 6c
0077bdd0: 24 68 81 fd 0a b0 c1 ee 8b f0 75 3c 85 f6 0f 84
0077bde0: 03 01 00 00 8b 16 8b 42 0c 68 18 82 ee ee 8b ce
0077bdf0: ff d0 8b d8 85 db 74 20 8b 17 8b 44 24 6c 8b 52
0077be00: 58 50 8b cf ff d2 8b 13 50 8b 42 78 8b cb ff d0
0077be10: 5e 5d 5b 5f 83 c4 50 c3 85 f6 0f 84 c7 00 00 00
0077be20: 8b 16 8b 42 0c 68 82 83 c5 ee 8b ce ff d0 8b f0
0077be30: 85 f6 0f 84 af 00 00 00 6a 00 6a 00 6a 00 6a ff
0077be40: bb a8 ee 00 01 6a 00 8d 4c 24 50 89 5c 24 4c e8
0077be50: 5c ce d6 ff 8b 16 8b 52 10 8d 44 24 28 50 8b ce
0077be60: ff d2 8d 44 24 38 50 55 8d 4c 24 24 51 8d 4c 24
0077be70: 34 e8 2a 5e d9 ff 8b f0 85 f6 74 5e 0f b7 56 0c
0077be80: 81 e2 ff 0f 00 00 8b 04 95 f8 f4 14 01 8b 17 8b
0077be90: 52 58 89 44 24 10 8b 44 24 6c 50 8b cf c7 44 24
0077bea0: 1c 01 00 00 00 ff d2 89 44 24 64 8d 4c 24 38 51
0077beb0: 8d 44 24 68 8d 54 24 14 89 44 24 18 52 8d 44 24
0077bec0: 24 50 8b ce e8 77 5e d9 ff 8b 4c 24 2c 8b 54 24
0077bed0: 28 8b 42 1c 51 ff d0 83 c4 04 8d 4c 24 3c 89 5c
0077bee0: 24 38 e8 b9 ce d6 ff 5e 5d 5b 5f 83 c4 50 c3 cc

LINEAR DISASSEMBLY
0077bd90 <.text+0x37ad90>:
  77bd90:	83 ec 50                                        	sub    esp,0x50
  77bd93:	57                                              	push   edi
  77bd94:	e8 f7 d5 fe ff                                  	call   0x769390
  77bd99:	8b f8                                           	mov    edi,eax
  77bd9b:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  77bd9f:	8b c8                                           	mov    ecx,eax
  77bda1:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77bda7:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77bdad:	0f 85 37 01 00 00                               	jne    0x77beea
  77bdb3:	83 7c 24 60 00                                  	cmp    DWORD PTR [esp+0x60],0x0
  77bdb8:	0f 84 2c 01 00 00                               	je     0x77beea
  77bdbe:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77bdc0:	53                                              	push   ebx
  77bdc1:	55                                              	push   ebp
  77bdc2:	56                                              	push   esi
  77bdc3:	50                                              	push   eax
  77bdc4:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77bdca:	8b cf                                           	mov    ecx,edi
  77bdcc:	ff d0                                           	call   eax
  77bdce:	8b 6c 24 68                                     	mov    ebp,DWORD PTR [esp+0x68]
  77bdd2:	81 fd 0a b0 c1 ee                               	cmp    ebp,0xeec1b00a
  77bdd8:	8b f0                                           	mov    esi,eax
  77bdda:	75 3c                                           	jne    0x77be18
  77bddc:	85 f6                                           	test   esi,esi
  77bdde:	0f 84 03 01 00 00                               	je     0x77bee7
  77bde4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77bde6:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77bde9:	68 18 82 ee ee                                  	push   0xeeee8218
  77bdee:	8b ce                                           	mov    ecx,esi
  77bdf0:	ff d0                                           	call   eax
  77bdf2:	8b d8                                           	mov    ebx,eax
  77bdf4:	85 db                                           	test   ebx,ebx
  77bdf6:	74 20                                           	je     0x77be18
  77bdf8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77bdfa:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  77bdfe:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  77be01:	50                                              	push   eax
  77be02:	8b cf                                           	mov    ecx,edi
  77be04:	ff d2                                           	call   edx
  77be06:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77be08:	50                                              	push   eax
  77be09:	8b 42 78                                        	mov    eax,DWORD PTR [edx+0x78]
  77be0c:	8b cb                                           	mov    ecx,ebx
  77be0e:	ff d0                                           	call   eax
  77be10:	5e                                              	pop    esi
  77be11:	5d                                              	pop    ebp
  77be12:	5b                                              	pop    ebx
  77be13:	5f                                              	pop    edi
  77be14:	83 c4 50                                        	add    esp,0x50
  77be17:	c3                                              	ret
  77be18:	85 f6                                           	test   esi,esi
  77be1a:	0f 84 c7 00 00 00                               	je     0x77bee7
  77be20:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77be22:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77be25:	68 82 83 c5 ee                                  	push   0xeec58382
  77be2a:	8b ce                                           	mov    ecx,esi
  77be2c:	ff d0                                           	call   eax
  77be2e:	8b f0                                           	mov    esi,eax
  77be30:	85 f6                                           	test   esi,esi
  77be32:	0f 84 af 00 00 00                               	je     0x77bee7
  77be38:	6a 00                                           	push   0x0
  77be3a:	6a 00                                           	push   0x0
  77be3c:	6a 00                                           	push   0x0
  77be3e:	6a ff                                           	push   0xffffffff
  77be40:	bb a8 ee 00 01                                  	mov    ebx,0x100eea8
  77be45:	6a 00                                           	push   0x0
  77be47:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  77be4b:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
  77be4f:	e8 5c ce d6 ff                                  	call   0x4e8cb0
  77be54:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77be56:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77be59:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  77be5d:	50                                              	push   eax
  77be5e:	8b ce                                           	mov    ecx,esi
  77be60:	ff d2                                           	call   edx
  77be62:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  77be66:	50                                              	push   eax
  77be67:	55                                              	push   ebp
  77be68:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  77be6c:	51                                              	push   ecx
  77be6d:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  77be71:	e8 2a 5e d9 ff                                  	call   0x511ca0
  77be76:	8b f0                                           	mov    esi,eax
  77be78:	85 f6                                           	test   esi,esi
  77be7a:	74 5e                                           	je     0x77beda
  77be7c:	0f b7 56 0c                                     	movzx  edx,WORD PTR [esi+0xc]
  77be80:	81 e2 ff 0f 00 00                               	and    edx,0xfff
  77be86:	8b 04 95 f8 f4 14 01                            	mov    eax,DWORD PTR [edx*4+0x114f4f8]
  77be8d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77be8f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  77be92:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  77be96:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  77be9a:	50                                              	push   eax
  77be9b:	8b cf                                           	mov    ecx,edi
  77be9d:	c7 44 24 1c 01 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x1
  77bea5:	ff d2                                           	call   edx
  77bea7:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
  77beab:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  77beaf:	51                                              	push   ecx
  77beb0:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  77beb4:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  77beb8:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  77bebc:	52                                              	push   edx
  77bebd:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  77bec1:	50                                              	push   eax
  77bec2:	8b ce                                           	mov    ecx,esi
  77bec4:	e8 77 5e d9 ff                                  	call   0x511d40
  77bec9:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  77becd:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  77bed1:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  77bed4:	51                                              	push   ecx
  77bed5:	ff d0                                           	call   eax
  77bed7:	83 c4 04                                        	add    esp,0x4
  77beda:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  77bede:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  77bee2:	e8 b9 ce d6 ff                                  	call   0x4e8da0
  77bee7:	5e                                              	pop    esi
  77bee8:	5d                                              	pop    ebp
  77bee9:	5b                                              	pop    ebx
  77beea:	5f                                              	pop    edi
  77beeb:	83 c4 50                                        	add    esp,0x50
  77beee:	c3                                              	ret
  77beef:	cc                                              	int3
