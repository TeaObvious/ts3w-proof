# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059b0a0..0059b1a6; JobManager_AddInternalDependency
  59b0a0:	83 ec 10             	sub    esp,0x10
  59b0a3:	53                   	push   ebx
  59b0a4:	55                   	push   ebp
  59b0a5:	56                   	push   esi
  59b0a6:	8b e9                	mov    ebp,ecx
  59b0a8:	57                   	push   edi
  59b0a9:	8d 4d 08             	lea    ecx,[ebp+0x8]
  59b0ac:	68 ac a7 fd 00       	push   0xfda7ac
  59b0b1:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  59b0b5:	e8 46 6b f4 ff       	call   0x4e1c00
  59b0ba:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  59b0be:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  59b0c1:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  59b0c5:	83 c0 ff             	add    eax,0xffffffff
  59b0c8:	83 f8 04             	cmp    eax,0x4
  59b0cb:	0f 87 c3 00 00 00    	ja     0x59b194
  59b0d1:	ff 24 85 a8 b1 59 00 	jmp    DWORD PTR [eax*4+0x59b1a8]
  59b0d8:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  59b0dc:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  59b0df:	83 f8 07             	cmp    eax,0x7
  59b0e2:	75 1d                	jne    0x59b101
  59b0e4:	6a 01                	push   0x1
  59b0e6:	53                   	push   ebx
  59b0e7:	8b cd                	mov    ecx,ebp
  59b0e9:	e8 12 fe ff ff       	call   0x59af00
  59b0ee:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  59b0f2:	e8 c9 6b f4 ff       	call   0x4e1cc0
  59b0f7:	5f                   	pop    edi
  59b0f8:	5e                   	pop    esi
  59b0f9:	5d                   	pop    ebp
  59b0fa:	5b                   	pop    ebx
  59b0fb:	83 c4 10             	add    esp,0x10
  59b0fe:	c2 08 00             	ret    0x8
  59b101:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  59b104:	83 f9 06             	cmp    ecx,0x6
  59b107:	74 7d                	je     0x59b186
  59b109:	8b cd                	mov    ecx,ebp
  59b10b:	e8 d0 ec ff ff       	call   0x599de0
  59b110:	8b f0                	mov    esi,eax
  59b112:	85 f6                	test   esi,esi
  59b114:	74 66                	je     0x59b17c
  59b116:	89 7e 10             	mov    DWORD PTR [esi+0x10],edi
  59b119:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  59b11c:	8b 53 3c             	mov    edx,DWORD PTR [ebx+0x3c]
  59b11f:	8d 43 38             	lea    eax,[ebx+0x38]
  59b122:	89 06                	mov    DWORD PTR [esi],eax
  59b124:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  59b127:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59b12a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59b12d:	c6 44 24 24 00       	mov    BYTE PTR [esp+0x24],0x0
  59b132:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  59b136:	51                   	push   ecx
  59b137:	89 30                	mov    DWORD PTR [eax],esi
  59b139:	56                   	push   esi
  59b13a:	51                   	push   ecx
  59b13b:	8b c4                	mov    eax,esp
  59b13d:	83 c7 40             	add    edi,0x40
  59b140:	89 38                	mov    DWORD PTR [eax],edi
  59b142:	8b 17                	mov    edx,DWORD PTR [edi]
  59b144:	51                   	push   ecx
  59b145:	8b c4                	mov    eax,esp
  59b147:	89 10                	mov    DWORD PTR [eax],edx
  59b149:	8d 44 24 20          	lea    eax,[esp+0x20]
  59b14d:	50                   	push   eax
  59b14e:	e8 2d f3 ff ff       	call   0x59a480
  59b153:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  59b157:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  59b15a:	8d 46 08             	lea    eax,[esi+0x8]
  59b15d:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59b160:	89 02                	mov    DWORD PTR [edx],eax
  59b162:	83 c4 14             	add    esp,0x14
  59b165:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  59b168:	89 08                	mov    DWORD PTR [eax],ecx
  59b16a:	3b 0f                	cmp    ecx,DWORD PTR [edi]
  59b16c:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  59b170:	75 14                	jne    0x59b186
  59b172:	53                   	push   ebx
  59b173:	8b cd                	mov    ecx,ebp
  59b175:	e8 b6 fc ff ff       	call   0x59ae30
  59b17a:	eb 0a                	jmp    0x59b186
  59b17c:	6a 01                	push   0x1
  59b17e:	53                   	push   ebx
  59b17f:	8b cd                	mov    ecx,ebp
  59b181:	e8 7a fd ff ff       	call   0x59af00
  59b186:	83 7c 24 14 04       	cmp    DWORD PTR [esp+0x14],0x4
  59b18b:	75 07                	jne    0x59b194
  59b18d:	c7 43 24 05 00 00 00 	mov    DWORD PTR [ebx+0x24],0x5
  59b194:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  59b198:	e8 23 6b f4 ff       	call   0x4e1cc0
  59b19d:	5f                   	pop    edi
  59b19e:	5e                   	pop    esi
  59b19f:	5d                   	pop    ebp
  59b1a0:	5b                   	pop    ebx
  59b1a1:	83 c4 10             	add    esp,0x10
  59b1a4:	c2 08 00             	ret    0x8
