# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568050 (StreamHost_ToArray)
Paired Ghidra pseudocode: 10568050_StreamHost_ToArray.c
Window: [0x10568050, 0x10568150) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568050: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 08
10568060: 8b 35 a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d
10568070: 00 00 00 60 74 04 33 f6 eb 23 e8 a1 30 ff ff 8b
10568080: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
10568090: a3 a8 b0 c7 10 89 35 a4 b0 c7 10 8b f0 85 f6 75
105680a0: 07 33 c0 5e 83 c4 08 c3 53 57 e8 71 30 ff ff 8b
105680b0: 16 8b f8 8b 42 1c 8b ce ff d0 8b d8 85 db 0f 8c
105680c0: 80 00 00 00 8b 16 8b 42 28 6a 00 6a 00 8b ce ff
105680d0: d0 84 c0 74 6f c7 44 24 18 00 00 00 00 8b 17 8b
105680e0: 92 80 00 00 00 53 8d 44 24 1c 50 8b cf ff d2 8b
105680f0: 44 24 18 85 c0 74 4d 8b 17 8b 52 70 8d 4c 24 10
10568100: 51 8d 4c 24 10 51 50 8b cf ff d2 8b 44 24 0c 85
10568110: c0 74 20 39 5c 24 10 7c 1a 8b 16 53 50 8b 42 30
10568120: 8b ce ff d0 3b d8 75 0b 8b 44 24 18 5f 5b 5e 83
10568130: c4 08 c3 8b 17 8b 44 24 18 8b 92 94 00 00 00 50
10568140: 8b cf ff d2 5f 5b 33 c0 5e 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
10568050 <.text+0x567050>:
10568050:	83 ec 08                                        	sub    esp,0x8
10568053:	56                                              	push   esi
10568054:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10568058:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056805e:	75 08                                           	jne    0x10568068
10568060:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
10568066:	eb 35                                           	jmp    0x1056809d
10568068:	8b c6                                           	mov    eax,esi
1056806a:	25 00 00 00 ff                                  	and    eax,0xff000000
1056806f:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10568074:	74 04                                           	je     0x1056807a
10568076:	33 f6                                           	xor    esi,esi
10568078:	eb 23                                           	jmp    0x1056809d
1056807a:	e8 a1 30 ff ff                                  	call   0x1055b120
1056807f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10568081:	8b c8                                           	mov    ecx,eax
10568083:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10568089:	56                                              	push   esi
1056808a:	ff d0                                           	call   eax
1056808c:	85 c0                                           	test   eax,eax
1056808e:	74 0b                                           	je     0x1056809b
10568090:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10568095:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
1056809b:	8b f0                                           	mov    esi,eax
1056809d:	85 f6                                           	test   esi,esi
1056809f:	75 07                                           	jne    0x105680a8
105680a1:	33 c0                                           	xor    eax,eax
105680a3:	5e                                              	pop    esi
105680a4:	83 c4 08                                        	add    esp,0x8
105680a7:	c3                                              	ret
105680a8:	53                                              	push   ebx
105680a9:	57                                              	push   edi
105680aa:	e8 71 30 ff ff                                  	call   0x1055b120
105680af:	8b 16                                           	mov    edx,DWORD PTR [esi]
105680b1:	8b f8                                           	mov    edi,eax
105680b3:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
105680b6:	8b ce                                           	mov    ecx,esi
105680b8:	ff d0                                           	call   eax
105680ba:	8b d8                                           	mov    ebx,eax
105680bc:	85 db                                           	test   ebx,ebx
105680be:	0f 8c 80 00 00 00                               	jl     0x10568144
105680c4:	8b 16                                           	mov    edx,DWORD PTR [esi]
105680c6:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
105680c9:	6a 00                                           	push   0x0
105680cb:	6a 00                                           	push   0x0
105680cd:	8b ce                                           	mov    ecx,esi
105680cf:	ff d0                                           	call   eax
105680d1:	84 c0                                           	test   al,al
105680d3:	74 6f                                           	je     0x10568144
105680d5:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
105680dd:	8b 17                                           	mov    edx,DWORD PTR [edi]
105680df:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
105680e5:	53                                              	push   ebx
105680e6:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
105680ea:	50                                              	push   eax
105680eb:	8b cf                                           	mov    ecx,edi
105680ed:	ff d2                                           	call   edx
105680ef:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105680f3:	85 c0                                           	test   eax,eax
105680f5:	74 4d                                           	je     0x10568144
105680f7:	8b 17                                           	mov    edx,DWORD PTR [edi]
105680f9:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
105680fc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10568100:	51                                              	push   ecx
10568101:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10568105:	51                                              	push   ecx
10568106:	50                                              	push   eax
10568107:	8b cf                                           	mov    ecx,edi
10568109:	ff d2                                           	call   edx
1056810b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1056810f:	85 c0                                           	test   eax,eax
10568111:	74 20                                           	je     0x10568133
10568113:	39 5c 24 10                                     	cmp    DWORD PTR [esp+0x10],ebx
10568117:	7c 1a                                           	jl     0x10568133
10568119:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056811b:	53                                              	push   ebx
1056811c:	50                                              	push   eax
1056811d:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
10568120:	8b ce                                           	mov    ecx,esi
10568122:	ff d0                                           	call   eax
10568124:	3b d8                                           	cmp    ebx,eax
10568126:	75 0b                                           	jne    0x10568133
10568128:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1056812c:	5f                                              	pop    edi
1056812d:	5b                                              	pop    ebx
1056812e:	5e                                              	pop    esi
1056812f:	83 c4 08                                        	add    esp,0x8
10568132:	c3                                              	ret
10568133:	8b 17                                           	mov    edx,DWORD PTR [edi]
10568135:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10568139:	8b 92 94 00 00 00                               	mov    edx,DWORD PTR [edx+0x94]
1056813f:	50                                              	push   eax
10568140:	8b cf                                           	mov    ecx,edi
10568142:	ff d2                                           	call   edx
10568144:	5f                                              	pop    edi
10568145:	5b                                              	pop    ebx
10568146:	33 c0                                           	xor    eax,eax
10568148:	5e                                              	pop    esi
10568149:	83 c4 08                                        	add    esp,0x8
1056814c:	c3                                              	ret
1056814d:	cc                                              	int3
1056814e:	cc                                              	int3
1056814f:	cc                                              	int3
