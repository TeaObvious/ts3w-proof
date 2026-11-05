# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078df10 (ScriptCore.World::World_WinAttachToWorldPositionImpl)
Paired Ghidra pseudocode: 0078DF10_ScriptCore_World_World_WinAttachToWorldPositionImpl.c
Window: [0x0078df10, 0x0078e140) (560 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078df10: e8 7b b4 fd ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0078df20: 00 51 8b c8 ff d2 85 c0 0f 84 0a 02 00 00 8b 10
0078df30: 57 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 85
0078df40: ff 0f 84 f0 01 00 00 80 7c 24 24 00 56 6a 00 0f
0078df50: 84 36 01 00 00 8b 17 8b 82 10 01 00 00 8b cf ff
0078df60: d0 8b f0 85 f6 74 40 53 33 db 85 f6 74 14 8b 16
0078df70: 8b 42 0c 68 6a 52 86 04 8b ce ff d0 85 c0 74 02
0078df80: 8b de 8b 17 8b 82 10 01 00 00 56 8b cf ff d0 85
0078df90: db 8b f0 74 0d 8b 17 8b 82 0c 01 00 00 53 8b cf
0078dfa0: ff d0 85 f6 75 c2 5b 6a 00 68 f8 19 01 01 6a 10
0078dfb0: 68 a0 00 00 00 e8 f6 70 d7 ff 83 c4 10 85 c0 0f
0078dfc0: 84 bf 00 00 00 8b c8 e8 54 e8 04 00 8b f0 85 f6
0078dfd0: 74 08 8b 16 8b 02 8b ce ff d0 8b 16 8b 82 9c 00
0078dfe0: 00 00 6a 00 6a 00 8b ce ff d0 8b 16 8b 82 a0 00
0078dff0: 00 00 6a 01 8b ce ff d0 d9 44 24 18 8b 16 8b 82
0078e000: a4 00 00 00 83 ec 0c d9 5c 24 08 8b ce d9 44 24
0078e010: 20 d9 5c 24 04 d9 44 24 1c d9 1c 24 ff d0 d9 44
0078e020: 24 20 8b 16 8b 82 a8 00 00 00 83 ec 08 d9 5c 24
0078e030: 04 8b ce d9 44 24 24 d9 1c 24 ff d0 8b 4c 24 24
0078e040: 51 8b ce e8 48 e0 04 00 8b 54 24 2c 6a 00 52 8b
0078e050: ce e8 8a e0 04 00 8b 44 24 30 50 8b ce e8 6e e0
0078e060: 04 00 8b 17 8b 82 08 01 00 00 56 8b cf ff d0 8b
0078e070: 16 8b 42 60 57 8b ce ff d0 8b 16 8b 42 04 8b ce
0078e080: 5e 5f ff e0 33 f6 e9 4f ff ff ff 68 e0 19 01 01
0078e090: 6a 10 6a 60 e8 17 70 d7 ff 83 c4 10 85 c0 0f 84
0078e0a0: 8f 00 00 00 8b c8 e8 d5 e9 04 00 8b f0 85 f6 74
0078e0b0: 08 8b 16 8b 02 8b ce ff d0 6a 01 8b ce e8 ce e8
0078e0c0: 04 00 d9 44 24 18 83 ec 0c d9 5c 24 08 8b ce d9
0078e0d0: 44 24 20 d9 5c 24 04 d9 44 24 1c d9 1c 24 e8 ed
0078e0e0: e8 04 00 d9 44 24 20 83 ec 08 d9 5c 24 04 8b ce
0078e0f0: d9 44 24 24 d9 1c 24 e8 34 e9 04 00 8b 4c 24 24
0078e100: 51 8b ce e8 a8 e8 04 00 8b 44 24 30 8a 54 24 2c
0078e110: 50 8b ce 88 56 33 e8 a5 e8 04 00 8b 17 8b 82 88
0078e120: 00 00 00 56 8b cf ff d0 8b 16 8b 42 04 8b ce 5e
0078e130: 5f ff e0 33 f6 eb 82 5f c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078df10 <.text+0x38cf10>:
  78df10:	e8 7b b4 fd ff                                  	call   0x769390
  78df15:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78df19:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78df1b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  78df21:	51                                              	push   ecx
  78df22:	8b c8                                           	mov    ecx,eax
  78df24:	ff d2                                           	call   edx
  78df26:	85 c0                                           	test   eax,eax
  78df28:	0f 84 0a 02 00 00                               	je     0x78e138
  78df2e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78df30:	57                                              	push   edi
  78df31:	8b c8                                           	mov    ecx,eax
  78df33:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78df36:	68 18 82 ee ee                                  	push   0xeeee8218
  78df3b:	ff d0                                           	call   eax
  78df3d:	8b f8                                           	mov    edi,eax
  78df3f:	85 ff                                           	test   edi,edi
  78df41:	0f 84 f0 01 00 00                               	je     0x78e137
  78df47:	80 7c 24 24 00                                  	cmp    BYTE PTR [esp+0x24],0x0
  78df4c:	56                                              	push   esi
  78df4d:	6a 00                                           	push   0x0
  78df4f:	0f 84 36 01 00 00                               	je     0x78e08b
  78df55:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78df57:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78df5d:	8b cf                                           	mov    ecx,edi
  78df5f:	ff d0                                           	call   eax
  78df61:	8b f0                                           	mov    esi,eax
  78df63:	85 f6                                           	test   esi,esi
  78df65:	74 40                                           	je     0x78dfa7
  78df67:	53                                              	push   ebx
  78df68:	33 db                                           	xor    ebx,ebx
  78df6a:	85 f6                                           	test   esi,esi
  78df6c:	74 14                                           	je     0x78df82
  78df6e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78df70:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78df73:	68 6a 52 86 04                                  	push   0x486526a
  78df78:	8b ce                                           	mov    ecx,esi
  78df7a:	ff d0                                           	call   eax
  78df7c:	85 c0                                           	test   eax,eax
  78df7e:	74 02                                           	je     0x78df82
  78df80:	8b de                                           	mov    ebx,esi
  78df82:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78df84:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78df8a:	56                                              	push   esi
  78df8b:	8b cf                                           	mov    ecx,edi
  78df8d:	ff d0                                           	call   eax
  78df8f:	85 db                                           	test   ebx,ebx
  78df91:	8b f0                                           	mov    esi,eax
  78df93:	74 0d                                           	je     0x78dfa2
  78df95:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78df97:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  78df9d:	53                                              	push   ebx
  78df9e:	8b cf                                           	mov    ecx,edi
  78dfa0:	ff d0                                           	call   eax
  78dfa2:	85 f6                                           	test   esi,esi
  78dfa4:	75 c2                                           	jne    0x78df68
  78dfa6:	5b                                              	pop    ebx
  78dfa7:	6a 00                                           	push   0x0
  78dfa9:	68 f8 19 01 01                                  	push   0x10119f8
  78dfae:	6a 10                                           	push   0x10
  78dfb0:	68 a0 00 00 00                                  	push   0xa0
  78dfb5:	e8 f6 70 d7 ff                                  	call   0x5050b0
  78dfba:	83 c4 10                                        	add    esp,0x10
  78dfbd:	85 c0                                           	test   eax,eax
  78dfbf:	0f 84 bf 00 00 00                               	je     0x78e084
  78dfc5:	8b c8                                           	mov    ecx,eax
  78dfc7:	e8 54 e8 04 00                                  	call   0x7dc820
  78dfcc:	8b f0                                           	mov    esi,eax
  78dfce:	85 f6                                           	test   esi,esi
  78dfd0:	74 08                                           	je     0x78dfda
  78dfd2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78dfd4:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78dfd6:	8b ce                                           	mov    ecx,esi
  78dfd8:	ff d0                                           	call   eax
  78dfda:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78dfdc:	8b 82 9c 00 00 00                               	mov    eax,DWORD PTR [edx+0x9c]
  78dfe2:	6a 00                                           	push   0x0
  78dfe4:	6a 00                                           	push   0x0
  78dfe6:	8b ce                                           	mov    ecx,esi
  78dfe8:	ff d0                                           	call   eax
  78dfea:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78dfec:	8b 82 a0 00 00 00                               	mov    eax,DWORD PTR [edx+0xa0]
  78dff2:	6a 01                                           	push   0x1
  78dff4:	8b ce                                           	mov    ecx,esi
  78dff6:	ff d0                                           	call   eax
  78dff8:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  78dffc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78dffe:	8b 82 a4 00 00 00                               	mov    eax,DWORD PTR [edx+0xa4]
  78e004:	83 ec 0c                                        	sub    esp,0xc
  78e007:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78e00b:	8b ce                                           	mov    ecx,esi
  78e00d:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78e011:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e015:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78e019:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e01c:	ff d0                                           	call   eax
  78e01e:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78e022:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e024:	8b 82 a8 00 00 00                               	mov    eax,DWORD PTR [edx+0xa8]
  78e02a:	83 ec 08                                        	sub    esp,0x8
  78e02d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e031:	8b ce                                           	mov    ecx,esi
  78e033:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78e037:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e03a:	ff d0                                           	call   eax
  78e03c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78e040:	51                                              	push   ecx
  78e041:	8b ce                                           	mov    ecx,esi
  78e043:	e8 48 e0 04 00                                  	call   0x7dc090
  78e048:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  78e04c:	6a 00                                           	push   0x0
  78e04e:	52                                              	push   edx
  78e04f:	8b ce                                           	mov    ecx,esi
  78e051:	e8 8a e0 04 00                                  	call   0x7dc0e0
  78e056:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  78e05a:	50                                              	push   eax
  78e05b:	8b ce                                           	mov    ecx,esi
  78e05d:	e8 6e e0 04 00                                  	call   0x7dc0d0
  78e062:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e064:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  78e06a:	56                                              	push   esi
  78e06b:	8b cf                                           	mov    ecx,edi
  78e06d:	ff d0                                           	call   eax
  78e06f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e071:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  78e074:	57                                              	push   edi
  78e075:	8b ce                                           	mov    ecx,esi
  78e077:	ff d0                                           	call   eax
  78e079:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e07b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78e07e:	8b ce                                           	mov    ecx,esi
  78e080:	5e                                              	pop    esi
  78e081:	5f                                              	pop    edi
  78e082:	ff e0                                           	jmp    eax
  78e084:	33 f6                                           	xor    esi,esi
  78e086:	e9 4f ff ff ff                                  	jmp    0x78dfda
  78e08b:	68 e0 19 01 01                                  	push   0x10119e0
  78e090:	6a 10                                           	push   0x10
  78e092:	6a 60                                           	push   0x60
  78e094:	e8 17 70 d7 ff                                  	call   0x5050b0
  78e099:	83 c4 10                                        	add    esp,0x10
  78e09c:	85 c0                                           	test   eax,eax
  78e09e:	0f 84 8f 00 00 00                               	je     0x78e133
  78e0a4:	8b c8                                           	mov    ecx,eax
  78e0a6:	e8 d5 e9 04 00                                  	call   0x7dca80
  78e0ab:	8b f0                                           	mov    esi,eax
  78e0ad:	85 f6                                           	test   esi,esi
  78e0af:	74 08                                           	je     0x78e0b9
  78e0b1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e0b3:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78e0b5:	8b ce                                           	mov    ecx,esi
  78e0b7:	ff d0                                           	call   eax
  78e0b9:	6a 01                                           	push   0x1
  78e0bb:	8b ce                                           	mov    ecx,esi
  78e0bd:	e8 ce e8 04 00                                  	call   0x7dc990
  78e0c2:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  78e0c6:	83 ec 0c                                        	sub    esp,0xc
  78e0c9:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78e0cd:	8b ce                                           	mov    ecx,esi
  78e0cf:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78e0d3:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e0d7:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78e0db:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e0de:	e8 ed e8 04 00                                  	call   0x7dc9d0
  78e0e3:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78e0e7:	83 ec 08                                        	sub    esp,0x8
  78e0ea:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e0ee:	8b ce                                           	mov    ecx,esi
  78e0f0:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78e0f4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e0f7:	e8 34 e9 04 00                                  	call   0x7dca30
  78e0fc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78e100:	51                                              	push   ecx
  78e101:	8b ce                                           	mov    ecx,esi
  78e103:	e8 a8 e8 04 00                                  	call   0x7dc9b0
  78e108:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  78e10c:	8a 54 24 2c                                     	mov    dl,BYTE PTR [esp+0x2c]
  78e110:	50                                              	push   eax
  78e111:	8b ce                                           	mov    ecx,esi
  78e113:	88 56 33                                        	mov    BYTE PTR [esi+0x33],dl
  78e116:	e8 a5 e8 04 00                                  	call   0x7dc9c0
  78e11b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e11d:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  78e123:	56                                              	push   esi
  78e124:	8b cf                                           	mov    ecx,edi
  78e126:	ff d0                                           	call   eax
  78e128:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e12a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78e12d:	8b ce                                           	mov    ecx,esi
  78e12f:	5e                                              	pop    esi
  78e130:	5f                                              	pop    edi
  78e131:	ff e0                                           	jmp    eax
  78e133:	33 f6                                           	xor    esi,esi
  78e135:	eb 82                                           	jmp    0x78e0b9
  78e137:	5f                                              	pop    edi
  78e138:	c3                                              	ret
  78e139:	cc                                              	int3
  78e13a:	cc                                              	int3
  78e13b:	cc                                              	int3
  78e13c:	cc                                              	int3
  78e13d:	cc                                              	int3
  78e13e:	cc                                              	int3
  78e13f:	cc                                              	int3
