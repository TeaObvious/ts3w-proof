# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c4e160 <.text+0x84d160>:
  c4e160:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  c4e164:	83 ec 08             	sub    esp,0x8
  c4e167:	53                   	push   ebx
  c4e168:	8b 18                	mov    ebx,DWORD PTR [eax]
  c4e16a:	55                   	push   ebp
  c4e16b:	56                   	push   esi
  c4e16c:	8b f1                	mov    esi,ecx
  c4e16e:	33 d2                	xor    edx,edx
  c4e170:	57                   	push   edi
  c4e171:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  c4e174:	8b c3                	mov    eax,ebx
  c4e176:	f7 f7                	div    edi
  c4e178:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c4e17b:	8b ea                	mov    ebp,edx
  c4e17d:	8d 14 a9             	lea    edx,[ecx+ebp*4]
  c4e180:	8b 0a                	mov    ecx,DWORD PTR [edx]
  c4e182:	85 c9                	test   ecx,ecx
  c4e184:	74 0f                	je     0xc4e195
  c4e186:	3b 19                	cmp    ebx,DWORD PTR [ecx]
  c4e188:	0f 84 a9 00 00 00    	je     0xc4e237
  c4e18e:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  c4e191:	85 c9                	test   ecx,ecx
  c4e193:	75 f1                	jne    0xc4e186
  c4e195:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c4e198:	6a 01                	push   0x1
  c4e19a:	52                   	push   edx
  c4e19b:	57                   	push   edi
  c4e19c:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  c4e1a0:	50                   	push   eax
  c4e1a1:	8d 4e 10             	lea    ecx,[esi+0x10]
  c4e1a4:	e8 17 2d 89 ff       	call   0x4e0ec0
  c4e1a9:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  c4e1ac:	68 e7 00 00 00       	push   0xe7
  c4e1b1:	68 88 99 f9 00       	push   0xf99988
  c4e1b6:	6a 00                	push   0x0
  c4e1b8:	6a 00                	push   0x0
  c4e1ba:	51                   	push   ecx
  c4e1bb:	6a 10                	push   0x10
  c4e1bd:	e8 3e 63 89 ff       	call   0x4e4500
  c4e1c2:	8b f8                	mov    edi,eax
  c4e1c4:	83 c4 18             	add    esp,0x18
  c4e1c7:	85 ff                	test   edi,edi
  c4e1c9:	74 14                	je     0xc4e1df
  c4e1cb:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  c4e1cf:	8b 10                	mov    edx,DWORD PTR [eax]
  c4e1d1:	89 17                	mov    DWORD PTR [edi],edx
  c4e1d3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  c4e1d6:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  c4e1d9:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  c4e1dc:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  c4e1df:	c7 47 0c 00 00 00 00 	mov    DWORD PTR [edi+0xc],0x0
  c4e1e6:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  c4e1eb:	74 14                	je     0xc4e201
  c4e1ed:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c4e1f1:	33 d2                	xor    edx,edx
  c4e1f3:	8b c3                	mov    eax,ebx
  c4e1f5:	f7 f1                	div    ecx
  c4e1f7:	51                   	push   ecx
  c4e1f8:	8b ce                	mov    ecx,esi
  c4e1fa:	8b ea                	mov    ebp,edx
  c4e1fc:	e8 bf 75 bc ff       	call   0x8157c0
  c4e201:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c4e204:	8d 0c ad 00 00 00 00 	lea    ecx,[ebp*4+0x0]
  c4e20b:	8b 14 01             	mov    edx,DWORD PTR [ecx+eax*1]
  c4e20e:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
  c4e211:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c4e214:	89 3c 01             	mov    DWORD PTR [ecx+eax*1],edi
  c4e217:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c4e21b:	83 46 0c 01          	add    DWORD PTR [esi+0xc],0x1
  c4e21f:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c4e222:	89 38                	mov    DWORD PTR [eax],edi
  c4e224:	5f                   	pop    edi
  c4e225:	5e                   	pop    esi
  c4e226:	03 d1                	add    edx,ecx
  c4e228:	5d                   	pop    ebp
  c4e229:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
  c4e22d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  c4e230:	5b                   	pop    ebx
  c4e231:	83 c4 08             	add    esp,0x8
  c4e234:	c2 0c 00             	ret    0xc
  c4e237:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c4e23b:	5f                   	pop    edi
  c4e23c:	5e                   	pop    esi
  c4e23d:	5d                   	pop    ebp
  c4e23e:	89 08                	mov    DWORD PTR [eax],ecx
  c4e240:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
  c4e244:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  c4e247:	5b                   	pop    ebx
  c4e248:	83 c4 08             	add    esp,0x8
  c4e24b:	c2 0c 00             	ret    0xc
