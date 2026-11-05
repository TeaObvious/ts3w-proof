# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9d90 (ScriptCore.CASUtils::CASUtils_AddObjectToBabyMakerSceneWindowImpl)
Paired Ghidra pseudocode: 005A9D90_ScriptCore_CASUtils_CASUtils_AddObjectToBabyMakerSceneWindowImpl.c
Window: [0x005a9d90, 0x005a9e80) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9d90: 55 8b ec 83 e4 f0 83 ec 24 53 56 8b 75 08 8b c6
005a9da0: 25 00 00 00 ff 3d 00 00 00 30 57 0f 85 c7 00 00
005a9db0: 00 e8 da f5 1b 00 8b 10 8b c8 8b 82 cc 00 00 00
005a9dc0: 56 ff d0 85 c0 0f 84 ad 00 00 00 8b 10 8b c8 8b
005a9dd0: 42 0c 68 6f 43 9a 03 ff d0 8b d8 85 db 0f 84 95
005a9de0: 00 00 00 e8 88 d7 38 00 8b 4d 10 8b 55 0c 51 52
005a9df0: 8b c8 e8 89 e1 38 00 8b f0 85 f6 74 7b 8d 7e 04
005a9e00: 8b c7 b9 01 00 00 00 f0 0f c1 08 6a 00 8b cb e8
005a9e10: cc 15 24 00 33 db 3b c3 74 41 8d 54 24 10 52 56
005a9e20: 6a 0b 89 44 24 24 89 5c 24 1c 89 5c 24 20 e8 8d
005a9e30: b8 38 00 a1 58 a1 1e 01 83 c4 0c 50 8b ce e8 1d
005a9e40: a4 38 00 3b c3 74 14 8d 4c 24 20 51 0f 57 c0 8b
005a9e50: c8 0f 29 44 24 24 e8 d5 e4 3a 00 8b d7 83 c8 ff
005a9e60: f0 0f c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16
005a9e70: 8b 02 6a 01 8b ce ff d0 5f 5e 5b 8b e5 5d c3 cc

LINEAR DISASSEMBLY
005a9d90 <.text+0x1a8d90>:
  5a9d90:	55                                              	push   ebp
  5a9d91:	8b ec                                           	mov    ebp,esp
  5a9d93:	83 e4 f0                                        	and    esp,0xfffffff0
  5a9d96:	83 ec 24                                        	sub    esp,0x24
  5a9d99:	53                                              	push   ebx
  5a9d9a:	56                                              	push   esi
  5a9d9b:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5a9d9e:	8b c6                                           	mov    eax,esi
  5a9da0:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a9da5:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a9daa:	57                                              	push   edi
  5a9dab:	0f 85 c7 00 00 00                               	jne    0x5a9e78
  5a9db1:	e8 da f5 1b 00                                  	call   0x769390
  5a9db6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9db8:	8b c8                                           	mov    ecx,eax
  5a9dba:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a9dc0:	56                                              	push   esi
  5a9dc1:	ff d0                                           	call   eax
  5a9dc3:	85 c0                                           	test   eax,eax
  5a9dc5:	0f 84 ad 00 00 00                               	je     0x5a9e78
  5a9dcb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9dcd:	8b c8                                           	mov    ecx,eax
  5a9dcf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a9dd2:	68 6f 43 9a 03                                  	push   0x39a436f
  5a9dd7:	ff d0                                           	call   eax
  5a9dd9:	8b d8                                           	mov    ebx,eax
  5a9ddb:	85 db                                           	test   ebx,ebx
  5a9ddd:	0f 84 95 00 00 00                               	je     0x5a9e78
  5a9de3:	e8 88 d7 38 00                                  	call   0x937570
  5a9de8:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  5a9deb:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  5a9dee:	51                                              	push   ecx
  5a9def:	52                                              	push   edx
  5a9df0:	8b c8                                           	mov    ecx,eax
  5a9df2:	e8 89 e1 38 00                                  	call   0x937f80
  5a9df7:	8b f0                                           	mov    esi,eax
  5a9df9:	85 f6                                           	test   esi,esi
  5a9dfb:	74 7b                                           	je     0x5a9e78
  5a9dfd:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5a9e00:	8b c7                                           	mov    eax,edi
  5a9e02:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9e07:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9e0b:	6a 00                                           	push   0x0
  5a9e0d:	8b cb                                           	mov    ecx,ebx
  5a9e0f:	e8 cc 15 24 00                                  	call   0x7eb3e0
  5a9e14:	33 db                                           	xor    ebx,ebx
  5a9e16:	3b c3                                           	cmp    eax,ebx
  5a9e18:	74 41                                           	je     0x5a9e5b
  5a9e1a:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5a9e1e:	52                                              	push   edx
  5a9e1f:	56                                              	push   esi
  5a9e20:	6a 0b                                           	push   0xb
  5a9e22:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5a9e26:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  5a9e2a:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  5a9e2e:	e8 8d b8 38 00                                  	call   0x9356c0
  5a9e33:	a1 58 a1 1e 01                                  	mov    eax,ds:0x11ea158
  5a9e38:	83 c4 0c                                        	add    esp,0xc
  5a9e3b:	50                                              	push   eax
  5a9e3c:	8b ce                                           	mov    ecx,esi
  5a9e3e:	e8 1d a4 38 00                                  	call   0x934260
  5a9e43:	3b c3                                           	cmp    eax,ebx
  5a9e45:	74 14                                           	je     0x5a9e5b
  5a9e47:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a9e4b:	51                                              	push   ecx
  5a9e4c:	0f 57 c0                                        	xorps  xmm0,xmm0
  5a9e4f:	8b c8                                           	mov    ecx,eax
  5a9e51:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  5a9e56:	e8 d5 e4 3a 00                                  	call   0x958330
  5a9e5b:	8b d7                                           	mov    edx,edi
  5a9e5d:	83 c8 ff                                        	or     eax,0xffffffff
  5a9e60:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  5a9e64:	48                                              	dec    eax
  5a9e65:	75 11                                           	jne    0x5a9e78
  5a9e67:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9e6c:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  5a9e6e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a9e70:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5a9e72:	6a 01                                           	push   0x1
  5a9e74:	8b ce                                           	mov    ecx,esi
  5a9e76:	ff d0                                           	call   eax
  5a9e78:	5f                                              	pop    edi
  5a9e79:	5e                                              	pop    esi
  5a9e7a:	5b                                              	pop    ebx
  5a9e7b:	8b e5                                           	mov    esp,ebp
  5a9e7d:	5d                                              	pop    ebp
  5a9e7e:	c3                                              	ret
  5a9e7f:	cc                                              	int3
