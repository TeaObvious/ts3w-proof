# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996b40 (WorldTerrainWrap_PickRoadObject)
Paired Ghidra pseudocode: 10996B40_WorldTerrainWrap_PickRoadObject.c
Window: [0x10996b40, 0x10996c50) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996b40: a1 c4 00 c7 10 d9 44 24 0c 56 8b 70 5c 57 83 ec
10996b50: 08 d9 5c 24 04 8b ce d9 44 24 18 d9 1c 24 e8 bd
10996b60: c1 7a ff 85 c0 8b 7c 24 1c 89 07 74 17 8b 4c 24
10996b70: 18 8b 54 24 20 5f c7 01 05 00 00 00 c7 02 ff ff
10996b80: ff ff 5e c3 d9 44 24 14 83 ec 08 d9 5c 24 04 8b
10996b90: ce d9 44 24 18 d9 1c 24 e8 b3 d1 7a ff 85 c0 89
10996ba0: 07 74 17 8b 44 24 18 8b 4c 24 20 5f c7 00 04 00
10996bb0: 00 00 c7 01 ff ff ff ff 5e c3 d9 44 24 14 53 8b
10996bc0: 5c 24 24 53 83 ec 08 d9 5c 24 04 8b ce d9 44 24
10996bd0: 20 d9 1c 24 e8 27 d1 7a ff 85 c0 89 07 74 0e 8b
10996be0: 54 24 1c 5b 5f c7 02 02 00 00 00 5e c3 d9 44 24
10996bf0: 18 83 ec 08 d9 5c 24 04 8b ce d9 44 24 1c d9 1c
10996c00: 24 e8 2a d1 7a ff 85 c0 89 07 74 14 8b 44 24 1c
10996c10: c7 00 03 00 00 00 c7 03 ff ff ff ff 5b 5f 5e c3
10996c20: d9 44 24 18 53 83 ec 08 d9 5c 24 04 8b ce d9 44
10996c30: 24 20 d9 1c 24 e8 96 d0 7a ff 85 c0 89 07 74 0a
10996c40: 8b 4c 24 1c c7 01 01 00 00 00 5b 5f 5e c3 cc cc

LINEAR DISASSEMBLY
10996b40 <.text+0x995b40>:
10996b40:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996b45:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10996b49:	56                                              	push   esi
10996b4a:	8b 70 5c                                        	mov    esi,DWORD PTR [eax+0x5c]
10996b4d:	57                                              	push   edi
10996b4e:	83 ec 08                                        	sub    esp,0x8
10996b51:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10996b55:	8b ce                                           	mov    ecx,esi
10996b57:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10996b5b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996b5e:	e8 bd c1 7a ff                                  	call   0x10142d20
10996b63:	85 c0                                           	test   eax,eax
10996b65:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
10996b69:	89 07                                           	mov    DWORD PTR [edi],eax
10996b6b:	74 17                                           	je     0x10996b84
10996b6d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10996b71:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10996b75:	5f                                              	pop    edi
10996b76:	c7 01 05 00 00 00                               	mov    DWORD PTR [ecx],0x5
10996b7c:	c7 02 ff ff ff ff                               	mov    DWORD PTR [edx],0xffffffff
10996b82:	5e                                              	pop    esi
10996b83:	c3                                              	ret
10996b84:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10996b88:	83 ec 08                                        	sub    esp,0x8
10996b8b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10996b8f:	8b ce                                           	mov    ecx,esi
10996b91:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10996b95:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996b98:	e8 b3 d1 7a ff                                  	call   0x10143d50
10996b9d:	85 c0                                           	test   eax,eax
10996b9f:	89 07                                           	mov    DWORD PTR [edi],eax
10996ba1:	74 17                                           	je     0x10996bba
10996ba3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10996ba7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10996bab:	5f                                              	pop    edi
10996bac:	c7 00 04 00 00 00                               	mov    DWORD PTR [eax],0x4
10996bb2:	c7 01 ff ff ff ff                               	mov    DWORD PTR [ecx],0xffffffff
10996bb8:	5e                                              	pop    esi
10996bb9:	c3                                              	ret
10996bba:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10996bbe:	53                                              	push   ebx
10996bbf:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
10996bc3:	53                                              	push   ebx
10996bc4:	83 ec 08                                        	sub    esp,0x8
10996bc7:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10996bcb:	8b ce                                           	mov    ecx,esi
10996bcd:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10996bd1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996bd4:	e8 27 d1 7a ff                                  	call   0x10143d00
10996bd9:	85 c0                                           	test   eax,eax
10996bdb:	89 07                                           	mov    DWORD PTR [edi],eax
10996bdd:	74 0e                                           	je     0x10996bed
10996bdf:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10996be3:	5b                                              	pop    ebx
10996be4:	5f                                              	pop    edi
10996be5:	c7 02 02 00 00 00                               	mov    DWORD PTR [edx],0x2
10996beb:	5e                                              	pop    esi
10996bec:	c3                                              	ret
10996bed:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10996bf1:	83 ec 08                                        	sub    esp,0x8
10996bf4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10996bf8:	8b ce                                           	mov    ecx,esi
10996bfa:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10996bfe:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996c01:	e8 2a d1 7a ff                                  	call   0x10143d30
10996c06:	85 c0                                           	test   eax,eax
10996c08:	89 07                                           	mov    DWORD PTR [edi],eax
10996c0a:	74 14                                           	je     0x10996c20
10996c0c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10996c10:	c7 00 03 00 00 00                               	mov    DWORD PTR [eax],0x3
10996c16:	c7 03 ff ff ff ff                               	mov    DWORD PTR [ebx],0xffffffff
10996c1c:	5b                                              	pop    ebx
10996c1d:	5f                                              	pop    edi
10996c1e:	5e                                              	pop    esi
10996c1f:	c3                                              	ret
10996c20:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
10996c24:	53                                              	push   ebx
10996c25:	83 ec 08                                        	sub    esp,0x8
10996c28:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10996c2c:	8b ce                                           	mov    ecx,esi
10996c2e:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10996c32:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996c35:	e8 96 d0 7a ff                                  	call   0x10143cd0
10996c3a:	85 c0                                           	test   eax,eax
10996c3c:	89 07                                           	mov    DWORD PTR [edi],eax
10996c3e:	74 0a                                           	je     0x10996c4a
10996c40:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10996c44:	c7 01 01 00 00 00                               	mov    DWORD PTR [ecx],0x1
10996c4a:	5b                                              	pop    ebx
10996c4b:	5f                                              	pop    edi
10996c4c:	5e                                              	pop    esi
10996c4d:	c3                                              	ret
10996c4e:	cc                                              	int3
10996c4f:	cc                                              	int3
