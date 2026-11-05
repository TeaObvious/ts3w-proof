# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061b090 <.text+0x21a090>:
  61b090:	83 ec 14             	sub    esp,0x14
  61b093:	53                   	push   ebx
  61b094:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  61b098:	55                   	push   ebp
  61b099:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  61b09d:	56                   	push   esi
  61b09e:	57                   	push   edi
  61b09f:	8b f9                	mov    edi,ecx
  61b0a1:	c6 44 24 28 00       	mov    BYTE PTR [esp+0x28],0x0
  61b0a6:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  61b0aa:	50                   	push   eax
  61b0ab:	c6 44 24 30 00       	mov    BYTE PTR [esp+0x30],0x0
  61b0b0:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  61b0b4:	51                   	push   ecx
  61b0b5:	8d 54 24 18          	lea    edx,[esp+0x18]
  61b0b9:	52                   	push   edx
  61b0ba:	8d 44 24 24          	lea    eax,[esp+0x24]
  61b0be:	50                   	push   eax
  61b0bf:	8b cf                	mov    ecx,edi
  61b0c1:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  61b0c5:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  61b0c9:	e8 12 fc ff ff       	call   0x61ace0
  61b0ce:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  61b0d1:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  61b0d4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  61b0d8:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  61b0db:	74 1d                	je     0x61b0fa
  61b0dd:	8b 30                	mov    esi,DWORD PTR [eax]
  61b0df:	8b 06                	mov    eax,DWORD PTR [esi]
  61b0e1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  61b0e4:	8b ce                	mov    ecx,esi
  61b0e6:	ff d2                	call   edx
  61b0e8:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  61b0ec:	5f                   	pop    edi
  61b0ed:	89 30                	mov    DWORD PTR [eax],esi
  61b0ef:	5e                   	pop    esi
  61b0f0:	5d                   	pop    ebp
  61b0f1:	b0 01                	mov    al,0x1
  61b0f3:	5b                   	pop    ebx
  61b0f4:	83 c4 14             	add    esp,0x14
  61b0f7:	c2 0c 00             	ret    0xc
  61b0fa:	6a 00                	push   0x0
  61b0fc:	6a 00                	push   0x0
  61b0fe:	6a 00                	push   0x0
  61b100:	6a 00                	push   0x0
  61b102:	68 38 a6 fe 00       	push   0xfea638
  61b107:	6a 24                	push   0x24
  61b109:	e8 f2 93 ec ff       	call   0x4e4500
  61b10e:	83 c4 18             	add    esp,0x18
  61b111:	85 c0                	test   eax,eax
  61b113:	74 30                	je     0x61b145
  61b115:	8b c8                	mov    ecx,eax
  61b117:	e8 c4 f8 ff ff       	call   0x61a9e0
  61b11c:	8b f0                	mov    esi,eax
  61b11e:	85 f6                	test   esi,esi
  61b120:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  61b124:	74 1f                	je     0x61b145
  61b126:	8b 06                	mov    eax,DWORD PTR [esi]
  61b128:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  61b12b:	8b ce                	mov    ecx,esi
  61b12d:	ff d2                	call   edx
  61b12f:	53                   	push   ebx
  61b130:	55                   	push   ebp
  61b131:	8b ce                	mov    ecx,esi
  61b133:	e8 b8 f5 ff ff       	call   0x61a6f0
  61b138:	84 c0                	test   al,al
  61b13a:	8b 06                	mov    eax,DWORD PTR [esi]
  61b13c:	8b ce                	mov    ecx,esi
  61b13e:	75 11                	jne    0x61b151
  61b140:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  61b143:	ff d2                	call   edx
  61b145:	5f                   	pop    edi
  61b146:	5e                   	pop    esi
  61b147:	5d                   	pop    ebp
  61b148:	32 c0                	xor    al,al
  61b14a:	5b                   	pop    ebx
  61b14b:	83 c4 14             	add    esp,0x14
  61b14e:	c2 0c 00             	ret    0xc
  61b151:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  61b154:	ff d2                	call   edx
  61b156:	c6 44 24 2c 00       	mov    BYTE PTR [esp+0x2c],0x0
  61b15b:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  61b15f:	50                   	push   eax
  61b160:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  61b164:	51                   	push   ecx
  61b165:	8d 54 24 20          	lea    edx,[esp+0x20]
  61b169:	52                   	push   edx
  61b16a:	8b cf                	mov    ecx,edi
  61b16c:	e8 8f fd ff ff       	call   0x61af00
  61b171:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  61b175:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  61b179:	5f                   	pop    edi
  61b17a:	89 30                	mov    DWORD PTR [eax],esi
  61b17c:	5e                   	pop    esi
  61b17d:	5d                   	pop    ebp
  61b17e:	b0 01                	mov    al,0x1
  61b180:	5b                   	pop    ebx
  61b181:	83 c4 14             	add    esp,0x14
  61b184:	c2 0c 00             	ret    0xc
