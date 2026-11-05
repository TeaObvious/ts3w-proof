# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a0d0 (KeyNameMap_Create)
Paired Ghidra pseudocode: 1098A0D0_KeyNameMap_Create.c
Window: [0x1098a0d0, 0x1098a190) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a0d0: 83 ec 10 56 8b 74 24 18 83 3e 00 75 4e 83 7e 04
1098a0e0: 00 75 48 8b 46 08 0b 46 0c 75 40 50 50 50 50 68
1098a0f0: 2c 6e b9 10 6a 48 e8 b5 ed f8 ff 83 c4 18 85 c0
1098a100: 74 18 8b c8 e8 07 83 b9 ff 8b f0 8b 16 8b 02 8b
1098a110: ce ff d0 8b c6 5e 83 c4 10 c3 33 f6 8b 16 8b 02
1098a120: 8b ce ff d0 8b c6 5e 83 c4 10 c3 e8 a0 af f5 ff
1098a130: 8b 0e 8b 56 04 6a 00 89 4c 24 10 8b 4e 08 6a 00
1098a140: 89 4c 24 0c 6a 00 89 54 24 1c 8b 56 0c 6a 00 8d
1098a150: 4c 24 28 51 89 54 24 1c 8b 10 8b 52 0c 8d 4c 24
1098a160: 18 51 8b c8 ff d2 84 c0 74 19 8b 4c 24 18 85 c9
1098a170: 74 11 8b 01 8b 50 0c 68 96 03 66 01 ff d2 5e 83
1098a180: c4 10 c3 33 c0 5e 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a0d0 <.text+0x9890d0>:
1098a0d0:	83 ec 10                                        	sub    esp,0x10
1098a0d3:	56                                              	push   esi
1098a0d4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098a0d8:	83 3e 00                                        	cmp    DWORD PTR [esi],0x0
1098a0db:	75 4e                                           	jne    0x1098a12b
1098a0dd:	83 7e 04 00                                     	cmp    DWORD PTR [esi+0x4],0x0
1098a0e1:	75 48                                           	jne    0x1098a12b
1098a0e3:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098a0e6:	0b 46 0c                                        	or     eax,DWORD PTR [esi+0xc]
1098a0e9:	75 40                                           	jne    0x1098a12b
1098a0eb:	50                                              	push   eax
1098a0ec:	50                                              	push   eax
1098a0ed:	50                                              	push   eax
1098a0ee:	50                                              	push   eax
1098a0ef:	68 2c 6e b9 10                                  	push   0x10b96e2c
1098a0f4:	6a 48                                           	push   0x48
1098a0f6:	e8 b5 ed f8 ff                                  	call   0x10918eb0
1098a0fb:	83 c4 18                                        	add    esp,0x18
1098a0fe:	85 c0                                           	test   eax,eax
1098a100:	74 18                                           	je     0x1098a11a
1098a102:	8b c8                                           	mov    ecx,eax
1098a104:	e8 07 83 b9 ff                                  	call   0x10522410
1098a109:	8b f0                                           	mov    esi,eax
1098a10b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a10d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098a10f:	8b ce                                           	mov    ecx,esi
1098a111:	ff d0                                           	call   eax
1098a113:	8b c6                                           	mov    eax,esi
1098a115:	5e                                              	pop    esi
1098a116:	83 c4 10                                        	add    esp,0x10
1098a119:	c3                                              	ret
1098a11a:	33 f6                                           	xor    esi,esi
1098a11c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a11e:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098a120:	8b ce                                           	mov    ecx,esi
1098a122:	ff d0                                           	call   eax
1098a124:	8b c6                                           	mov    eax,esi
1098a126:	5e                                              	pop    esi
1098a127:	83 c4 10                                        	add    esp,0x10
1098a12a:	c3                                              	ret
1098a12b:	e8 a0 af f5 ff                                  	call   0x108e50d0
1098a130:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
1098a132:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098a135:	6a 00                                           	push   0x0
1098a137:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098a13b:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098a13e:	6a 00                                           	push   0x0
1098a140:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1098a144:	6a 00                                           	push   0x0
1098a146:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1098a14a:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
1098a14d:	6a 00                                           	push   0x0
1098a14f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098a153:	51                                              	push   ecx
1098a154:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1098a158:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a15a:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098a15d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098a161:	51                                              	push   ecx
1098a162:	8b c8                                           	mov    ecx,eax
1098a164:	ff d2                                           	call   edx
1098a166:	84 c0                                           	test   al,al
1098a168:	74 19                                           	je     0x1098a183
1098a16a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098a16e:	85 c9                                           	test   ecx,ecx
1098a170:	74 11                                           	je     0x1098a183
1098a172:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098a174:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098a177:	68 96 03 66 01                                  	push   0x1660396
1098a17c:	ff d2                                           	call   edx
1098a17e:	5e                                              	pop    esi
1098a17f:	83 c4 10                                        	add    esp,0x10
1098a182:	c3                                              	ret
1098a183:	33 c0                                           	xor    eax,eax
1098a185:	5e                                              	pop    esi
1098a186:	83 c4 10                                        	add    esp,0x10
1098a189:	c3                                              	ret
1098a18a:	cc                                              	int3
1098a18b:	cc                                              	int3
1098a18c:	cc                                              	int3
1098a18d:	cc                                              	int3
1098a18e:	cc                                              	int3
1098a18f:	cc                                              	int3
