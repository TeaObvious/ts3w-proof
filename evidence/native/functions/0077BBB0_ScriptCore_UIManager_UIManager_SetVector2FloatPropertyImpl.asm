# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077bbb0 (ScriptCore.UIManager::UIManager_SetVector2FloatPropertyImpl)
Paired Ghidra pseudocode: 0077BBB0_ScriptCore_UIManager_UIManager_SetVector2FloatPropertyImpl.c
Window: [0x0077bbb0, 0x0077bcb0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077bcb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077bbb0: 83 ec 50 e8 d8 d7 fe ff 8b 4c 24 54 8b d1 81 e2
0077bbc0: 00 00 00 ff 81 fa 00 00 00 30 0f 85 db 00 00 00
0077bbd0: 53 8b 5c 24 60 85 db 0f 84 cd 00 00 00 8b 10 51
0077bbe0: 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 0f 84 b8 00
0077bbf0: 00 00 8b 10 56 8b c8 8b 42 0c 68 82 83 c5 ee ff
0077bc00: d0 8b f0 85 f6 0f 84 9e 00 00 00 6a 00 6a 00 6a
0077bc10: 00 6a ff 6a 00 8d 4c 24 48 c7 44 24 44 a8 ee 00
0077bc20: 01 e8 8a d0 d6 ff 8b 16 8b 52 10 8d 44 24 20 50
0077bc30: 8b ce ff d2 8b 4c 24 60 8d 44 24 30 50 51 8d 54
0077bc40: 24 1c 52 8d 4c 24 2c e8 54 60 d9 ff 85 c0 74 48
0077bc50: 0f b7 48 0c 81 e1 ff 0f 00 00 8b 14 8d f8 f4 14
0077bc60: 01 8d 4c 24 30 51 89 54 24 0c 8d 54 24 0c 52 8d
0077bc70: 4c 24 1c 51 8b c8 c7 44 24 1c 01 00 00 00 89 5c
0077bc80: 24 18 e8 b9 60 d9 ff 8b 54 24 24 8b 44 24 20 8b
0077bc90: 48 1c 52 ff d1 83 c4 04 8d 4c 24 34 c7 44 24 30
0077bca0: a8 ee 00 01 e8 f7 d0 d6 ff 5e 5b 83 c4 50 c3 cc

LINEAR DISASSEMBLY
0077bbb0 <.text+0x37abb0>:
  77bbb0:	83 ec 50                                        	sub    esp,0x50
  77bbb3:	e8 d8 d7 fe ff                                  	call   0x769390
  77bbb8:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  77bbbc:	8b d1                                           	mov    edx,ecx
  77bbbe:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77bbc4:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77bbca:	0f 85 db 00 00 00                               	jne    0x77bcab
  77bbd0:	53                                              	push   ebx
  77bbd1:	8b 5c 24 60                                     	mov    ebx,DWORD PTR [esp+0x60]
  77bbd5:	85 db                                           	test   ebx,ebx
  77bbd7:	0f 84 cd 00 00 00                               	je     0x77bcaa
  77bbdd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77bbdf:	51                                              	push   ecx
  77bbe0:	8b c8                                           	mov    ecx,eax
  77bbe2:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77bbe8:	ff d0                                           	call   eax
  77bbea:	85 c0                                           	test   eax,eax
  77bbec:	0f 84 b8 00 00 00                               	je     0x77bcaa
  77bbf2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77bbf4:	56                                              	push   esi
  77bbf5:	8b c8                                           	mov    ecx,eax
  77bbf7:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77bbfa:	68 82 83 c5 ee                                  	push   0xeec58382
  77bbff:	ff d0                                           	call   eax
  77bc01:	8b f0                                           	mov    esi,eax
  77bc03:	85 f6                                           	test   esi,esi
  77bc05:	0f 84 9e 00 00 00                               	je     0x77bca9
  77bc0b:	6a 00                                           	push   0x0
  77bc0d:	6a 00                                           	push   0x0
  77bc0f:	6a 00                                           	push   0x0
  77bc11:	6a ff                                           	push   0xffffffff
  77bc13:	6a 00                                           	push   0x0
  77bc15:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  77bc19:	c7 44 24 44 a8 ee 00 01                         	mov    DWORD PTR [esp+0x44],0x100eea8
  77bc21:	e8 8a d0 d6 ff                                  	call   0x4e8cb0
  77bc26:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77bc28:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77bc2b:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  77bc2f:	50                                              	push   eax
  77bc30:	8b ce                                           	mov    ecx,esi
  77bc32:	ff d2                                           	call   edx
  77bc34:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  77bc38:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  77bc3c:	50                                              	push   eax
  77bc3d:	51                                              	push   ecx
  77bc3e:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  77bc42:	52                                              	push   edx
  77bc43:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  77bc47:	e8 54 60 d9 ff                                  	call   0x511ca0
  77bc4c:	85 c0                                           	test   eax,eax
  77bc4e:	74 48                                           	je     0x77bc98
  77bc50:	0f b7 48 0c                                     	movzx  ecx,WORD PTR [eax+0xc]
  77bc54:	81 e1 ff 0f 00 00                               	and    ecx,0xfff
  77bc5a:	8b 14 8d f8 f4 14 01                            	mov    edx,DWORD PTR [ecx*4+0x114f4f8]
  77bc61:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77bc65:	51                                              	push   ecx
  77bc66:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  77bc6a:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  77bc6e:	52                                              	push   edx
  77bc6f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  77bc73:	51                                              	push   ecx
  77bc74:	8b c8                                           	mov    ecx,eax
  77bc76:	c7 44 24 1c 01 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x1
  77bc7e:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  77bc82:	e8 b9 60 d9 ff                                  	call   0x511d40
  77bc87:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  77bc8b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77bc8f:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  77bc92:	52                                              	push   edx
  77bc93:	ff d1                                           	call   ecx
  77bc95:	83 c4 04                                        	add    esp,0x4
  77bc98:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  77bc9c:	c7 44 24 30 a8 ee 00 01                         	mov    DWORD PTR [esp+0x30],0x100eea8
  77bca4:	e8 f7 d0 d6 ff                                  	call   0x4e8da0
  77bca9:	5e                                              	pop    esi
  77bcaa:	5b                                              	pop    ebx
  77bcab:	83 c4 50                                        	add    esp,0x50
  77bcae:	c3                                              	ret
  77bcaf:	cc                                              	int3
