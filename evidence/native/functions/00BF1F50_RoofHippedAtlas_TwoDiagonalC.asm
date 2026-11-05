# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf1f50 (RoofHippedAtlas_TwoDiagonalC)
Complete Ghidra function body: 0x00bf1f50..0x00bf202b (exclusive end)
Ghidra body ranges: [[00bf1f50, 00bf202a]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf1f50 <.text+0x7f0f50>:
  bf1f50:	53                                              	push   ebx
  bf1f51:	55                                              	push   ebp
  bf1f52:	56                                              	push   esi
  bf1f53:	8b f1                                           	mov    esi,ecx
  bf1f55:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf1f57:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  bf1f5a:	57                                              	push   edi
  bf1f5b:	ff d2                                           	call   edx
  bf1f5d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf1f5f:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  bf1f62:	8b ce                                           	mov    ecx,esi
  bf1f64:	ff d2                                           	call   edx
  bf1f66:	8d 6e 30                                        	lea    ebp,[esi+0x30]
  bf1f69:	33 db                                           	xor    ebx,ebx
  bf1f6b:	55                                              	push   ebp
  bf1f6c:	8b f8                                           	mov    edi,eax
  bf1f6e:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  bf1f71:	e8 6a 0e 01 00                                  	call   0xc02de0
  bf1f76:	83 c4 04                                        	add    esp,0x4
  bf1f79:	84 c0                                           	test   al,al
  bf1f7b:	74 58                                           	je     0xbf1fd5
  bf1f7d:	83 ff 01                                        	cmp    edi,0x1
  bf1f80:	75 19                                           	jne    0xbf1f9b
  bf1f82:	8b 46 58                                        	mov    eax,DWORD PTR [esi+0x58]
  bf1f85:	c1 e8 02                                        	shr    eax,0x2
  bf1f88:	a8 01                                           	test   al,0x1
  bf1f8a:	74 3a                                           	je     0xbf1fc6
  bf1f8c:	5f                                              	pop    edi
  bf1f8d:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1f90:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf1f97:	5e                                              	pop    esi
  bf1f98:	5d                                              	pop    ebp
  bf1f99:	5b                                              	pop    ebx
  bf1f9a:	c3                                              	ret
  bf1f9b:	83 ff 02                                        	cmp    edi,0x2
  bf1f9e:	75 26                                           	jne    0xbf1fc6
  bf1fa0:	8b 4e 50                                        	mov    ecx,DWORD PTR [esi+0x50]
  bf1fa3:	c1 e9 02                                        	shr    ecx,0x2
  bf1fa6:	f6 c1 01                                        	test   cl,0x1
  bf1fa9:	74 1b                                           	je     0xbf1fc6
  bf1fab:	8b 56 58                                        	mov    edx,DWORD PTR [esi+0x58]
  bf1fae:	c1 ea 02                                        	shr    edx,0x2
  bf1fb1:	f6 c2 01                                        	test   dl,0x1
  bf1fb4:	74 10                                           	je     0xbf1fc6
  bf1fb6:	5f                                              	pop    edi
  bf1fb7:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf1fbe:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf1fc2:	5e                                              	pop    esi
  bf1fc3:	5d                                              	pop    ebp
  bf1fc4:	5b                                              	pop    ebx
  bf1fc5:	c3                                              	ret
  bf1fc6:	5f                                              	pop    edi
  bf1fc7:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1fca:	c7 46 40 52 00 00 00                            	mov    DWORD PTR [esi+0x40],0x52
  bf1fd1:	5e                                              	pop    esi
  bf1fd2:	5d                                              	pop    ebp
  bf1fd3:	5b                                              	pop    ebx
  bf1fd4:	c3                                              	ret
  bf1fd5:	55                                              	push   ebp
  bf1fd6:	e8 a5 0e 01 00                                  	call   0xc02e80
  bf1fdb:	83 c4 04                                        	add    esp,0x4
  bf1fde:	84 c0                                           	test   al,al
  bf1fe0:	74 44                                           	je     0xbf2026
  bf1fe2:	83 ff 02                                        	cmp    edi,0x2
  bf1fe5:	75 24                                           	jne    0xbf200b
  bf1fe7:	8b 46 50                                        	mov    eax,DWORD PTR [esi+0x50]
  bf1fea:	c1 e8 02                                        	shr    eax,0x2
  bf1fed:	a8 01                                           	test   al,0x1
  bf1fef:	74 35                                           	je     0xbf2026
  bf1ff1:	8b 4e 60                                        	mov    ecx,DWORD PTR [esi+0x60]
  bf1ff4:	c1 e9 02                                        	shr    ecx,0x2
  bf1ff7:	f6 c1 01                                        	test   cl,0x1
  bf1ffa:	74 2a                                           	je     0xbf2026
  bf1ffc:	5f                                              	pop    edi
  bf1ffd:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf2000:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf2007:	5e                                              	pop    esi
  bf2008:	5d                                              	pop    ebp
  bf2009:	5b                                              	pop    ebx
  bf200a:	c3                                              	ret
  bf200b:	83 ff 01                                        	cmp    edi,0x1
  bf200e:	75 16                                           	jne    0xbf2026
  bf2010:	8b 56 60                                        	mov    edx,DWORD PTR [esi+0x60]
  bf2013:	c1 ea 02                                        	shr    edx,0x2
  bf2016:	f6 c2 01                                        	test   dl,0x1
  bf2019:	74 0b                                           	je     0xbf2026
  bf201b:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf201f:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf2026:	5f                                              	pop    edi
  bf2027:	5e                                              	pop    esi
  bf2028:	5d                                              	pop    ebp
  bf2029:	5b                                              	pop    ebx
  bf202a:	c3                                              	ret
