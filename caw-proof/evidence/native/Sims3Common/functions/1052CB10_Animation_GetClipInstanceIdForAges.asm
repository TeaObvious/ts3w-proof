# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cb10 (Animation_GetClipInstanceIdForAges)
Paired Ghidra pseudocode: 1052CB10_Animation_GetClipInstanceIdForAges.c
Window: [0x1052cb10, 0x1052cbb0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cbb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cb10: 81 ec 10 01 00 00 53 55 56 57 e8 01 e6 02 00 8b
1052cb20: 8c 24 24 01 00 00 8b 10 8b 52 58 51 8b c8 ff d2
1052cb30: 6a ff 50 8d 44 24 28 68 00 01 00 00 50 e8 5e ad
1052cb40: 3f 00 8b 8c 24 3c 01 00 00 8b 94 24 38 01 00 00
1052cb50: 33 c0 51 52 89 44 24 28 89 44 24 2c e8 bf 93 e4
1052cb60: ff 8b f0 8d 44 24 28 50 8d 4c 24 3c 51 8b fa e8
1052cb70: 1c a2 e4 ff 57 8b ea 8b 54 24 38 56 8b d8 8b 44
1052cb80: 24 38 52 50 e8 d7 93 e4 ff 57 56 55 53 89 44 24
1052cb90: 58 89 54 24 5c e8 c6 93 e4 ff 8b 44 24 58 8b 54
1052cba0: 24 5c 83 c4 40 5f 5e 5d 5b 81 c4 10 01 00 00 c3

LINEAR DISASSEMBLY
1052cb10 <.text+0x52bb10>:
1052cb10:	81 ec 10 01 00 00                               	sub    esp,0x110
1052cb16:	53                                              	push   ebx
1052cb17:	55                                              	push   ebp
1052cb18:	56                                              	push   esi
1052cb19:	57                                              	push   edi
1052cb1a:	e8 01 e6 02 00                                  	call   0x1055b120
1052cb1f:	8b 8c 24 24 01 00 00                            	mov    ecx,DWORD PTR [esp+0x124]
1052cb26:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052cb28:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1052cb2b:	51                                              	push   ecx
1052cb2c:	8b c8                                           	mov    ecx,eax
1052cb2e:	ff d2                                           	call   edx
1052cb30:	6a ff                                           	push   0xffffffff
1052cb32:	50                                              	push   eax
1052cb33:	8d 44 24 28                                     	lea    eax,[esp+0x28]
1052cb37:	68 00 01 00 00                                  	push   0x100
1052cb3c:	50                                              	push   eax
1052cb3d:	e8 5e ad 3f 00                                  	call   0x109278a0
1052cb42:	8b 8c 24 3c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x13c]
1052cb49:	8b 94 24 38 01 00 00                            	mov    edx,DWORD PTR [esp+0x138]
1052cb50:	33 c0                                           	xor    eax,eax
1052cb52:	51                                              	push   ecx
1052cb53:	52                                              	push   edx
1052cb54:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1052cb58:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
1052cb5c:	e8 bf 93 e4 ff                                  	call   0x10375f20
1052cb61:	8b f0                                           	mov    esi,eax
1052cb63:	8d 44 24 28                                     	lea    eax,[esp+0x28]
1052cb67:	50                                              	push   eax
1052cb68:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1052cb6c:	51                                              	push   ecx
1052cb6d:	8b fa                                           	mov    edi,edx
1052cb6f:	e8 1c a2 e4 ff                                  	call   0x10376d90
1052cb74:	57                                              	push   edi
1052cb75:	8b ea                                           	mov    ebp,edx
1052cb77:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
1052cb7b:	56                                              	push   esi
1052cb7c:	8b d8                                           	mov    ebx,eax
1052cb7e:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1052cb82:	52                                              	push   edx
1052cb83:	50                                              	push   eax
1052cb84:	e8 d7 93 e4 ff                                  	call   0x10375f60
1052cb89:	57                                              	push   edi
1052cb8a:	56                                              	push   esi
1052cb8b:	55                                              	push   ebp
1052cb8c:	53                                              	push   ebx
1052cb8d:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
1052cb91:	89 54 24 5c                                     	mov    DWORD PTR [esp+0x5c],edx
1052cb95:	e8 c6 93 e4 ff                                  	call   0x10375f60
1052cb9a:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
1052cb9e:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
1052cba2:	83 c4 40                                        	add    esp,0x40
1052cba5:	5f                                              	pop    edi
1052cba6:	5e                                              	pop    esi
1052cba7:	5d                                              	pop    ebp
1052cba8:	5b                                              	pop    ebx
1052cba9:	81 c4 10 01 00 00                               	add    esp,0x110
1052cbaf:	c3                                              	ret
