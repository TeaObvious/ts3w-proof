# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cfd0 (Animation_PlayPose)
Paired Ghidra pseudocode: 1052CFD0_Animation_PlayPose.c
Window: [0x1052cfd0, 0x1052d1d0) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cfd0: 83 ec 14 56 e8 c7 d1 1f 00 8b 4c 24 20 8b 54 24
1052cfe0: 1c 51 52 8b c8 e8 c6 db 1f 00 8b f0 85 f6 89 74
1052cff0: 24 04 0f 84 b2 01 00 00 55 8d 46 04 b9 01 00 00
1052d000: 00 f0 0f c1 08 8b 15 c4 0c c8 10 52 8b ce e8 8d
1052d010: 9d 1f 00 8b e8 85 ed 0f 84 6c 01 00 00 53 6a 00
1052d020: 6a 00 6a 00 6a 00 68 34 9a b1 10 68 00 06 00 00
1052d030: e8 7b be 3e 00 83 c4 18 85 c0 0f 84 6f 01 00 00
1052d040: d9 ee 51 8d 4d 08 d9 1c 24 51 8b c8 e8 9f 7f e3
1052d050: ff 8b d8 85 db 74 04 83 43 04 01 8b 54 24 38 8b
1052d060: 4c 24 34 8b 44 24 3c 89 54 24 10 57 8d 54 24 14
1052d070: 89 4c 24 20 52 8b cb 89 44 24 1c c7 44 24 20 f3
1052d080: c4 20 6b e8 a8 95 e3 ff 6a 00 6a 00 6a 00 6a 00
1052d090: 68 14 9a b1 10 6a 38 e8 14 be 3e 00 83 c4 18 85
1052d0a0: c0 0f 84 0f 01 00 00 d9 ee 51 d9 1c 24 8d 4d 08
1052d0b0: 53 51 8b c8 e8 37 eb e3 ff 8b f8 85 ff 74 04 83
1052d0c0: 47 04 01 6a 00 6a 00 6a 00 6a 00 68 f0 99 b1 10
1052d0d0: 6a 30 e8 d9 bd 3e 00 83 c4 18 85 c0 0f 84 db 00
1052d0e0: 00 00 57 8d 55 08 52 8b c8 e8 82 ee e3 ff 8b f0
1052d0f0: 85 f6 74 04 83 46 04 01 d9 05 84 e1 aa 10 8b 45
1052d100: 08 8b 54 24 30 8b 40 14 6a 01 6a 00 6a 00 6a 01
1052d110: 83 ec 08 d9 54 24 04 8d 4d 08 d9 1c 24 6a 02 56
1052d120: 52 ff d0 85 f6 74 1c 8b 46 04 83 c0 ff 89 46 04
1052d130: 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a 01 8b
1052d140: ce ff d0 85 ff 74 1c 8b 47 04 83 c0 ff 89 47 04
1052d150: 75 11 c7 47 04 01 00 00 00 8b 17 8b 02 6a 01 8b
1052d160: cf ff d0 85 db 5f 74 1c 8b 43 04 83 c0 ff 89 43
1052d170: 04 75 11 c7 43 04 01 00 00 00 8b 13 8b 02 6a 01
1052d180: 8b cb ff d0 8b 74 24 0c 5b 8d 46 04 8b c8 83 ca
1052d190: ff 5d f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08
1052d1a0: 8b 16 8b 02 6a 01 8b ce ff d0 5e 83 c4 14 c3 33
1052d1b0: db e9 a5 fe ff ff 33 ff e9 06 ff ff ff 33 f6 e9
1052d1c0: 34 ff ff ff cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052cfd0 <.text+0x52bfd0>:
1052cfd0:	83 ec 14                                        	sub    esp,0x14
1052cfd3:	56                                              	push   esi
1052cfd4:	e8 c7 d1 1f 00                                  	call   0x1072a1a0
1052cfd9:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1052cfdd:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1052cfe1:	51                                              	push   ecx
1052cfe2:	52                                              	push   edx
1052cfe3:	8b c8                                           	mov    ecx,eax
1052cfe5:	e8 c6 db 1f 00                                  	call   0x1072abb0
1052cfea:	8b f0                                           	mov    esi,eax
1052cfec:	85 f6                                           	test   esi,esi
1052cfee:	89 74 24 04                                     	mov    DWORD PTR [esp+0x4],esi
1052cff2:	0f 84 b2 01 00 00                               	je     0x1052d1aa
1052cff8:	55                                              	push   ebp
1052cff9:	8d 46 04                                        	lea    eax,[esi+0x4]
1052cffc:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d001:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d005:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d00b:	52                                              	push   edx
1052d00c:	8b ce                                           	mov    ecx,esi
1052d00e:	e8 8d 9d 1f 00                                  	call   0x10726da0
1052d013:	8b e8                                           	mov    ebp,eax
1052d015:	85 ed                                           	test   ebp,ebp
1052d017:	0f 84 6c 01 00 00                               	je     0x1052d189
1052d01d:	53                                              	push   ebx
1052d01e:	6a 00                                           	push   0x0
1052d020:	6a 00                                           	push   0x0
1052d022:	6a 00                                           	push   0x0
1052d024:	6a 00                                           	push   0x0
1052d026:	68 34 9a b1 10                                  	push   0x10b19a34
1052d02b:	68 00 06 00 00                                  	push   0x600
1052d030:	e8 7b be 3e 00                                  	call   0x10918eb0
1052d035:	83 c4 18                                        	add    esp,0x18
1052d038:	85 c0                                           	test   eax,eax
1052d03a:	0f 84 6f 01 00 00                               	je     0x1052d1af
1052d040:	d9 ee                                           	fldz
1052d042:	51                                              	push   ecx
1052d043:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d046:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d049:	51                                              	push   ecx
1052d04a:	8b c8                                           	mov    ecx,eax
1052d04c:	e8 9f 7f e3 ff                                  	call   0x10364ff0
1052d051:	8b d8                                           	mov    ebx,eax
1052d053:	85 db                                           	test   ebx,ebx
1052d055:	74 04                                           	je     0x1052d05b
1052d057:	83 43 04 01                                     	add    DWORD PTR [ebx+0x4],0x1
1052d05b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
1052d05f:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1052d063:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1052d067:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1052d06b:	57                                              	push   edi
1052d06c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1052d070:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
1052d074:	52                                              	push   edx
1052d075:	8b cb                                           	mov    ecx,ebx
1052d077:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1052d07b:	c7 44 24 20 f3 c4 20 6b                         	mov    DWORD PTR [esp+0x20],0x6b20c4f3
1052d083:	e8 a8 95 e3 ff                                  	call   0x10366630
1052d088:	6a 00                                           	push   0x0
1052d08a:	6a 00                                           	push   0x0
1052d08c:	6a 00                                           	push   0x0
1052d08e:	6a 00                                           	push   0x0
1052d090:	68 14 9a b1 10                                  	push   0x10b19a14
1052d095:	6a 38                                           	push   0x38
1052d097:	e8 14 be 3e 00                                  	call   0x10918eb0
1052d09c:	83 c4 18                                        	add    esp,0x18
1052d09f:	85 c0                                           	test   eax,eax
1052d0a1:	0f 84 0f 01 00 00                               	je     0x1052d1b6
1052d0a7:	d9 ee                                           	fldz
1052d0a9:	51                                              	push   ecx
1052d0aa:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d0ad:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d0b0:	53                                              	push   ebx
1052d0b1:	51                                              	push   ecx
1052d0b2:	8b c8                                           	mov    ecx,eax
1052d0b4:	e8 37 eb e3 ff                                  	call   0x1036bbf0
1052d0b9:	8b f8                                           	mov    edi,eax
1052d0bb:	85 ff                                           	test   edi,edi
1052d0bd:	74 04                                           	je     0x1052d0c3
1052d0bf:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
1052d0c3:	6a 00                                           	push   0x0
1052d0c5:	6a 00                                           	push   0x0
1052d0c7:	6a 00                                           	push   0x0
1052d0c9:	6a 00                                           	push   0x0
1052d0cb:	68 f0 99 b1 10                                  	push   0x10b199f0
1052d0d0:	6a 30                                           	push   0x30
1052d0d2:	e8 d9 bd 3e 00                                  	call   0x10918eb0
1052d0d7:	83 c4 18                                        	add    esp,0x18
1052d0da:	85 c0                                           	test   eax,eax
1052d0dc:	0f 84 db 00 00 00                               	je     0x1052d1bd
1052d0e2:	57                                              	push   edi
1052d0e3:	8d 55 08                                        	lea    edx,[ebp+0x8]
1052d0e6:	52                                              	push   edx
1052d0e7:	8b c8                                           	mov    ecx,eax
1052d0e9:	e8 82 ee e3 ff                                  	call   0x1036bf70
1052d0ee:	8b f0                                           	mov    esi,eax
1052d0f0:	85 f6                                           	test   esi,esi
1052d0f2:	74 04                                           	je     0x1052d0f8
1052d0f4:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052d0f8:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1052d0fe:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1052d101:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1052d105:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1052d108:	6a 01                                           	push   0x1
1052d10a:	6a 00                                           	push   0x0
1052d10c:	6a 00                                           	push   0x0
1052d10e:	6a 01                                           	push   0x1
1052d110:	83 ec 08                                        	sub    esp,0x8
1052d113:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052d117:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052d11a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d11d:	6a 02                                           	push   0x2
1052d11f:	56                                              	push   esi
1052d120:	52                                              	push   edx
1052d121:	ff d0                                           	call   eax
1052d123:	85 f6                                           	test   esi,esi
1052d125:	74 1c                                           	je     0x1052d143
1052d127:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052d12a:	83 c0 ff                                        	add    eax,0xffffffff
1052d12d:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052d130:	75 11                                           	jne    0x1052d143
1052d132:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052d139:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d13b:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d13d:	6a 01                                           	push   0x1
1052d13f:	8b ce                                           	mov    ecx,esi
1052d141:	ff d0                                           	call   eax
1052d143:	85 ff                                           	test   edi,edi
1052d145:	74 1c                                           	je     0x1052d163
1052d147:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1052d14a:	83 c0 ff                                        	add    eax,0xffffffff
1052d14d:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1052d150:	75 11                                           	jne    0x1052d163
1052d152:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
1052d159:	8b 17                                           	mov    edx,DWORD PTR [edi]
1052d15b:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d15d:	6a 01                                           	push   0x1
1052d15f:	8b cf                                           	mov    ecx,edi
1052d161:	ff d0                                           	call   eax
1052d163:	85 db                                           	test   ebx,ebx
1052d165:	5f                                              	pop    edi
1052d166:	74 1c                                           	je     0x1052d184
1052d168:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
1052d16b:	83 c0 ff                                        	add    eax,0xffffffff
1052d16e:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
1052d171:	75 11                                           	jne    0x1052d184
1052d173:	c7 43 04 01 00 00 00                            	mov    DWORD PTR [ebx+0x4],0x1
1052d17a:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1052d17c:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d17e:	6a 01                                           	push   0x1
1052d180:	8b cb                                           	mov    ecx,ebx
1052d182:	ff d0                                           	call   eax
1052d184:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1052d188:	5b                                              	pop    ebx
1052d189:	8d 46 04                                        	lea    eax,[esi+0x4]
1052d18c:	8b c8                                           	mov    ecx,eax
1052d18e:	83 ca ff                                        	or     edx,0xffffffff
1052d191:	5d                                              	pop    ebp
1052d192:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052d196:	4a                                              	dec    edx
1052d197:	75 11                                           	jne    0x1052d1aa
1052d199:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d19e:	87 08                                           	xchg   DWORD PTR [eax],ecx
1052d1a0:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d1a2:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d1a4:	6a 01                                           	push   0x1
1052d1a6:	8b ce                                           	mov    ecx,esi
1052d1a8:	ff d0                                           	call   eax
1052d1aa:	5e                                              	pop    esi
1052d1ab:	83 c4 14                                        	add    esp,0x14
1052d1ae:	c3                                              	ret
1052d1af:	33 db                                           	xor    ebx,ebx
1052d1b1:	e9 a5 fe ff ff                                  	jmp    0x1052d05b
1052d1b6:	33 ff                                           	xor    edi,edi
1052d1b8:	e9 06 ff ff ff                                  	jmp    0x1052d0c3
1052d1bd:	33 f6                                           	xor    esi,esi
1052d1bf:	e9 34 ff ff ff                                  	jmp    0x1052d0f8
1052d1c4:	cc                                              	int3
1052d1c5:	cc                                              	int3
1052d1c6:	cc                                              	int3
1052d1c7:	cc                                              	int3
1052d1c8:	cc                                              	int3
1052d1c9:	cc                                              	int3
1052d1ca:	cc                                              	int3
1052d1cb:	cc                                              	int3
1052d1cc:	cc                                              	int3
1052d1cd:	cc                                              	int3
1052d1ce:	cc                                              	int3
1052d1cf:	cc                                              	int3
