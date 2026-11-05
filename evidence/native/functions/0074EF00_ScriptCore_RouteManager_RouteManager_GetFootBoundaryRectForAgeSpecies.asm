# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074ef00 (ScriptCore.RouteManager::RouteManager_GetFootBoundaryRectForAgeSpecies)
Paired Ghidra pseudocode: 0074EF00_ScriptCore_RouteManager_RouteManager_GetFootBoundaryRectForAgeSpecies.c
Window: [0x0074ef00, 0x0074efa0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074efa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074ef00: 0f 57 c0 83 ec 08 55 56 8b 74 24 14 8d 6e 08 57
0074ef10: f3 0f 11 06 f3 0f 11 46 04 f3 0f 11 45 00 f3 0f
0074ef20: 11 46 0c e8 98 cb e9 ff 8b f8 85 ff 74 5a 53 8b
0074ef30: 5c 24 20 53 8b cf e8 35 e1 e9 ff d9 5c 24 1c 53
0074ef40: 8b cf e8 79 e1 e9 ff d9 5c 24 10 53 8b cf e8 bd
0074ef50: e1 e9 ff d9 54 24 14 d9 44 24 1c 83 ec 08 d9 5c
0074ef60: 24 04 8b ce d9 1c 24 e8 e4 cf 01 00 d9 44 24 10
0074ef70: 83 ec 08 d9 e0 8b cd d9 5c 24 04 d9 44 24 1c d9
0074ef80: 1c 24 e8 c9 cf 01 00 5b 5f 8b c6 5e 5d 83 c4 08
0074ef90: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074ef00 <.text+0x34df00>:
  74ef00:	0f 57 c0                                        	xorps  xmm0,xmm0
  74ef03:	83 ec 08                                        	sub    esp,0x8
  74ef06:	55                                              	push   ebp
  74ef07:	56                                              	push   esi
  74ef08:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  74ef0c:	8d 6e 08                                        	lea    ebp,[esi+0x8]
  74ef0f:	57                                              	push   edi
  74ef10:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  74ef14:	f3 0f 11 46 04                                  	movss  DWORD PTR [esi+0x4],xmm0
  74ef19:	f3 0f 11 45 00                                  	movss  DWORD PTR [ebp+0x0],xmm0
  74ef1e:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
  74ef23:	e8 98 cb e9 ff                                  	call   0x5ebac0
  74ef28:	8b f8                                           	mov    edi,eax
  74ef2a:	85 ff                                           	test   edi,edi
  74ef2c:	74 5a                                           	je     0x74ef88
  74ef2e:	53                                              	push   ebx
  74ef2f:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  74ef33:	53                                              	push   ebx
  74ef34:	8b cf                                           	mov    ecx,edi
  74ef36:	e8 35 e1 e9 ff                                  	call   0x5ed070
  74ef3b:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  74ef3f:	53                                              	push   ebx
  74ef40:	8b cf                                           	mov    ecx,edi
  74ef42:	e8 79 e1 e9 ff                                  	call   0x5ed0c0
  74ef47:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  74ef4b:	53                                              	push   ebx
  74ef4c:	8b cf                                           	mov    ecx,edi
  74ef4e:	e8 bd e1 e9 ff                                  	call   0x5ed110
  74ef53:	d9 54 24 14                                     	fst    DWORD PTR [esp+0x14]
  74ef57:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  74ef5b:	83 ec 08                                        	sub    esp,0x8
  74ef5e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74ef62:	8b ce                                           	mov    ecx,esi
  74ef64:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74ef67:	e8 e4 cf 01 00                                  	call   0x76bf50
  74ef6c:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  74ef70:	83 ec 08                                        	sub    esp,0x8
  74ef73:	d9 e0                                           	fchs
  74ef75:	8b cd                                           	mov    ecx,ebp
  74ef77:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74ef7b:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  74ef7f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74ef82:	e8 c9 cf 01 00                                  	call   0x76bf50
  74ef87:	5b                                              	pop    ebx
  74ef88:	5f                                              	pop    edi
  74ef89:	8b c6                                           	mov    eax,esi
  74ef8b:	5e                                              	pop    esi
  74ef8c:	5d                                              	pop    ebp
  74ef8d:	83 c4 08                                        	add    esp,0x8
  74ef90:	c3                                              	ret
  74ef91:	cc                                              	int3
  74ef92:	cc                                              	int3
  74ef93:	cc                                              	int3
  74ef94:	cc                                              	int3
  74ef95:	cc                                              	int3
  74ef96:	cc                                              	int3
  74ef97:	cc                                              	int3
  74ef98:	cc                                              	int3
  74ef99:	cc                                              	int3
  74ef9a:	cc                                              	int3
  74ef9b:	cc                                              	int3
  74ef9c:	cc                                              	int3
  74ef9d:	cc                                              	int3
  74ef9e:	cc                                              	int3
  74ef9f:	cc                                              	int3
