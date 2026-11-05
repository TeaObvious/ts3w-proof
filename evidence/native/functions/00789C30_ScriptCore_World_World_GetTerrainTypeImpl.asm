# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789c30 (ScriptCore.World::World_GetTerrainTypeImpl)
Paired Ghidra pseudocode: 00789C30_ScriptCore_World_World_GetTerrainTypeImpl.c
Window: [0x00789c30, 0x00789e20) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789c30: 83 ec 1c 56 57 8b 3d c4 db 1e 01 85 ff 0f 84 c6
00789c40: 01 00 00 83 7c 24 30 00 75 68 d9 44 24 2c 6a 00
00789c50: 6a 00 6a 00 6a 00 6a 00 6a 01 6a 00 83 ec 08 d9
00789c60: 5c 24 04 8b cf d9 44 24 4c d9 1c 24 e8 1f 04 4e
00789c70: 00 8b 47 60 d9 40 14 df f1 dd d8 76 0b 5f b8 02
00789c80: 00 00 00 5e 83 c4 1c c3 d9 44 24 2c 6a 01 83 ec
00789c90: 08 d9 5c 24 04 8b cf d9 44 24 34 d9 1c 24 e8 dd
00789ca0: 6b 4d 00 85 c0 74 0b 5f b8 08 00 00 00 5e 83 c4
00789cb0: 1c c3 d9 44 24 2c 83 ec 08 d9 5c 24 04 8b cf d9
00789cc0: 44 24 30 d9 1c 24 e8 05 eb 4d 00 d9 44 24 2c 8b
00789cd0: f0 85 f6 0f 84 0d 01 00 00 0f 57 c0 8d 4c 24 0c
00789ce0: 51 8d 54 24 0c 52 83 ec 08 d9 5c 24 04 8b ce d9
00789cf0: 44 24 38 f3 0f 11 44 24 18 d9 1c 24 f3 0f 11 44
00789d00: 24 1c e8 39 d1 32 00 f3 0f 10 44 24 08 0c ff 88
00789d10: 44 24 10 88 44 24 11 88 44 24 13 8d 44 24 10 50
00789d20: 8d 4c 24 1c f3 0f 11 44 24 1c f3 0f 10 44 24 10
00789d30: 51 f3 0f 11 44 24 24 c7 44 24 28 00 00 00 00 c6
00789d40: 44 24 1a 00 e8 67 e0 36 00 83 c4 08 8d 54 24 10
00789d50: 52 8b ce e8 58 b1 ff ff 6a 01 6a 01 8d 44 24 18
00789d60: 50 56 e8 09 70 34 00 83 c4 10 84 c0 75 6d 6a 00
00789d70: 6a 01 6a 01 8d 4c 24 1c 51 56 e8 81 6f 34 00 83
00789d80: c4 14 84 c0 75 55 8b 54 24 13 52 8d 44 24 14 50
00789d90: 8b ce e8 e9 62 32 00 84 c0 74 0b 5f b8 80 00 00
00789da0: 00 5e 83 c4 1c c3 8b 8e 90 02 00 00 85 c9 74 20
00789db0: 8b 54 24 13 6a 01 52 8d 44 24 18 50 e8 ef 42 30
00789dc0: 00 84 c0 74 0b 5f b8 20 00 00 00 5e 83 c4 1c c3
00789dd0: 5f b8 10 00 00 00 5e 83 c4 1c c3 5f b8 40 00 00
00789de0: 00 5e 83 c4 1c c3 8b 4f 5c 6a 00 6a 00 83 ec 08
00789df0: d9 5c 24 04 d9 44 24 38 d9 1c 24 e8 c0 c7 3f 00
00789e00: 84 c0 b8 04 00 00 00 75 05 b8 01 00 00 00 5f 5e
00789e10: 83 c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00789c30 <.text+0x388c30>:
  789c30:	83 ec 1c                                        	sub    esp,0x1c
  789c33:	56                                              	push   esi
  789c34:	57                                              	push   edi
  789c35:	8b 3d c4 db 1e 01                               	mov    edi,DWORD PTR ds:0x11edbc4
  789c3b:	85 ff                                           	test   edi,edi
  789c3d:	0f 84 c6 01 00 00                               	je     0x789e09
  789c43:	83 7c 24 30 00                                  	cmp    DWORD PTR [esp+0x30],0x0
  789c48:	75 68                                           	jne    0x789cb2
  789c4a:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  789c4e:	6a 00                                           	push   0x0
  789c50:	6a 00                                           	push   0x0
  789c52:	6a 00                                           	push   0x0
  789c54:	6a 00                                           	push   0x0
  789c56:	6a 00                                           	push   0x0
  789c58:	6a 01                                           	push   0x1
  789c5a:	6a 00                                           	push   0x0
  789c5c:	83 ec 08                                        	sub    esp,0x8
  789c5f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789c63:	8b cf                                           	mov    ecx,edi
  789c65:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  789c69:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789c6c:	e8 1f 04 4e 00                                  	call   0xc6a090
  789c71:	8b 47 60                                        	mov    eax,DWORD PTR [edi+0x60]
  789c74:	d9 40 14                                        	fld    DWORD PTR [eax+0x14]
  789c77:	df f1                                           	fcomip st,st(1)
  789c79:	dd d8                                           	fstp   st(0)
  789c7b:	76 0b                                           	jbe    0x789c88
  789c7d:	5f                                              	pop    edi
  789c7e:	b8 02 00 00 00                                  	mov    eax,0x2
  789c83:	5e                                              	pop    esi
  789c84:	83 c4 1c                                        	add    esp,0x1c
  789c87:	c3                                              	ret
  789c88:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  789c8c:	6a 01                                           	push   0x1
  789c8e:	83 ec 08                                        	sub    esp,0x8
  789c91:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789c95:	8b cf                                           	mov    ecx,edi
  789c97:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  789c9b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789c9e:	e8 dd 6b 4d 00                                  	call   0xc60880
  789ca3:	85 c0                                           	test   eax,eax
  789ca5:	74 0b                                           	je     0x789cb2
  789ca7:	5f                                              	pop    edi
  789ca8:	b8 08 00 00 00                                  	mov    eax,0x8
  789cad:	5e                                              	pop    esi
  789cae:	83 c4 1c                                        	add    esp,0x1c
  789cb1:	c3                                              	ret
  789cb2:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  789cb6:	83 ec 08                                        	sub    esp,0x8
  789cb9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789cbd:	8b cf                                           	mov    ecx,edi
  789cbf:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  789cc3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789cc6:	e8 05 eb 4d 00                                  	call   0xc687d0
  789ccb:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  789ccf:	8b f0                                           	mov    esi,eax
  789cd1:	85 f6                                           	test   esi,esi
  789cd3:	0f 84 0d 01 00 00                               	je     0x789de6
  789cd9:	0f 57 c0                                        	xorps  xmm0,xmm0
  789cdc:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  789ce0:	51                                              	push   ecx
  789ce1:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  789ce5:	52                                              	push   edx
  789ce6:	83 ec 08                                        	sub    esp,0x8
  789ce9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789ced:	8b ce                                           	mov    ecx,esi
  789cef:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  789cf3:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  789cf9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789cfc:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  789d02:	e8 39 d1 32 00                                  	call   0xab6e40
  789d07:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  789d0d:	0c ff                                           	or     al,0xff
  789d0f:	88 44 24 10                                     	mov    BYTE PTR [esp+0x10],al
  789d13:	88 44 24 11                                     	mov    BYTE PTR [esp+0x11],al
  789d17:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
  789d1b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  789d1f:	50                                              	push   eax
  789d20:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  789d24:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  789d2a:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  789d30:	51                                              	push   ecx
  789d31:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  789d37:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  789d3f:	c6 44 24 1a 00                                  	mov    BYTE PTR [esp+0x1a],0x0
  789d44:	e8 67 e0 36 00                                  	call   0xaf7db0
  789d49:	83 c4 08                                        	add    esp,0x8
  789d4c:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  789d50:	52                                              	push   edx
  789d51:	8b ce                                           	mov    ecx,esi
  789d53:	e8 58 b1 ff ff                                  	call   0x784eb0
  789d58:	6a 01                                           	push   0x1
  789d5a:	6a 01                                           	push   0x1
  789d5c:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  789d60:	50                                              	push   eax
  789d61:	56                                              	push   esi
  789d62:	e8 09 70 34 00                                  	call   0xad0d70
  789d67:	83 c4 10                                        	add    esp,0x10
  789d6a:	84 c0                                           	test   al,al
  789d6c:	75 6d                                           	jne    0x789ddb
  789d6e:	6a 00                                           	push   0x0
  789d70:	6a 01                                           	push   0x1
  789d72:	6a 01                                           	push   0x1
  789d74:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  789d78:	51                                              	push   ecx
  789d79:	56                                              	push   esi
  789d7a:	e8 81 6f 34 00                                  	call   0xad0d00
  789d7f:	83 c4 14                                        	add    esp,0x14
  789d82:	84 c0                                           	test   al,al
  789d84:	75 55                                           	jne    0x789ddb
  789d86:	8b 54 24 13                                     	mov    edx,DWORD PTR [esp+0x13]
  789d8a:	52                                              	push   edx
  789d8b:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  789d8f:	50                                              	push   eax
  789d90:	8b ce                                           	mov    ecx,esi
  789d92:	e8 e9 62 32 00                                  	call   0xab0080
  789d97:	84 c0                                           	test   al,al
  789d99:	74 0b                                           	je     0x789da6
  789d9b:	5f                                              	pop    edi
  789d9c:	b8 80 00 00 00                                  	mov    eax,0x80
  789da1:	5e                                              	pop    esi
  789da2:	83 c4 1c                                        	add    esp,0x1c
  789da5:	c3                                              	ret
  789da6:	8b 8e 90 02 00 00                               	mov    ecx,DWORD PTR [esi+0x290]
  789dac:	85 c9                                           	test   ecx,ecx
  789dae:	74 20                                           	je     0x789dd0
  789db0:	8b 54 24 13                                     	mov    edx,DWORD PTR [esp+0x13]
  789db4:	6a 01                                           	push   0x1
  789db6:	52                                              	push   edx
  789db7:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  789dbb:	50                                              	push   eax
  789dbc:	e8 ef 42 30 00                                  	call   0xa8e0b0
  789dc1:	84 c0                                           	test   al,al
  789dc3:	74 0b                                           	je     0x789dd0
  789dc5:	5f                                              	pop    edi
  789dc6:	b8 20 00 00 00                                  	mov    eax,0x20
  789dcb:	5e                                              	pop    esi
  789dcc:	83 c4 1c                                        	add    esp,0x1c
  789dcf:	c3                                              	ret
  789dd0:	5f                                              	pop    edi
  789dd1:	b8 10 00 00 00                                  	mov    eax,0x10
  789dd6:	5e                                              	pop    esi
  789dd7:	83 c4 1c                                        	add    esp,0x1c
  789dda:	c3                                              	ret
  789ddb:	5f                                              	pop    edi
  789ddc:	b8 40 00 00 00                                  	mov    eax,0x40
  789de1:	5e                                              	pop    esi
  789de2:	83 c4 1c                                        	add    esp,0x1c
  789de5:	c3                                              	ret
  789de6:	8b 4f 5c                                        	mov    ecx,DWORD PTR [edi+0x5c]
  789de9:	6a 00                                           	push   0x0
  789deb:	6a 00                                           	push   0x0
  789ded:	83 ec 08                                        	sub    esp,0x8
  789df0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789df4:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  789df8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789dfb:	e8 c0 c7 3f 00                                  	call   0xb865c0
  789e00:	84 c0                                           	test   al,al
  789e02:	b8 04 00 00 00                                  	mov    eax,0x4
  789e07:	75 05                                           	jne    0x789e0e
  789e09:	b8 01 00 00 00                                  	mov    eax,0x1
  789e0e:	5f                                              	pop    edi
  789e0f:	5e                                              	pop    esi
  789e10:	83 c4 1c                                        	add    esp,0x1c
  789e13:	c3                                              	ret
  789e14:	cc                                              	int3
  789e15:	cc                                              	int3
  789e16:	cc                                              	int3
  789e17:	cc                                              	int3
  789e18:	cc                                              	int3
  789e19:	cc                                              	int3
  789e1a:	cc                                              	int3
  789e1b:	cc                                              	int3
  789e1c:	cc                                              	int3
  789e1d:	cc                                              	int3
  789e1e:	cc                                              	int3
  789e1f:	cc                                              	int3
