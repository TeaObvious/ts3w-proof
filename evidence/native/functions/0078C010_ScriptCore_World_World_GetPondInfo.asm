# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c010 (ScriptCore.World::World_GetPondInfo)
Paired Ghidra pseudocode: 0078C010_ScriptCore_World_World_GetPondInfo.c
Window: [0x0078c010, 0x0078c190) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c010: 83 ec 20 56 8b 35 c4 db 1e 01 85 f6 0f 84 62 01
0078c020: 00 00 8b 44 24 2c 8b 4c 24 30 8b d0 0b d1 0f 85
0078c030: 21 01 00 00 57 8b 7c 24 2c 85 ff 0f 84 0c 01 00
0078c040: 00 8b ce e8 08 49 4d 00 3b f8 0f 87 fd 00 00 00
0078c050: 8d 47 ff 50 8b ce e8 f5 47 4d 00 85 c0 0f 84 ea
0078c060: 00 00 00 f3 0f 10 80 18 02 00 00 8b 74 24 38 89
0078c070: 7e 70 f3 0f 11 46 6c 8b 88 1c 02 00 00 8b 90 20
0078c080: 02 00 00 89 4c 24 18 8b 88 24 02 00 00 8b 80 28
0078c090: 02 00 00 83 c0 ff 89 44 24 0c db 44 24 0c 83 c1
0078c0a0: ff 89 4c 24 0c 83 ec 0c d9 54 24 20 f3 0f 11 44
0078c0b0: 24 14 db 44 24 18 8d 4e 0c 89 54 24 28 d9 54 24
0078c0c0: 18 d9 c9 d9 5c 24 08 d9 44 24 14 d9 5c 24 04 d9
0078c0d0: 1c 24 e8 99 fe fd ff db 44 24 1c 83 ec 0c 8d 4e
0078c0e0: 18 d9 54 24 1c d9 5c 24 08 d9 44 24 14 d9 5c 24
0078c0f0: 04 d9 44 24 18 d9 1c 24 e8 73 fe fd ff db 44 24
0078c100: 18 83 ec 0c 8d 4e 24 d9 54 24 18 d9 44 24 1c d9
0078c110: 5c 24 08 d9 44 24 14 d9 5c 24 04 d9 1c 24 e8 4d
0078c120: fe fd ff d9 44 24 14 83 ec 0c d9 5c 24 08 8d 4e
0078c130: 30 d9 44 24 14 d9 5c 24 04 d9 44 24 18 d9 1c 24
0078c140: e8 2b fe fd ff 5f b0 01 5e 83 c4 20 c3 5f 32 c0
0078c150: 5e 83 c4 20 c3 6a 00 51 50 8b ce e8 b0 66 4d 00
0078c160: 85 c0 74 20 8b 80 c8 02 00 00 85 c0 74 16 8b 4c
0078c170: 24 34 8b 54 24 28 51 52 8b c8 e8 31 75 3d 00 5e
0078c180: 83 c4 20 c3 32 c0 5e 83 c4 20 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078c010 <.text+0x38b010>:
  78c010:	83 ec 20                                        	sub    esp,0x20
  78c013:	56                                              	push   esi
  78c014:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  78c01a:	85 f6                                           	test   esi,esi
  78c01c:	0f 84 62 01 00 00                               	je     0x78c184
  78c022:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78c026:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  78c02a:	8b d0                                           	mov    edx,eax
  78c02c:	0b d1                                           	or     edx,ecx
  78c02e:	0f 85 21 01 00 00                               	jne    0x78c155
  78c034:	57                                              	push   edi
  78c035:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
  78c039:	85 ff                                           	test   edi,edi
  78c03b:	0f 84 0c 01 00 00                               	je     0x78c14d
  78c041:	8b ce                                           	mov    ecx,esi
  78c043:	e8 08 49 4d 00                                  	call   0xc60950
  78c048:	3b f8                                           	cmp    edi,eax
  78c04a:	0f 87 fd 00 00 00                               	ja     0x78c14d
  78c050:	8d 47 ff                                        	lea    eax,[edi-0x1]
  78c053:	50                                              	push   eax
  78c054:	8b ce                                           	mov    ecx,esi
  78c056:	e8 f5 47 4d 00                                  	call   0xc60850
  78c05b:	85 c0                                           	test   eax,eax
  78c05d:	0f 84 ea 00 00 00                               	je     0x78c14d
  78c063:	f3 0f 10 80 18 02 00 00                         	movss  xmm0,DWORD PTR [eax+0x218]
  78c06b:	8b 74 24 38                                     	mov    esi,DWORD PTR [esp+0x38]
  78c06f:	89 7e 70                                        	mov    DWORD PTR [esi+0x70],edi
  78c072:	f3 0f 11 46 6c                                  	movss  DWORD PTR [esi+0x6c],xmm0
  78c077:	8b 88 1c 02 00 00                               	mov    ecx,DWORD PTR [eax+0x21c]
  78c07d:	8b 90 20 02 00 00                               	mov    edx,DWORD PTR [eax+0x220]
  78c083:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  78c087:	8b 88 24 02 00 00                               	mov    ecx,DWORD PTR [eax+0x224]
  78c08d:	8b 80 28 02 00 00                               	mov    eax,DWORD PTR [eax+0x228]
  78c093:	83 c0 ff                                        	add    eax,0xffffffff
  78c096:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  78c09a:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  78c09e:	83 c1 ff                                        	add    ecx,0xffffffff
  78c0a1:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  78c0a5:	83 ec 0c                                        	sub    esp,0xc
  78c0a8:	d9 54 24 20                                     	fst    DWORD PTR [esp+0x20]
  78c0ac:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78c0b2:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
  78c0b6:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  78c0b9:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  78c0bd:	d9 54 24 18                                     	fst    DWORD PTR [esp+0x18]
  78c0c1:	d9 c9                                           	fxch   st(1)
  78c0c3:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78c0c7:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78c0cb:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c0cf:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78c0d2:	e8 99 fe fd ff                                  	call   0x76bf70
  78c0d7:	db 44 24 1c                                     	fild   DWORD PTR [esp+0x1c]
  78c0db:	83 ec 0c                                        	sub    esp,0xc
  78c0de:	8d 4e 18                                        	lea    ecx,[esi+0x18]
  78c0e1:	d9 54 24 1c                                     	fst    DWORD PTR [esp+0x1c]
  78c0e5:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78c0e9:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78c0ed:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c0f1:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  78c0f5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78c0f8:	e8 73 fe fd ff                                  	call   0x76bf70
  78c0fd:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
  78c101:	83 ec 0c                                        	sub    esp,0xc
  78c104:	8d 4e 24                                        	lea    ecx,[esi+0x24]
  78c107:	d9 54 24 18                                     	fst    DWORD PTR [esp+0x18]
  78c10b:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78c10f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78c113:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78c117:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c11b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78c11e:	e8 4d fe fd ff                                  	call   0x76bf70
  78c123:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78c127:	83 ec 0c                                        	sub    esp,0xc
  78c12a:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78c12e:	8d 4e 30                                        	lea    ecx,[esi+0x30]
  78c131:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  78c135:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c139:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  78c13d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78c140:	e8 2b fe fd ff                                  	call   0x76bf70
  78c145:	5f                                              	pop    edi
  78c146:	b0 01                                           	mov    al,0x1
  78c148:	5e                                              	pop    esi
  78c149:	83 c4 20                                        	add    esp,0x20
  78c14c:	c3                                              	ret
  78c14d:	5f                                              	pop    edi
  78c14e:	32 c0                                           	xor    al,al
  78c150:	5e                                              	pop    esi
  78c151:	83 c4 20                                        	add    esp,0x20
  78c154:	c3                                              	ret
  78c155:	6a 00                                           	push   0x0
  78c157:	51                                              	push   ecx
  78c158:	50                                              	push   eax
  78c159:	8b ce                                           	mov    ecx,esi
  78c15b:	e8 b0 66 4d 00                                  	call   0xc62810
  78c160:	85 c0                                           	test   eax,eax
  78c162:	74 20                                           	je     0x78c184
  78c164:	8b 80 c8 02 00 00                               	mov    eax,DWORD PTR [eax+0x2c8]
  78c16a:	85 c0                                           	test   eax,eax
  78c16c:	74 16                                           	je     0x78c184
  78c16e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  78c172:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78c176:	51                                              	push   ecx
  78c177:	52                                              	push   edx
  78c178:	8b c8                                           	mov    ecx,eax
  78c17a:	e8 31 75 3d 00                                  	call   0xb636b0
  78c17f:	5e                                              	pop    esi
  78c180:	83 c4 20                                        	add    esp,0x20
  78c183:	c3                                              	ret
  78c184:	32 c0                                           	xor    al,al
  78c186:	5e                                              	pop    esi
  78c187:	83 c4 20                                        	add    esp,0x20
  78c18a:	c3                                              	ret
  78c18b:	cc                                              	int3
  78c18c:	cc                                              	int3
  78c18d:	cc                                              	int3
  78c18e:	cc                                              	int3
  78c18f:	cc                                              	int3
