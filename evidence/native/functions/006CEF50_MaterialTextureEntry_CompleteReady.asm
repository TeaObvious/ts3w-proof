# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006cef50 (MaterialTextureEntry_CompleteReady)
Paired actual Ghidra pseudocode: 006CEF50_MaterialTextureEntry_CompleteReady.c
Envelope [0x006cef50,0x006cf1af); 607 bytes; exact owned ranges: [0x006cef50,0x006cf1af)
Owned: 607 original bytes / 216 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006cef50 <original>:
  6cef50:	83 ec 28                                        	sub    esp,0x28
  6cef53:	56                                              	push   esi
  6cef54:	8b f1                                           	mov    esi,ecx
  6cef56:	8b 46 44                                        	mov    eax,DWORD PTR [esi+0x44]
  6cef59:	83 f8 02                                        	cmp    eax,0x2
  6cef5c:	57                                              	push   edi
  6cef5d:	8d 7e 44                                        	lea    edi,[esi+0x44]
  6cef60:	0f 85 43 02 00 00                               	jne    0x6cf1a9
  6cef66:	b9 04 00 00 00                                  	mov    ecx,0x4
  6cef6b:	8b d7                                           	mov    edx,edi
  6cef6d:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  6cef6f:	83 7e 34 00                                     	cmp    DWORD PTR [esi+0x34],0x0
  6cef73:	0f 84 30 02 00 00                               	je     0x6cf1a9
  6cef79:	8a 46 42                                        	mov    al,BYTE PTR [esi+0x42]
  6cef7c:	a8 02                                           	test   al,0x2
  6cef7e:	55                                              	push   ebp
  6cef7f:	0f 84 e3 00 00 00                               	je     0x6cf068
  6cef85:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  6cef88:	8b 41 44                                        	mov    eax,DWORD PTR [ecx+0x44]
  6cef8b:	f7 d8                                           	neg    eax
  6cef8d:	1b c0                                           	sbb    eax,eax
  6cef8f:	23 c1                                           	and    eax,ecx
  6cef91:	74 05                                           	je     0x6cef98
  6cef93:	8d 78 28                                        	lea    edi,[eax+0x28]
  6cef96:	eb 02                                           	jmp    0x6cef9a
  6cef98:	33 ff                                           	xor    edi,edi
  6cef9a:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cef9d:	57                                              	push   edi
  6cef9e:	e8 8d a6 ff ff                                  	call   0x6c9630
  6cefa3:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  6cefa6:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cefa9:	50                                              	push   eax
  6cefaa:	e8 a1 63 5b 00                                  	call   0xc85350
  6cefaf:	e8 dc 8d fb ff                                  	call   0x687d90
  6cefb4:	6a 00                                           	push   0x0
  6cefb6:	8b cf                                           	mov    ecx,edi
  6cefb8:	8b e8                                           	mov    ebp,eax
  6cefba:	e8 61 8a fb ff                                  	call   0x687a20
  6cefbf:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cefc2:	80 66 42 f7                                     	and    BYTE PTR [esi+0x42],0xf7
  6cefc6:	85 c9                                           	test   ecx,ecx
  6cefc8:	74 0a                                           	je     0x6cefd4
  6cefca:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  6cefcd:	50                                              	push   eax
  6cefce:	52                                              	push   edx
  6cefcf:	e8 3c aa ff ff                                  	call   0x6c9a10
  6cefd4:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  6cefdc:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cefdf:	68 54 6f ff 00                                  	push   0xff6f54
  6cefe4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  6cefea:	e8 21 ae ff ff                                  	call   0x6c9e10
  6cefef:	85 c0                                           	test   eax,eax
  6ceff1:	74 0f                                           	je     0x6cf002
  6ceff3:	80 78 1e 01                                     	cmp    BYTE PTR [eax+0x1e],0x1
  6ceff7:	75 09                                           	jne    0x6cf002
  6ceff9:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  6ceffc:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [eax]
  6cf000:	eb 06                                           	jmp    0x6cf008
  6cf002:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  6cf008:	d9 47 18                                        	fld    DWORD PTR [edi+0x18]
  6cf00b:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
  6cf00f:	dd 05 20 11 ff 00                               	fld    QWORD PTR ds:0xff1120
  6cf015:	d9 c9                                           	fxch   st(1)
  6cf017:	df f1                                           	fcomip st,st(1)
  6cf019:	dd d8                                           	fstp   st(0)
  6cf01b:	76 14                                           	jbe    0x6cf031
  6cf01d:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  6cf025:	f3 0f 5e 44 24 0c                               	divss  xmm0,DWORD PTR [esp+0xc]
  6cf02b:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  6cf02f:	eb 03                                           	jmp    0x6cf034
  6cf031:	0f 57 c0                                        	xorps  xmm0,xmm0
  6cf034:	8b 56 34                                        	mov    edx,DWORD PTR [esi+0x34]
  6cf037:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  6cf03b:	51                                              	push   ecx
  6cf03c:	6a 00                                           	push   0x0
  6cf03e:	52                                              	push   edx
  6cf03f:	8b cd                                           	mov    ecx,ebp
  6cf041:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  6cf049:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  6cf051:	c6 44 24 28 00                                  	mov    BYTE PTR [esp+0x28],0x0
  6cf056:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  6cf05c:	e8 6f 90 fb ff                                  	call   0x6880d0
  6cf061:	5d                                              	pop    ebp
  6cf062:	5f                                              	pop    edi
  6cf063:	5e                                              	pop    esi
  6cf064:	83 c4 28                                        	add    esp,0x28
  6cf067:	c3                                              	ret
  6cf068:	a8 01                                           	test   al,0x1
  6cf06a:	75 35                                           	jne    0x6cf0a1
  6cf06c:	8b 4e 24                                        	mov    ecx,DWORD PTR [esi+0x24]
  6cf06f:	8b 41 60                                        	mov    eax,DWORD PTR [ecx+0x60]
  6cf072:	f7 d8                                           	neg    eax
  6cf074:	1b c0                                           	sbb    eax,eax
  6cf076:	23 c1                                           	and    eax,ecx
  6cf078:	74 05                                           	je     0x6cf07f
  6cf07a:	83 c0 28                                        	add    eax,0x28
  6cf07d:	eb 02                                           	jmp    0x6cf081
  6cf07f:	33 c0                                           	xor    eax,eax
  6cf081:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cf084:	80 66 42 f7                                     	and    BYTE PTR [esi+0x42],0xf7
  6cf088:	85 c9                                           	test   ecx,ecx
  6cf08a:	0f 84 18 01 00 00                               	je     0x6cf1a8
  6cf090:	50                                              	push   eax
  6cf091:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  6cf094:	50                                              	push   eax
  6cf095:	e8 76 a9 ff ff                                  	call   0x6c9a10
  6cf09a:	5d                                              	pop    ebp
  6cf09b:	5f                                              	pop    edi
  6cf09c:	5e                                              	pop    esi
  6cf09d:	83 c4 28                                        	add    esp,0x28
  6cf0a0:	c3                                              	ret
  6cf0a1:	8b 4e 2c                                        	mov    ecx,DWORD PTR [esi+0x2c]
  6cf0a4:	e8 d7 71 f3 ff                                  	call   0x606280
  6cf0a9:	23 c2                                           	and    eax,edx
  6cf0ab:	83 f8 ff                                        	cmp    eax,0xffffffff
  6cf0ae:	75 57                                           	jne    0x6cf107
  6cf0b0:	8a 4e 42                                        	mov    cl,BYTE PTR [esi+0x42]
  6cf0b3:	80 e1 fc                                        	and    cl,0xfc
  6cf0b6:	80 c9 04                                        	or     cl,0x4
  6cf0b9:	88 4e 42                                        	mov    BYTE PTR [esi+0x42],cl
  6cf0bc:	33 d2                                           	xor    edx,edx
  6cf0be:	87 17                                           	xchg   DWORD PTR [edi],edx
  6cf0c0:	6a 00                                           	push   0x0
  6cf0c2:	6a 00                                           	push   0x0
  6cf0c4:	8d 46 08                                        	lea    eax,[esi+0x8]
  6cf0c7:	50                                              	push   eax
  6cf0c8:	68 90 c8 15 01                                  	push   0x115c890
  6cf0cd:	8d 4e 24                                        	lea    ecx,[esi+0x24]
  6cf0d0:	e8 7b b5 ef ff                                  	call   0x5ca650
  6cf0d5:	84 c0                                           	test   al,al
  6cf0d7:	74 0d                                           	je     0x6cf0e6
  6cf0d9:	5d                                              	pop    ebp
  6cf0da:	5f                                              	pop    edi
  6cf0db:	8b ce                                           	mov    ecx,esi
  6cf0dd:	5e                                              	pop    esi
  6cf0de:	83 c4 28                                        	add    esp,0x28
  6cf0e1:	e9 0a 02 00 00                                  	jmp    0x6cf2f0
  6cf0e6:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cf0e9:	80 66 42 f7                                     	and    BYTE PTR [esi+0x42],0xf7
  6cf0ed:	85 c9                                           	test   ecx,ecx
  6cf0ef:	0f 84 b3 00 00 00                               	je     0x6cf1a8
  6cf0f5:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  6cf0f8:	6a 00                                           	push   0x0
  6cf0fa:	52                                              	push   edx
  6cf0fb:	e8 10 a9 ff ff                                  	call   0x6c9a10
  6cf100:	5d                                              	pop    ebp
  6cf101:	5f                                              	pop    edi
  6cf102:	5e                                              	pop    esi
  6cf103:	83 c4 28                                        	add    esp,0x28
  6cf106:	c3                                              	ret
  6cf107:	e8 54 8e f3 ff                                  	call   0x607f60
  6cf10c:	8b e8                                           	mov    ebp,eax
  6cf10e:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  6cf111:	a8 03                                           	test   al,0x3
  6cf113:	75 05                                           	jne    0x6cf11a
  6cf115:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  6cf118:	eb 02                                           	jmp    0x6cf11c
  6cf11a:	33 c0                                           	xor    eax,eax
  6cf11c:	50                                              	push   eax
  6cf11d:	8b cd                                           	mov    ecx,ebp
  6cf11f:	e8 8c e0 ff ff                                  	call   0x6cd1b0
  6cf124:	8b f8                                           	mov    edi,eax
  6cf126:	85 ff                                           	test   edi,edi
  6cf128:	74 25                                           	je     0x6cf14f
  6cf12a:	57                                              	push   edi
  6cf12b:	8d 4e 28                                        	lea    ecx,[esi+0x28]
  6cf12e:	e8 9d 9d 0f 00                                  	call   0x7c8ed0
  6cf133:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  6cf136:	80 66 42 f7                                     	and    BYTE PTR [esi+0x42],0xf7
  6cf13a:	85 c9                                           	test   ecx,ecx
  6cf13c:	74 6a                                           	je     0x6cf1a8
  6cf13e:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  6cf141:	57                                              	push   edi
  6cf142:	52                                              	push   edx
  6cf143:	e8 c8 a8 ff ff                                  	call   0x6c9a10
  6cf148:	5d                                              	pop    ebp
  6cf149:	5f                                              	pop    edi
  6cf14a:	5e                                              	pop    esi
  6cf14b:	83 c4 28                                        	add    esp,0x28
  6cf14e:	c3                                              	ret
  6cf14f:	8b 46 1c                                        	mov    eax,DWORD PTR [esi+0x1c]
  6cf152:	8b 4e 20                                        	mov    ecx,DWORD PTR [esi+0x20]
  6cf155:	8b 56 38                                        	mov    edx,DWORD PTR [esi+0x38]
  6cf158:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  6cf15c:	8b 46 3c                                        	mov    eax,DWORD PTR [esi+0x3c]
  6cf15f:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  6cf163:	8a 46 42                                        	mov    al,BYTE PTR [esi+0x42]
  6cf166:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  6cf16a:	8a c8                                           	mov    cl,al
  6cf16c:	c0 e9 04                                        	shr    cl,0x4
  6cf16f:	80 e1 01                                        	and    cl,0x1
  6cf172:	c0 e8 05                                        	shr    al,0x5
  6cf175:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  6cf179:	8b 56 2c                                        	mov    edx,DWORD PTR [esi+0x2c]
  6cf17c:	24 01                                           	and    al,0x1
  6cf17e:	f6 c2 03                                        	test   dl,0x3
  6cf181:	88 4c 24 30                                     	mov    BYTE PTR [esp+0x30],cl
  6cf185:	88 44 24 31                                     	mov    BYTE PTR [esp+0x31],al
  6cf189:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  6cf18c:	75 05                                           	jne    0x6cf193
  6cf18e:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  6cf191:	eb 02                                           	jmp    0x6cf195
  6cf193:	33 c0                                           	xor    eax,eax
  6cf195:	0f b7 56 40                                     	movzx  edx,WORD PTR [esi+0x40]
  6cf199:	52                                              	push   edx
  6cf19a:	51                                              	push   ecx
  6cf19b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  6cf19f:	51                                              	push   ecx
  6cf1a0:	50                                              	push   eax
  6cf1a1:	8b cd                                           	mov    ecx,ebp
  6cf1a3:	e8 b8 f9 ff ff                                  	call   0x6ceb60
  6cf1a8:	5d                                              	pop    ebp
  6cf1a9:	5f                                              	pop    edi
  6cf1aa:	5e                                              	pop    esi
  6cf1ab:	83 c4 28                                        	add    esp,0x28
  6cf1ae:	c3                                              	ret
