# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fc50 (ShaderLibrary_GetShaderSets)
Paired Ghidra pseudocode: 1098FC50_ShaderLibrary_GetShaderSets.c
Window: [0x1098fc50, 0x1098fd10) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fd10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fc50: 8b 0d 94 bd c7 10 8b 41 74 83 ec 0c 55 56 8b 30
1098fc60: 85 f6 8b e8 75 16 39 70 04 8d 68 04 75 0b 8b ff
1098fc70: 83 c5 04 83 7d 00 00 74 f7 8b 75 00 8b 49 78 8b
1098fc80: 14 88 33 c0 39 44 24 1c 89 54 24 0c 89 44 24 08
1098fc90: 76 70 53 8b 5c 24 1c 57 3b 74 24 14 74 62 8b 4e
1098fca0: 04 85 c9 74 42 8b 01 8b 50 0c 68 84 2e 21 03 ff
1098fcb0: d2 8b f8 85 ff 74 2c 8b 06 89 03 8b 17 8b 42 10
1098fcc0: 8b cf ff d0 8b cf 89 43 04 e8 e2 37 c0 ff 8b cf
1098fcd0: 89 43 08 e8 f8 37 c0 ff 89 43 0c 83 c3 10 83 44
1098fce0: 24 10 01 8b 44 24 10 8b 76 08 85 f6 75 0c 8b ff
1098fcf0: 8b 75 04 83 c5 04 85 f6 74 f6 3b 44 24 24 72 98
1098fd00: 5f 5b 5e 5d 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fc50 <.text+0x98ec50>:
1098fc50:	8b 0d 94 bd c7 10                               	mov    ecx,DWORD PTR ds:0x10c7bd94
1098fc56:	8b 41 74                                        	mov    eax,DWORD PTR [ecx+0x74]
1098fc59:	83 ec 0c                                        	sub    esp,0xc
1098fc5c:	55                                              	push   ebp
1098fc5d:	56                                              	push   esi
1098fc5e:	8b 30                                           	mov    esi,DWORD PTR [eax]
1098fc60:	85 f6                                           	test   esi,esi
1098fc62:	8b e8                                           	mov    ebp,eax
1098fc64:	75 16                                           	jne    0x1098fc7c
1098fc66:	39 70 04                                        	cmp    DWORD PTR [eax+0x4],esi
1098fc69:	8d 68 04                                        	lea    ebp,[eax+0x4]
1098fc6c:	75 0b                                           	jne    0x1098fc79
1098fc6e:	8b ff                                           	mov    edi,edi
1098fc70:	83 c5 04                                        	add    ebp,0x4
1098fc73:	83 7d 00 00                                     	cmp    DWORD PTR [ebp+0x0],0x0
1098fc77:	74 f7                                           	je     0x1098fc70
1098fc79:	8b 75 00                                        	mov    esi,DWORD PTR [ebp+0x0]
1098fc7c:	8b 49 78                                        	mov    ecx,DWORD PTR [ecx+0x78]
1098fc7f:	8b 14 88                                        	mov    edx,DWORD PTR [eax+ecx*4]
1098fc82:	33 c0                                           	xor    eax,eax
1098fc84:	39 44 24 1c                                     	cmp    DWORD PTR [esp+0x1c],eax
1098fc88:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098fc8c:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1098fc90:	76 70                                           	jbe    0x1098fd02
1098fc92:	53                                              	push   ebx
1098fc93:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
1098fc97:	57                                              	push   edi
1098fc98:	3b 74 24 14                                     	cmp    esi,DWORD PTR [esp+0x14]
1098fc9c:	74 62                                           	je     0x1098fd00
1098fc9e:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098fca1:	85 c9                                           	test   ecx,ecx
1098fca3:	74 42                                           	je     0x1098fce7
1098fca5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098fca7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098fcaa:	68 84 2e 21 03                                  	push   0x3212e84
1098fcaf:	ff d2                                           	call   edx
1098fcb1:	8b f8                                           	mov    edi,eax
1098fcb3:	85 ff                                           	test   edi,edi
1098fcb5:	74 2c                                           	je     0x1098fce3
1098fcb7:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098fcb9:	89 03                                           	mov    DWORD PTR [ebx],eax
1098fcbb:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098fcbd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1098fcc0:	8b cf                                           	mov    ecx,edi
1098fcc2:	ff d0                                           	call   eax
1098fcc4:	8b cf                                           	mov    ecx,edi
1098fcc6:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
1098fcc9:	e8 e2 37 c0 ff                                  	call   0x105934b0
1098fcce:	8b cf                                           	mov    ecx,edi
1098fcd0:	89 43 08                                        	mov    DWORD PTR [ebx+0x8],eax
1098fcd3:	e8 f8 37 c0 ff                                  	call   0x105934d0
1098fcd8:	89 43 0c                                        	mov    DWORD PTR [ebx+0xc],eax
1098fcdb:	83 c3 10                                        	add    ebx,0x10
1098fcde:	83 44 24 10 01                                  	add    DWORD PTR [esp+0x10],0x1
1098fce3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098fce7:	8b 76 08                                        	mov    esi,DWORD PTR [esi+0x8]
1098fcea:	85 f6                                           	test   esi,esi
1098fcec:	75 0c                                           	jne    0x1098fcfa
1098fcee:	8b ff                                           	mov    edi,edi
1098fcf0:	8b 75 04                                        	mov    esi,DWORD PTR [ebp+0x4]
1098fcf3:	83 c5 04                                        	add    ebp,0x4
1098fcf6:	85 f6                                           	test   esi,esi
1098fcf8:	74 f6                                           	je     0x1098fcf0
1098fcfa:	3b 44 24 24                                     	cmp    eax,DWORD PTR [esp+0x24]
1098fcfe:	72 98                                           	jb     0x1098fc98
1098fd00:	5f                                              	pop    edi
1098fd01:	5b                                              	pop    ebx
1098fd02:	5e                                              	pop    esi
1098fd03:	5d                                              	pop    ebp
1098fd04:	83 c4 0c                                        	add    esp,0xc
1098fd07:	c3                                              	ret
1098fd08:	cc                                              	int3
1098fd09:	cc                                              	int3
1098fd0a:	cc                                              	int3
1098fd0b:	cc                                              	int3
1098fd0c:	cc                                              	int3
1098fd0d:	cc                                              	int3
1098fd0e:	cc                                              	int3
1098fd0f:	cc                                              	int3
