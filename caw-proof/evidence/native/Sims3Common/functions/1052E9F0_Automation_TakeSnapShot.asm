# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052e9f0 (Automation_TakeSnapShot)
Paired Ghidra pseudocode: 1052E9F0_Automation_TakeSnapShot.c
Window: [0x1052e9f0, 0x1052eae0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052eae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052e9f0: 83 ec 40 56 8b 74 24 48 57 33 ff 3b f7 0f 84 d2
1052ea00: 00 00 00 e8 18 c7 02 00 3b c7 0f 84 c5 00 00 00
1052ea10: 8b 10 8b c8 8b 42 58 56 ff d0 66 39 38 b9 44 82
1052ea20: ca 10 89 4c 24 08 89 4c 24 0c c7 44 24 14 ec 9c
1052ea30: b1 10 c7 44 24 10 46 82 ca 10 8b c8 74 0a 8b ff
1052ea40: 83 c1 02 66 39 39 75 f8 2b c8 d1 f9 55 8d 0c 48
1052ea50: 51 50 8d 4c 24 14 e8 65 0e af ff e8 10 e7 29 00
1052ea60: 8b 6c 24 0c 8b f0 3b f7 74 4f 8b 16 8b 42 14 6a
1052ea70: 01 55 8b ce ff d0 8b 16 8b 52 34 8d 44 24 1c 50
1052ea80: 8b ce c7 44 24 20 01 00 00 00 89 7c 24 24 89 7c
1052ea90: 24 28 c6 44 24 2c 01 89 7c 24 30 89 7c 24 34 89
1052eaa0: 7c 24 38 89 7c 24 3c 89 7c 24 40 89 7c 24 44 89
1052eab0: 7c 24 48 89 7c 24 4c ff d2 8b 44 24 14 2b c5 83
1052eac0: e0 fe 83 f8 02 7e 0d 3b ef 74 09 55 e8 bf a3 3e
1052ead0: 00 83 c4 04 5d 5f 5e 83 c4 40 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1052e9f0 <.text+0x52d9f0>:
1052e9f0:	83 ec 40                                        	sub    esp,0x40
1052e9f3:	56                                              	push   esi
1052e9f4:	8b 74 24 48                                     	mov    esi,DWORD PTR [esp+0x48]
1052e9f8:	57                                              	push   edi
1052e9f9:	33 ff                                           	xor    edi,edi
1052e9fb:	3b f7                                           	cmp    esi,edi
1052e9fd:	0f 84 d2 00 00 00                               	je     0x1052ead5
1052ea03:	e8 18 c7 02 00                                  	call   0x1055b120
1052ea08:	3b c7                                           	cmp    eax,edi
1052ea0a:	0f 84 c5 00 00 00                               	je     0x1052ead5
1052ea10:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ea12:	8b c8                                           	mov    ecx,eax
1052ea14:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
1052ea17:	56                                              	push   esi
1052ea18:	ff d0                                           	call   eax
1052ea1a:	66 39 38                                        	cmp    WORD PTR [eax],di
1052ea1d:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
1052ea22:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1052ea26:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1052ea2a:	c7 44 24 14 ec 9c b1 10                         	mov    DWORD PTR [esp+0x14],0x10b19cec
1052ea32:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
1052ea3a:	8b c8                                           	mov    ecx,eax
1052ea3c:	74 0a                                           	je     0x1052ea48
1052ea3e:	8b ff                                           	mov    edi,edi
1052ea40:	83 c1 02                                        	add    ecx,0x2
1052ea43:	66 39 39                                        	cmp    WORD PTR [ecx],di
1052ea46:	75 f8                                           	jne    0x1052ea40
1052ea48:	2b c8                                           	sub    ecx,eax
1052ea4a:	d1 f9                                           	sar    ecx,1
1052ea4c:	55                                              	push   ebp
1052ea4d:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
1052ea50:	51                                              	push   ecx
1052ea51:	50                                              	push   eax
1052ea52:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1052ea56:	e8 65 0e af ff                                  	call   0x1001f8c0
1052ea5b:	e8 10 e7 29 00                                  	call   0x107cd170
1052ea60:	8b 6c 24 0c                                     	mov    ebp,DWORD PTR [esp+0xc]
1052ea64:	8b f0                                           	mov    esi,eax
1052ea66:	3b f7                                           	cmp    esi,edi
1052ea68:	74 4f                                           	je     0x1052eab9
1052ea6a:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052ea6c:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1052ea6f:	6a 01                                           	push   0x1
1052ea71:	55                                              	push   ebp
1052ea72:	8b ce                                           	mov    ecx,esi
1052ea74:	ff d0                                           	call   eax
1052ea76:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052ea78:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1052ea7b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1052ea7f:	50                                              	push   eax
1052ea80:	8b ce                                           	mov    ecx,esi
1052ea82:	c7 44 24 20 01 00 00 00                         	mov    DWORD PTR [esp+0x20],0x1
1052ea8a:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1052ea8e:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1052ea92:	c6 44 24 2c 01                                  	mov    BYTE PTR [esp+0x2c],0x1
1052ea97:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1052ea9b:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
1052ea9f:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1052eaa3:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
1052eaa7:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
1052eaab:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
1052eaaf:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
1052eab3:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
1052eab7:	ff d2                                           	call   edx
1052eab9:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1052eabd:	2b c5                                           	sub    eax,ebp
1052eabf:	83 e0 fe                                        	and    eax,0xfffffffe
1052eac2:	83 f8 02                                        	cmp    eax,0x2
1052eac5:	7e 0d                                           	jle    0x1052ead4
1052eac7:	3b ef                                           	cmp    ebp,edi
1052eac9:	74 09                                           	je     0x1052ead4
1052eacb:	55                                              	push   ebp
1052eacc:	e8 bf a3 3e 00                                  	call   0x10918e90
1052ead1:	83 c4 04                                        	add    esp,0x4
1052ead4:	5d                                              	pop    ebp
1052ead5:	5f                                              	pop    edi
1052ead6:	5e                                              	pop    esi
1052ead7:	83 c4 40                                        	add    esp,0x40
1052eada:	c3                                              	ret
1052eadb:	cc                                              	int3
1052eadc:	cc                                              	int3
1052eadd:	cc                                              	int3
1052eade:	cc                                              	int3
1052eadf:	cc                                              	int3
