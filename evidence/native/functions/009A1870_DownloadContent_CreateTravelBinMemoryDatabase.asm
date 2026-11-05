# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009a1870,0x009a1974); analyst name DownloadContent_CreateTravelBinMemoryDatabase.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009a1870 <.text+0x5a0870>:
  9a1870:	55                   	push   ebp
  9a1871:	e8 0a e6 b0 ff       	call   0x4afe80
  9a1876:	8b e8                	mov    ebp,eax
  9a1878:	85 ed                	test   ebp,ebp
  9a187a:	75 06                	jne    0x9a1882
  9a187c:	32 c0                	xor    al,al
  9a187e:	5d                   	pop    ebp
  9a187f:	c2 04 00             	ret    0x4
  9a1882:	57                   	push   edi
  9a1883:	6a 00                	push   0x0
  9a1885:	6a 00                	push   0x0
  9a1887:	6a 00                	push   0x0
  9a1889:	6a 00                	push   0x0
  9a188b:	68 68 bf 04 01       	push   0x104bf68
  9a1890:	68 a0 00 00 00       	push   0xa0
  9a1895:	e8 c6 2e b4 ff       	call   0x4e4760
  9a189a:	83 c4 18             	add    esp,0x18
  9a189d:	85 c0                	test   eax,eax
  9a189f:	74 12                	je     0x9a18b3
  9a18a1:	68 68 bf 04 01       	push   0x104bf68
  9a18a6:	6a 00                	push   0x0
  9a18a8:	8b c8                	mov    ecx,eax
  9a18aa:	e8 a1 9f d8 ff       	call   0x72b850
  9a18af:	8b f8                	mov    edi,eax
  9a18b1:	eb 02                	jmp    0x9a18b5
  9a18b3:	33 ff                	xor    edi,edi
  9a18b5:	53                   	push   ebx
  9a18b6:	56                   	push   esi
  9a18b7:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  9a18bb:	8b 1e                	mov    ebx,DWORD PTR [esi]
  9a18bd:	3b fb                	cmp    edi,ebx
  9a18bf:	74 1f                	je     0x9a18e0
  9a18c1:	85 ff                	test   edi,edi
  9a18c3:	74 0a                	je     0x9a18cf
  9a18c5:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  9a18c8:	8b 10                	mov    edx,DWORD PTR [eax]
  9a18ca:	8d 4f 04             	lea    ecx,[edi+0x4]
  9a18cd:	ff d2                	call   edx
  9a18cf:	85 db                	test   ebx,ebx
  9a18d1:	89 3e                	mov    DWORD PTR [esi],edi
  9a18d3:	74 0b                	je     0x9a18e0
  9a18d5:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  9a18d8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9a18db:	8d 4b 04             	lea    ecx,[ebx+0x4]
  9a18de:	ff d2                	call   edx
  9a18e0:	8b 0e                	mov    ecx,DWORD PTR [esi]
  9a18e2:	85 c9                	test   ecx,ecx
  9a18e4:	0f 84 81 00 00 00    	je     0x9a196b
  9a18ea:	8b 01                	mov    eax,DWORD PTR [ecx]
  9a18ec:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9a18ef:	ff d2                	call   edx
  9a18f1:	84 c0                	test   al,al
  9a18f3:	74 31                	je     0x9a1926
  9a18f5:	8b 0e                	mov    ecx,DWORD PTR [esi]
  9a18f7:	8b 01                	mov    eax,DWORD PTR [ecx]
  9a18f9:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  9a18fc:	6a 00                	push   0x0
  9a18fe:	6a 06                	push   0x6
  9a1900:	6a 03                	push   0x3
  9a1902:	ff d2                	call   edx
  9a1904:	84 c0                	test   al,al
  9a1906:	74 1e                	je     0x9a1926
  9a1908:	8b 06                	mov    eax,DWORD PTR [esi]
  9a190a:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  9a190d:	6a 00                	push   0x0
  9a190f:	50                   	push   eax
  9a1910:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  9a1913:	6a 01                	push   0x1
  9a1915:	8b cd                	mov    ecx,ebp
  9a1917:	ff d0                	call   eax
  9a1919:	84 c0                	test   al,al
  9a191b:	74 09                	je     0x9a1926
  9a191d:	5e                   	pop    esi
  9a191e:	5b                   	pop    ebx
  9a191f:	5f                   	pop    edi
  9a1920:	b0 01                	mov    al,0x1
  9a1922:	5d                   	pop    ebp
  9a1923:	c2 04 00             	ret    0x4
  9a1926:	8b 3e                	mov    edi,DWORD PTR [esi]
  9a1928:	85 ff                	test   edi,edi
  9a192a:	74 29                	je     0x9a1955
  9a192c:	e8 4f e5 b0 ff       	call   0x4afe80
  9a1931:	85 c0                	test   eax,eax
  9a1933:	74 20                	je     0x9a1955
  9a1935:	8b 10                	mov    edx,DWORD PTR [eax]
  9a1937:	6a 00                	push   0x0
  9a1939:	57                   	push   edi
  9a193a:	8b c8                	mov    ecx,eax
  9a193c:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  9a193f:	6a 00                	push   0x0
  9a1941:	ff d0                	call   eax
  9a1943:	8b 17                	mov    edx,DWORD PTR [edi]
  9a1945:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  9a1948:	8b cf                	mov    ecx,edi
  9a194a:	ff d0                	call   eax
  9a194c:	8b 17                	mov    edx,DWORD PTR [edi]
  9a194e:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9a1951:	8b cf                	mov    ecx,edi
  9a1953:	ff d0                	call   eax
  9a1955:	8b 06                	mov    eax,DWORD PTR [esi]
  9a1957:	85 c0                	test   eax,eax
  9a1959:	74 10                	je     0x9a196b
  9a195b:	8d 48 04             	lea    ecx,[eax+0x4]
  9a195e:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  9a1964:	8b 11                	mov    edx,DWORD PTR [ecx]
  9a1966:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9a1969:	ff d0                	call   eax
  9a196b:	5e                   	pop    esi
  9a196c:	5b                   	pop    ebx
  9a196d:	5f                   	pop    edi
  9a196e:	32 c0                	xor    al,al
  9a1970:	5d                   	pop    ebp
  9a1971:	c2 04 00             	ret    0x4
