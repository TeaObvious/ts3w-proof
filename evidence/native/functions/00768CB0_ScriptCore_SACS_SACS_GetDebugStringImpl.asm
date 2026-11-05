# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00768cb0 (ScriptCore.SACS::SACS_GetDebugStringImpl)
Paired Ghidra pseudocode: 00768CB0_ScriptCore_SACS_SACS_GetDebugStringImpl.c
Window: [0x00768cb0, 0x00768e90) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x00768e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00768cb0: 83 ec 48 53 55 57 e8 b5 e8 1c 00 8b 4c 24 5c 8b
00768cc0: 54 24 58 51 52 8b c8 e8 b4 f2 1c 00 8b d8 33 ff
00768cd0: 3b df 74 0c 8d 43 04 b9 01 00 00 00 f0 0f c1 08
00768ce0: 3b df b8 54 8e 1c 01 56 c7 44 24 24 2c 7e 00 01
00768cf0: 89 44 24 18 89 44 24 1c c7 44 24 20 55 8e 1c 01
00768d00: 75 17 68 57 80 00 01 68 40 80 00 01 8d 4c 24 20
00768d10: e8 fb cb c9 ff 33 f6 eb 14 8b 15 f0 a0 1e 01 52
00768d20: 8b cb e8 39 b5 1c 00 8b f0 3b f7 75 13 68 3e 80
00768d30: 00 01 68 24 80 00 01 8d 4c 24 20 e8 d0 cb c9 ff
00768d40: 6a 01 57 8d 44 24 30 50 8b ce 89 7c 24 34 89 7c
00768d50: 24 38 89 7c 24 3c c7 44 24 40 68 7f 00 01 e8 3d
00768d60: b7 1a 00 8b 7c 24 2c 8b 74 24 28 3b f7 74 2b 90
00768d70: 8b 4e 04 8b 16 51 52 8d 4c 24 20 e8 80 c9 c9 ff
00768d80: 68 15 9a f9 00 68 14 9a f9 00 8d 4c 24 20 e8 6d
00768d90: c9 c9 ff 83 c6 10 3b f7 75 d6 6a 01 6a 10 8d 44
00768da0: 24 20 50 6a 09 6a 12 8d 4c 24 4c c7 44 24 4c 6c
00768db0: 88 00 01 66 c7 44 24 56 12 00 66 c7 44 24 54 0b
00768dc0: 00 e8 fa cb d8 ff e8 c5 05 00 00 8b 10 8b 52 50
00768dd0: 8d 4c 24 10 51 8d 4c 24 3c 51 8b c8 ff d2 f6 44
00768de0: 24 40 04 8b 6c 24 10 c7 44 24 38 f4 a6 fb 00 74
00768df0: 0b 6a 00 8d 4c 24 3c e8 64 c9 d8 ff 8b 44 24 2c
00768e00: 8b 74 24 28 3b f0 8b f8 73 2a 8d 9b 00 00 00 00
00768e10: 8b 06 8b 4e 08 2b c8 83 f9 01 7e 0d 85 c0 74 09
00768e20: 50 e8 ba b6 d7 ff 83 c4 04 83 c6 10 3b f7 72 e0
00768e30: 8b 74 24 28 85 f6 74 09 56 e8 a2 b6 d7 ff 83 c4
00768e40: 04 8b 54 24 20 8b 44 24 18 2b d0 83 fa 01 5e 7e
00768e50: 0d 85 c0 74 09 50 e8 85 b6 d7 ff 83 c4 04 85 db
00768e60: 74 20 8d 43 04 8b c8 83 ca ff f0 0f c1 11 4a 75
00768e70: 11 b9 01 00 00 00 87 08 8b 13 8b 02 6a 01 8b cb
00768e80: ff d0 5f 8b c5 5d 5b 83 c4 48 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00768cb0 <.text+0x367cb0>:
  768cb0:	83 ec 48                                        	sub    esp,0x48
  768cb3:	53                                              	push   ebx
  768cb4:	55                                              	push   ebp
  768cb5:	57                                              	push   edi
  768cb6:	e8 b5 e8 1c 00                                  	call   0x937570
  768cbb:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  768cbf:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  768cc3:	51                                              	push   ecx
  768cc4:	52                                              	push   edx
  768cc5:	8b c8                                           	mov    ecx,eax
  768cc7:	e8 b4 f2 1c 00                                  	call   0x937f80
  768ccc:	8b d8                                           	mov    ebx,eax
  768cce:	33 ff                                           	xor    edi,edi
  768cd0:	3b df                                           	cmp    ebx,edi
  768cd2:	74 0c                                           	je     0x768ce0
  768cd4:	8d 43 04                                        	lea    eax,[ebx+0x4]
  768cd7:	b9 01 00 00 00                                  	mov    ecx,0x1
  768cdc:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  768ce0:	3b df                                           	cmp    ebx,edi
  768ce2:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  768ce7:	56                                              	push   esi
  768ce8:	c7 44 24 24 2c 7e 00 01                         	mov    DWORD PTR [esp+0x24],0x1007e2c
  768cf0:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  768cf4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  768cf8:	c7 44 24 20 55 8e 1c 01                         	mov    DWORD PTR [esp+0x20],0x11c8e55
  768d00:	75 17                                           	jne    0x768d19
  768d02:	68 57 80 00 01                                  	push   0x1008057
  768d07:	68 40 80 00 01                                  	push   0x1008040
  768d0c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  768d10:	e8 fb cb c9 ff                                  	call   0x405910
  768d15:	33 f6                                           	xor    esi,esi
  768d17:	eb 14                                           	jmp    0x768d2d
  768d19:	8b 15 f0 a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0f0
  768d1f:	52                                              	push   edx
  768d20:	8b cb                                           	mov    ecx,ebx
  768d22:	e8 39 b5 1c 00                                  	call   0x934260
  768d27:	8b f0                                           	mov    esi,eax
  768d29:	3b f7                                           	cmp    esi,edi
  768d2b:	75 13                                           	jne    0x768d40
  768d2d:	68 3e 80 00 01                                  	push   0x100803e
  768d32:	68 24 80 00 01                                  	push   0x1008024
  768d37:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  768d3b:	e8 d0 cb c9 ff                                  	call   0x405910
  768d40:	6a 01                                           	push   0x1
  768d42:	57                                              	push   edi
  768d43:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  768d47:	50                                              	push   eax
  768d48:	8b ce                                           	mov    ecx,esi
  768d4a:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  768d4e:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  768d52:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  768d56:	c7 44 24 40 68 7f 00 01                         	mov    DWORD PTR [esp+0x40],0x1007f68
  768d5e:	e8 3d b7 1a 00                                  	call   0x9144a0
  768d63:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
  768d67:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  768d6b:	3b f7                                           	cmp    esi,edi
  768d6d:	74 2b                                           	je     0x768d9a
  768d6f:	90                                              	nop
  768d70:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  768d73:	8b 16                                           	mov    edx,DWORD PTR [esi]
  768d75:	51                                              	push   ecx
  768d76:	52                                              	push   edx
  768d77:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  768d7b:	e8 80 c9 c9 ff                                  	call   0x405700
  768d80:	68 15 9a f9 00                                  	push   0xf99a15
  768d85:	68 14 9a f9 00                                  	push   0xf99a14
  768d8a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  768d8e:	e8 6d c9 c9 ff                                  	call   0x405700
  768d93:	83 c6 10                                        	add    esi,0x10
  768d96:	3b f7                                           	cmp    esi,edi
  768d98:	75 d6                                           	jne    0x768d70
  768d9a:	6a 01                                           	push   0x1
  768d9c:	6a 10                                           	push   0x10
  768d9e:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  768da2:	50                                              	push   eax
  768da3:	6a 09                                           	push   0x9
  768da5:	6a 12                                           	push   0x12
  768da7:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  768dab:	c7 44 24 4c 6c 88 00 01                         	mov    DWORD PTR [esp+0x4c],0x100886c
  768db3:	66 c7 44 24 56 12 00                            	mov    WORD PTR [esp+0x56],0x12
  768dba:	66 c7 44 24 54 0b 00                            	mov    WORD PTR [esp+0x54],0xb
  768dc1:	e8 fa cb d8 ff                                  	call   0x4f59c0
  768dc6:	e8 c5 05 00 00                                  	call   0x769390
  768dcb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  768dcd:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  768dd0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  768dd4:	51                                              	push   ecx
  768dd5:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  768dd9:	51                                              	push   ecx
  768dda:	8b c8                                           	mov    ecx,eax
  768ddc:	ff d2                                           	call   edx
  768dde:	f6 44 24 40 04                                  	test   BYTE PTR [esp+0x40],0x4
  768de3:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  768de7:	c7 44 24 38 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x38],0xfba6f4
  768def:	74 0b                                           	je     0x768dfc
  768df1:	6a 00                                           	push   0x0
  768df3:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  768df7:	e8 64 c9 d8 ff                                  	call   0x4f5760
  768dfc:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  768e00:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  768e04:	3b f0                                           	cmp    esi,eax
  768e06:	8b f8                                           	mov    edi,eax
  768e08:	73 2a                                           	jae    0x768e34
  768e0a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  768e10:	8b 06                                           	mov    eax,DWORD PTR [esi]
  768e12:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  768e15:	2b c8                                           	sub    ecx,eax
  768e17:	83 f9 01                                        	cmp    ecx,0x1
  768e1a:	7e 0d                                           	jle    0x768e29
  768e1c:	85 c0                                           	test   eax,eax
  768e1e:	74 09                                           	je     0x768e29
  768e20:	50                                              	push   eax
  768e21:	e8 ba b6 d7 ff                                  	call   0x4e44e0
  768e26:	83 c4 04                                        	add    esp,0x4
  768e29:	83 c6 10                                        	add    esi,0x10
  768e2c:	3b f7                                           	cmp    esi,edi
  768e2e:	72 e0                                           	jb     0x768e10
  768e30:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  768e34:	85 f6                                           	test   esi,esi
  768e36:	74 09                                           	je     0x768e41
  768e38:	56                                              	push   esi
  768e39:	e8 a2 b6 d7 ff                                  	call   0x4e44e0
  768e3e:	83 c4 04                                        	add    esp,0x4
  768e41:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  768e45:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  768e49:	2b d0                                           	sub    edx,eax
  768e4b:	83 fa 01                                        	cmp    edx,0x1
  768e4e:	5e                                              	pop    esi
  768e4f:	7e 0d                                           	jle    0x768e5e
  768e51:	85 c0                                           	test   eax,eax
  768e53:	74 09                                           	je     0x768e5e
  768e55:	50                                              	push   eax
  768e56:	e8 85 b6 d7 ff                                  	call   0x4e44e0
  768e5b:	83 c4 04                                        	add    esp,0x4
  768e5e:	85 db                                           	test   ebx,ebx
  768e60:	74 20                                           	je     0x768e82
  768e62:	8d 43 04                                        	lea    eax,[ebx+0x4]
  768e65:	8b c8                                           	mov    ecx,eax
  768e67:	83 ca ff                                        	or     edx,0xffffffff
  768e6a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  768e6e:	4a                                              	dec    edx
  768e6f:	75 11                                           	jne    0x768e82
  768e71:	b9 01 00 00 00                                  	mov    ecx,0x1
  768e76:	87 08                                           	xchg   DWORD PTR [eax],ecx
  768e78:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  768e7a:	8b 02                                           	mov    eax,DWORD PTR [edx]
  768e7c:	6a 01                                           	push   0x1
  768e7e:	8b cb                                           	mov    ecx,ebx
  768e80:	ff d0                                           	call   eax
  768e82:	5f                                              	pop    edi
  768e83:	8b c5                                           	mov    eax,ebp
  768e85:	5d                                              	pop    ebp
  768e86:	5b                                              	pop    ebx
  768e87:	83 c4 48                                        	add    esp,0x48
  768e8a:	c3                                              	ret
  768e8b:	cc                                              	int3
  768e8c:	cc                                              	int3
  768e8d:	cc                                              	int3
  768e8e:	cc                                              	int3
  768e8f:	cc                                              	int3
