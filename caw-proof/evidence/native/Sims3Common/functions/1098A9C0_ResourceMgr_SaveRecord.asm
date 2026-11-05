# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a9c0 (ResourceMgr_SaveRecord)
Paired Ghidra pseudocode: 1098A9C0_ResourceMgr_SaveRecord.c
Window: [0x1098a9c0, 0x1098aaa0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098aaa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a9c0: 83 ec 14 e8 08 a7 f5 ff 85 c0 75 04 83 c4 14 c3
1098a9d0: 56 8b 35 78 80 cb 10 8d 44 24 1c 50 8d 4c 24 0c
1098a9e0: 51 8b ce e8 28 da d1 ff 8b 56 08 8b 4e 04 8b 44
1098a9f0: 24 08 3b 04 91 74 4a 8b 70 04 8b 54 24 28 8b 4c
1098aa00: 24 20 8b 44 24 2c 6a 00 6a 01 6a 02 89 54 24 14
1098aa10: 8b 54 24 30 89 4c 24 1c 6a 03 89 44 24 1c 8d 4c
1098aa20: 24 14 c7 44 24 14 00 00 00 00 8b 06 8b 40 34 89
1098aa30: 54 24 24 51 8d 54 24 1c 52 8b ce ff d0 84 c0 75
1098aa40: 07 33 c0 5e 83 c4 14 c3 8b 4c 24 04 85 c9 74 39
1098aa50: 57 8b 7c 24 38 85 ff 7e 1a 8b 11 8b 42 18 ff d0
1098aa60: 8b 4c 24 34 8b 10 8b 52 38 57 51 8b c8 ff d2 8b
1098aa70: 4c 24 08 8b 06 8b 50 3c 51 8b ce ff d2 8b 4c 24
1098aa80: 08 8b 01 8b 50 08 ff d2 5f b8 01 00 00 00 5e 83
1098aa90: c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a9c0 <.text+0x9899c0>:
1098a9c0:	83 ec 14                                        	sub    esp,0x14
1098a9c3:	e8 08 a7 f5 ff                                  	call   0x108e50d0
1098a9c8:	85 c0                                           	test   eax,eax
1098a9ca:	75 04                                           	jne    0x1098a9d0
1098a9cc:	83 c4 14                                        	add    esp,0x14
1098a9cf:	c3                                              	ret
1098a9d0:	56                                              	push   esi
1098a9d1:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098a9d7:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1098a9db:	50                                              	push   eax
1098a9dc:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098a9e0:	51                                              	push   ecx
1098a9e1:	8b ce                                           	mov    ecx,esi
1098a9e3:	e8 28 da d1 ff                                  	call   0x106a8410
1098a9e8:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098a9eb:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098a9ee:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098a9f2:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098a9f5:	74 4a                                           	je     0x1098aa41
1098a9f7:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
1098a9fa:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1098a9fe:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098aa02:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098aa06:	6a 00                                           	push   0x0
1098aa08:	6a 01                                           	push   0x1
1098aa0a:	6a 02                                           	push   0x2
1098aa0c:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1098aa10:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1098aa14:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1098aa18:	6a 03                                           	push   0x3
1098aa1a:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1098aa1e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098aa22:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098aa2a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098aa2c:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1098aa2f:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1098aa33:	51                                              	push   ecx
1098aa34:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1098aa38:	52                                              	push   edx
1098aa39:	8b ce                                           	mov    ecx,esi
1098aa3b:	ff d0                                           	call   eax
1098aa3d:	84 c0                                           	test   al,al
1098aa3f:	75 07                                           	jne    0x1098aa48
1098aa41:	33 c0                                           	xor    eax,eax
1098aa43:	5e                                              	pop    esi
1098aa44:	83 c4 14                                        	add    esp,0x14
1098aa47:	c3                                              	ret
1098aa48:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098aa4c:	85 c9                                           	test   ecx,ecx
1098aa4e:	74 39                                           	je     0x1098aa89
1098aa50:	57                                              	push   edi
1098aa51:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
1098aa55:	85 ff                                           	test   edi,edi
1098aa57:	7e 1a                                           	jle    0x1098aa73
1098aa59:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098aa5b:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1098aa5e:	ff d0                                           	call   eax
1098aa60:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1098aa64:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098aa66:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
1098aa69:	57                                              	push   edi
1098aa6a:	51                                              	push   ecx
1098aa6b:	8b c8                                           	mov    ecx,eax
1098aa6d:	ff d2                                           	call   edx
1098aa6f:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098aa73:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098aa75:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
1098aa78:	51                                              	push   ecx
1098aa79:	8b ce                                           	mov    ecx,esi
1098aa7b:	ff d2                                           	call   edx
1098aa7d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098aa81:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098aa83:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098aa86:	ff d2                                           	call   edx
1098aa88:	5f                                              	pop    edi
1098aa89:	b8 01 00 00 00                                  	mov    eax,0x1
1098aa8e:	5e                                              	pop    esi
1098aa8f:	83 c4 14                                        	add    esp,0x14
1098aa92:	c3                                              	ret
1098aa93:	cc                                              	int3
1098aa94:	cc                                              	int3
1098aa95:	cc                                              	int3
1098aa96:	cc                                              	int3
1098aa97:	cc                                              	int3
1098aa98:	cc                                              	int3
1098aa99:	cc                                              	int3
1098aa9a:	cc                                              	int3
1098aa9b:	cc                                              	int3
1098aa9c:	cc                                              	int3
1098aa9d:	cc                                              	int3
1098aa9e:	cc                                              	int3
1098aa9f:	cc                                              	int3
