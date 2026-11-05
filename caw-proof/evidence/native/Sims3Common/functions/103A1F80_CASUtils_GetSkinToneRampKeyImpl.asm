# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1f80 (CASUtils_GetSkinToneRampKeyImpl)
Paired Ghidra pseudocode: 103A1F80_CASUtils_GetSkinToneRampKeyImpl.c
Window: [0x103a1f80, 0x103a2040) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1f80: 83 ec 20 33 c0 56 8b 74 24 28 89 06 89 46 04 89
103a1f90: 46 08 89 46 0c e8 36 31 54 00 8b 4c 24 34 8b 54
103a1fa0: 24 38 6a 00 89 4c 24 08 8b 4c 24 30 6a 00 6a 00
103a1fb0: 89 4c 24 18 89 54 24 14 8b 54 24 3c 6a 00 8d 4c
103a1fc0: 24 38 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18
103a1fd0: 51 8b c8 ff d2 84 c0 74 5f 8b 4c 24 28 85 c9 57
103a1fe0: 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff d2 8b f8
103a1ff0: 85 ff 75 13 8b 4c 24 2c 8b 01 8b 50 04 ff d2 5f
103a2000: 8b c6 5e 83 c4 20 c3 8d 44 24 18 50 8b cf e8 cd
103a2010: ab 04 00 8b 4c 24 20 8b 54 24 18 8b 44 24 1c 89
103a2020: 0e 8b 4c 24 24 89 56 08 8b 17 89 46 0c 8b 42 04
103a2030: 89 4e 04 8b cf ff d0 5f 8b c6 5e 83 c4 20 c3 cc

LINEAR DISASSEMBLY
103a1f80 <.text+0x3a0f80>:
103a1f80:	83 ec 20                                        	sub    esp,0x20
103a1f83:	33 c0                                           	xor    eax,eax
103a1f85:	56                                              	push   esi
103a1f86:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
103a1f8a:	89 06                                           	mov    DWORD PTR [esi],eax
103a1f8c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
103a1f8f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
103a1f92:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
103a1f95:	e8 36 31 54 00                                  	call   0x108e50d0
103a1f9a:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
103a1f9e:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
103a1fa2:	6a 00                                           	push   0x0
103a1fa4:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a1fa8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
103a1fac:	6a 00                                           	push   0x0
103a1fae:	6a 00                                           	push   0x0
103a1fb0:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
103a1fb4:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
103a1fb8:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
103a1fbc:	6a 00                                           	push   0x0
103a1fbe:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
103a1fc2:	51                                              	push   ecx
103a1fc3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
103a1fc7:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1fc9:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
103a1fcc:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a1fd0:	51                                              	push   ecx
103a1fd1:	8b c8                                           	mov    ecx,eax
103a1fd3:	ff d2                                           	call   edx
103a1fd5:	84 c0                                           	test   al,al
103a1fd7:	74 5f                                           	je     0x103a2038
103a1fd9:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
103a1fdd:	85 c9                                           	test   ecx,ecx
103a1fdf:	57                                              	push   edi
103a1fe0:	74 16                                           	je     0x103a1ff8
103a1fe2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1fe4:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a1fe7:	68 20 49 58 03                                  	push   0x3584920
103a1fec:	ff d2                                           	call   edx
103a1fee:	8b f8                                           	mov    edi,eax
103a1ff0:	85 ff                                           	test   edi,edi
103a1ff2:	75 13                                           	jne    0x103a2007
103a1ff4:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a1ff8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1ffa:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1ffd:	ff d2                                           	call   edx
103a1fff:	5f                                              	pop    edi
103a2000:	8b c6                                           	mov    eax,esi
103a2002:	5e                                              	pop    esi
103a2003:	83 c4 20                                        	add    esp,0x20
103a2006:	c3                                              	ret
103a2007:	8d 44 24 18                                     	lea    eax,[esp+0x18]
103a200b:	50                                              	push   eax
103a200c:	8b cf                                           	mov    ecx,edi
103a200e:	e8 cd ab 04 00                                  	call   0x103ecbe0
103a2013:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a2017:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a201b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
103a201f:	89 0e                                           	mov    DWORD PTR [esi],ecx
103a2021:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a2025:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
103a2028:	8b 17                                           	mov    edx,DWORD PTR [edi]
103a202a:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
103a202d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a2030:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
103a2033:	8b cf                                           	mov    ecx,edi
103a2035:	ff d0                                           	call   eax
103a2037:	5f                                              	pop    edi
103a2038:	8b c6                                           	mov    eax,esi
103a203a:	5e                                              	pop    esi
103a203b:	83 c4 20                                        	add    esp,0x20
103a203e:	c3                                              	ret
103a203f:	cc                                              	int3
