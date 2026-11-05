# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542f90 (Route_GetPointAtDistanceOnPathway)
Paired Ghidra pseudocode: 10542F90_Route_GetPointAtDistanceOnPathway.c
Window: [0x10542f90, 0x10543070) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10543070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542f90: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 24 85
10542fa0: c9 53 56 57 0f 84 b5 00 00 00 8b 45 08 50 e8 3d
10542fb0: 91 ff ff 8b f8 85 ff 0f 84 a2 00 00 00 8b 17 8b
10542fc0: 42 10 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b
10542fd0: b7 ec 00 00 00 eb 0f 8d 87 e0 00 00 00 39 00 74
10542fe0: 75 8b 08 8b 71 08 85 f6 74 6c 8d 5e 04 8b d3 b8
10542ff0: 01 00 00 00 f0 0f c1 02 d9 45 0c 8b 16 8b 92 1c
10543000: 01 00 00 8d 44 24 0c 50 8d 4c 24 14 51 51 8d 44
10543010: 24 2c d9 1c 24 50 8b ce ff d2 8b 4d 10 50 e8 ad
10543020: ab 01 00 8b 4d 14 8d 44 24 10 50 e8 a0 ab 01 00
10543030: 8b 4d 18 8b 54 24 0c 89 11 8b c3 83 c9 ff f0 0f
10543040: c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06 8b 10
10543050: 6a 01 8b ce ff d2 8b 07 8b 50 14 8b cf ff d2 5f
10543060: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542f90 <.text+0x541f90>:
10542f90:	55                                              	push   ebp
10542f91:	8b ec                                           	mov    ebp,esp
10542f93:	83 e4 f0                                        	and    esp,0xfffffff0
10542f96:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542f9c:	83 ec 24                                        	sub    esp,0x24
10542f9f:	85 c9                                           	test   ecx,ecx
10542fa1:	53                                              	push   ebx
10542fa2:	56                                              	push   esi
10542fa3:	57                                              	push   edi
10542fa4:	0f 84 b5 00 00 00                               	je     0x1054305f
10542faa:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10542fad:	50                                              	push   eax
10542fae:	e8 3d 91 ff ff                                  	call   0x1053c0f0
10542fb3:	8b f8                                           	mov    edi,eax
10542fb5:	85 ff                                           	test   edi,edi
10542fb7:	0f 84 a2 00 00 00                               	je     0x1054305f
10542fbd:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542fbf:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542fc2:	8b cf                                           	mov    ecx,edi
10542fc4:	ff d0                                           	call   eax
10542fc6:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
10542fcd:	74 08                                           	je     0x10542fd7
10542fcf:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
10542fd5:	eb 0f                                           	jmp    0x10542fe6
10542fd7:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
10542fdd:	39 00                                           	cmp    DWORD PTR [eax],eax
10542fdf:	74 75                                           	je     0x10543056
10542fe1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10542fe3:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
10542fe6:	85 f6                                           	test   esi,esi
10542fe8:	74 6c                                           	je     0x10543056
10542fea:	8d 5e 04                                        	lea    ebx,[esi+0x4]
10542fed:	8b d3                                           	mov    edx,ebx
10542fef:	b8 01 00 00 00                                  	mov    eax,0x1
10542ff4:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
10542ff8:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
10542ffb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542ffd:	8b 92 1c 01 00 00                               	mov    edx,DWORD PTR [edx+0x11c]
10543003:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10543007:	50                                              	push   eax
10543008:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1054300c:	51                                              	push   ecx
1054300d:	51                                              	push   ecx
1054300e:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
10543012:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10543015:	50                                              	push   eax
10543016:	8b ce                                           	mov    ecx,esi
10543018:	ff d2                                           	call   edx
1054301a:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1054301d:	50                                              	push   eax
1054301e:	e8 ad ab 01 00                                  	call   0x1055dbd0
10543023:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
10543026:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1054302a:	50                                              	push   eax
1054302b:	e8 a0 ab 01 00                                  	call   0x1055dbd0
10543030:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10543033:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10543037:	89 11                                           	mov    DWORD PTR [ecx],edx
10543039:	8b c3                                           	mov    eax,ebx
1054303b:	83 c9 ff                                        	or     ecx,0xffffffff
1054303e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10543042:	49                                              	dec    ecx
10543043:	75 11                                           	jne    0x10543056
10543045:	ba 01 00 00 00                                  	mov    edx,0x1
1054304a:	87 13                                           	xchg   DWORD PTR [ebx],edx
1054304c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1054304e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10543050:	6a 01                                           	push   0x1
10543052:	8b ce                                           	mov    ecx,esi
10543054:	ff d2                                           	call   edx
10543056:	8b 07                                           	mov    eax,DWORD PTR [edi]
10543058:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1054305b:	8b cf                                           	mov    ecx,edi
1054305d:	ff d2                                           	call   edx
1054305f:	5f                                              	pop    edi
10543060:	5e                                              	pop    esi
10543061:	5b                                              	pop    ebx
10543062:	8b e5                                           	mov    esp,ebp
10543064:	5d                                              	pop    ebp
10543065:	c3                                              	ret
10543066:	cc                                              	int3
10543067:	cc                                              	int3
10543068:	cc                                              	int3
10543069:	cc                                              	int3
1054306a:	cc                                              	int3
1054306b:	cc                                              	int3
1054306c:	cc                                              	int3
1054306d:	cc                                              	int3
1054306e:	cc                                              	int3
1054306f:	cc                                              	int3
