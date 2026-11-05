# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980f90 (GameObjectFactoryWrap_CreateArray)
Paired Ghidra pseudocode: 10980F90_GameObjectFactoryWrap_CreateArray.c
Window: [0x10980f90, 0x10981060) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980f90: 83 ec 1c 53 55 56 57 e8 04 92 da ff 8b 4c 24 34
10980fa0: 8b 54 24 30 8b f8 8b 44 24 38 50 51 52 8d 4c 24
10980fb0: 1c e8 8a b2 da ff 33 f6 33 ed 39 74 24 40 76 20
10980fc0: 8b 5c 24 3c 8b 04 b3 50 8b cf e8 91 91 da ff 85
10980fd0: c0 74 02 0b e8 83 c6 01 3b 74 24 40 72 e6 33 f6
10980fe0: 3b fe 74 63 56 56 8d 4c 24 24 51 55 8d 54 24 20
10980ff0: 52 8b cf 89 74 24 30 89 74 24 34 89 74 24 38 89
10981000: 74 24 3c e8 28 a8 da ff 85 c0 74 3b 8d 48 04 8b
10981010: d1 be 01 00 00 00 f0 0f c1 32 8b 70 08 8b 78 0c
10981020: 83 cb ff f0 0f c1 1a 4b 75 11 ba 01 00 00 00 87
10981030: 11 8b 10 8b c8 8b 02 6a 01 ff d0 8b d7 5f 8b c6
10981040: 5e 5d 5b 83 c4 1c c3 5f 5e 5d 33 c0 33 d2 5b 83
10981050: c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980f90 <.text+0x97ff90>:
10980f90:	83 ec 1c                                        	sub    esp,0x1c
10980f93:	53                                              	push   ebx
10980f94:	55                                              	push   ebp
10980f95:	56                                              	push   esi
10980f96:	57                                              	push   edi
10980f97:	e8 04 92 da ff                                  	call   0x1072a1a0
10980f9c:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10980fa0:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10980fa4:	8b f8                                           	mov    edi,eax
10980fa6:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10980faa:	50                                              	push   eax
10980fab:	51                                              	push   ecx
10980fac:	52                                              	push   edx
10980fad:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10980fb1:	e8 8a b2 da ff                                  	call   0x1072c240
10980fb6:	33 f6                                           	xor    esi,esi
10980fb8:	33 ed                                           	xor    ebp,ebp
10980fba:	39 74 24 40                                     	cmp    DWORD PTR [esp+0x40],esi
10980fbe:	76 20                                           	jbe    0x10980fe0
10980fc0:	8b 5c 24 3c                                     	mov    ebx,DWORD PTR [esp+0x3c]
10980fc4:	8b 04 b3                                        	mov    eax,DWORD PTR [ebx+esi*4]
10980fc7:	50                                              	push   eax
10980fc8:	8b cf                                           	mov    ecx,edi
10980fca:	e8 91 91 da ff                                  	call   0x1072a160
10980fcf:	85 c0                                           	test   eax,eax
10980fd1:	74 02                                           	je     0x10980fd5
10980fd3:	0b e8                                           	or     ebp,eax
10980fd5:	83 c6 01                                        	add    esi,0x1
10980fd8:	3b 74 24 40                                     	cmp    esi,DWORD PTR [esp+0x40]
10980fdc:	72 e6                                           	jb     0x10980fc4
10980fde:	33 f6                                           	xor    esi,esi
10980fe0:	3b fe                                           	cmp    edi,esi
10980fe2:	74 63                                           	je     0x10981047
10980fe4:	56                                              	push   esi
10980fe5:	56                                              	push   esi
10980fe6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10980fea:	51                                              	push   ecx
10980feb:	55                                              	push   ebp
10980fec:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10980ff0:	52                                              	push   edx
10980ff1:	8b cf                                           	mov    ecx,edi
10980ff3:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
10980ff7:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
10980ffb:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
10980fff:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
10981003:	e8 28 a8 da ff                                  	call   0x1072b830
10981008:	85 c0                                           	test   eax,eax
1098100a:	74 3b                                           	je     0x10981047
1098100c:	8d 48 04                                        	lea    ecx,[eax+0x4]
1098100f:	8b d1                                           	mov    edx,ecx
10981011:	be 01 00 00 00                                  	mov    esi,0x1
10981016:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1098101a:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
1098101d:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
10981020:	83 cb ff                                        	or     ebx,0xffffffff
10981023:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
10981027:	4b                                              	dec    ebx
10981028:	75 11                                           	jne    0x1098103b
1098102a:	ba 01 00 00 00                                  	mov    edx,0x1
1098102f:	87 11                                           	xchg   DWORD PTR [ecx],edx
10981031:	8b 10                                           	mov    edx,DWORD PTR [eax]
10981033:	8b c8                                           	mov    ecx,eax
10981035:	8b 02                                           	mov    eax,DWORD PTR [edx]
10981037:	6a 01                                           	push   0x1
10981039:	ff d0                                           	call   eax
1098103b:	8b d7                                           	mov    edx,edi
1098103d:	5f                                              	pop    edi
1098103e:	8b c6                                           	mov    eax,esi
10981040:	5e                                              	pop    esi
10981041:	5d                                              	pop    ebp
10981042:	5b                                              	pop    ebx
10981043:	83 c4 1c                                        	add    esp,0x1c
10981046:	c3                                              	ret
10981047:	5f                                              	pop    edi
10981048:	5e                                              	pop    esi
10981049:	5d                                              	pop    ebp
1098104a:	33 c0                                           	xor    eax,eax
1098104c:	33 d2                                           	xor    edx,edx
1098104e:	5b                                              	pop    ebx
1098104f:	83 c4 1c                                        	add    esp,0x1c
10981052:	c3                                              	ret
10981053:	cc                                              	int3
10981054:	cc                                              	int3
10981055:	cc                                              	int3
10981056:	cc                                              	int3
10981057:	cc                                              	int3
10981058:	cc                                              	int3
10981059:	cc                                              	int3
1098105a:	cc                                              	int3
1098105b:	cc                                              	int3
1098105c:	cc                                              	int3
1098105d:	cc                                              	int3
1098105e:	cc                                              	int3
1098105f:	cc                                              	int3
