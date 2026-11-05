# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf1900 (RoofHippedAtlas_TwoDiagonalA)
Complete Ghidra function body: 0x00bf1900..0x00bf19db (exclusive end)
Ghidra body ranges: [[00bf1900, 00bf19da]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf1900 <.text+0x7f0900>:
  bf1900:	53                                              	push   ebx
  bf1901:	55                                              	push   ebp
  bf1902:	56                                              	push   esi
  bf1903:	8b f1                                           	mov    esi,ecx
  bf1905:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf1907:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  bf190a:	57                                              	push   edi
  bf190b:	ff d2                                           	call   edx
  bf190d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf190f:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  bf1912:	8b ce                                           	mov    ecx,esi
  bf1914:	ff d2                                           	call   edx
  bf1916:	8d 6e 30                                        	lea    ebp,[esi+0x30]
  bf1919:	33 db                                           	xor    ebx,ebx
  bf191b:	55                                              	push   ebp
  bf191c:	8b f8                                           	mov    edi,eax
  bf191e:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  bf1921:	e8 5a 15 01 00                                  	call   0xc02e80
  bf1926:	83 c4 04                                        	add    esp,0x4
  bf1929:	84 c0                                           	test   al,al
  bf192b:	74 58                                           	je     0xbf1985
  bf192d:	83 ff 01                                        	cmp    edi,0x1
  bf1930:	75 19                                           	jne    0xbf194b
  bf1932:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
  bf1935:	c1 e8 02                                        	shr    eax,0x2
  bf1938:	a8 01                                           	test   al,0x1
  bf193a:	74 3a                                           	je     0xbf1976
  bf193c:	5f                                              	pop    edi
  bf193d:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1940:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf1947:	5e                                              	pop    esi
  bf1948:	5d                                              	pop    ebp
  bf1949:	5b                                              	pop    ebx
  bf194a:	c3                                              	ret
  bf194b:	83 ff 02                                        	cmp    edi,0x2
  bf194e:	75 26                                           	jne    0xbf1976
  bf1950:	8b 4e 4c                                        	mov    ecx,DWORD PTR [esi+0x4c]
  bf1953:	c1 e9 02                                        	shr    ecx,0x2
  bf1956:	f6 c1 01                                        	test   cl,0x1
  bf1959:	74 1b                                           	je     0xbf1976
  bf195b:	8b 56 5c                                        	mov    edx,DWORD PTR [esi+0x5c]
  bf195e:	c1 ea 02                                        	shr    edx,0x2
  bf1961:	f6 c2 01                                        	test   dl,0x1
  bf1964:	74 10                                           	je     0xbf1976
  bf1966:	5f                                              	pop    edi
  bf1967:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf196e:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf1972:	5e                                              	pop    esi
  bf1973:	5d                                              	pop    ebp
  bf1974:	5b                                              	pop    ebx
  bf1975:	c3                                              	ret
  bf1976:	5f                                              	pop    edi
  bf1977:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf197a:	c7 46 40 52 00 00 00                            	mov    DWORD PTR [esi+0x40],0x52
  bf1981:	5e                                              	pop    esi
  bf1982:	5d                                              	pop    ebp
  bf1983:	5b                                              	pop    ebx
  bf1984:	c3                                              	ret
  bf1985:	55                                              	push   ebp
  bf1986:	e8 a5 14 01 00                                  	call   0xc02e30
  bf198b:	83 c4 04                                        	add    esp,0x4
  bf198e:	84 c0                                           	test   al,al
  bf1990:	74 44                                           	je     0xbf19d6
  bf1992:	83 ff 02                                        	cmp    edi,0x2
  bf1995:	75 24                                           	jne    0xbf19bb
  bf1997:	8b 46 54                                        	mov    eax,DWORD PTR [esi+0x54]
  bf199a:	c1 e8 02                                        	shr    eax,0x2
  bf199d:	a8 01                                           	test   al,0x1
  bf199f:	74 35                                           	je     0xbf19d6
  bf19a1:	8b 4e 5c                                        	mov    ecx,DWORD PTR [esi+0x5c]
  bf19a4:	c1 e9 02                                        	shr    ecx,0x2
  bf19a7:	f6 c1 01                                        	test   cl,0x1
  bf19aa:	74 2a                                           	je     0xbf19d6
  bf19ac:	5f                                              	pop    edi
  bf19ad:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf19b0:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf19b7:	5e                                              	pop    esi
  bf19b8:	5d                                              	pop    ebp
  bf19b9:	5b                                              	pop    ebx
  bf19ba:	c3                                              	ret
  bf19bb:	83 ff 01                                        	cmp    edi,0x1
  bf19be:	75 16                                           	jne    0xbf19d6
  bf19c0:	8b 56 54                                        	mov    edx,DWORD PTR [esi+0x54]
  bf19c3:	c1 ea 02                                        	shr    edx,0x2
  bf19c6:	f6 c2 01                                        	test   dl,0x1
  bf19c9:	74 0b                                           	je     0xbf19d6
  bf19cb:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf19cf:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf19d6:	5f                                              	pop    edi
  bf19d7:	5e                                              	pop    esi
  bf19d8:	5d                                              	pop    ebp
  bf19d9:	5b                                              	pop    ebx
  bf19da:	c3                                              	ret
