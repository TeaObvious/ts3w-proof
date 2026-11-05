# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00911250 <.text+0x510250>:
  911250:	83 ec 08             	sub    esp,0x8
  911253:	53                   	push   ebx
  911254:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  911258:	8b 03                	mov    eax,DWORD PTR [ebx]
  91125a:	55                   	push   ebp
  91125b:	56                   	push   esi
  91125c:	8b f1                	mov    esi,ecx
  91125e:	33 d2                	xor    edx,edx
  911260:	57                   	push   edi
  911261:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  911264:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  911268:	f7 f7                	div    edi
  91126a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  91126d:	8b ea                	mov    ebp,edx
  91126f:	8b 0c a8             	mov    ecx,DWORD PTR [eax+ebp*4]
  911272:	85 c9                	test   ecx,ecx
  911274:	8d 14 a8             	lea    edx,[eax+ebp*4]
  911277:	74 20                	je     0x911299
  911279:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  911280:	8b 03                	mov    eax,DWORD PTR [ebx]
  911282:	3b 01                	cmp    eax,DWORD PTR [ecx]
  911284:	75 0c                	jne    0x911292
  911286:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  911289:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
  91128c:	0f 84 ad 00 00 00    	je     0x91133f
  911292:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
  911295:	85 c9                	test   ecx,ecx
  911297:	75 e7                	jne    0x911280
  911299:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  91129c:	6a 01                	push   0x1
  91129e:	51                   	push   ecx
  91129f:	57                   	push   edi
  9112a0:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  9112a4:	52                   	push   edx
  9112a5:	8d 4e 10             	lea    ecx,[esi+0x10]
  9112a8:	e8 13 fc bc ff       	call   0x4e0ec0
  9112ad:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  9112b0:	68 e7 00 00 00       	push   0xe7
  9112b5:	68 88 99 f9 00       	push   0xf99988
  9112ba:	6a 00                	push   0x0
  9112bc:	6a 00                	push   0x0
  9112be:	50                   	push   eax
  9112bf:	6a 18                	push   0x18
  9112c1:	e8 3a 32 bd ff       	call   0x4e4500
  9112c6:	8b f8                	mov    edi,eax
  9112c8:	83 c4 18             	add    esp,0x18
  9112cb:	85 ff                	test   edi,edi
  9112cd:	74 16                	je     0x9112e5
  9112cf:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  9112d1:	89 0f                	mov    DWORD PTR [edi],ecx
  9112d3:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  9112d6:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  9112d9:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  9112dc:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  9112df:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  9112e2:	89 4f 0c             	mov    DWORD PTR [edi+0xc],ecx
  9112e5:	c7 47 10 00 00 00 00 	mov    DWORD PTR [edi+0x10],0x0
  9112ec:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  9112f1:	74 16                	je     0x911309
  9112f3:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9112f7:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  9112fb:	33 d2                	xor    edx,edx
  9112fd:	f7 f1                	div    ecx
  9112ff:	51                   	push   ecx
  911300:	8b ce                	mov    ecx,esi
  911302:	8b ea                	mov    ebp,edx
  911304:	e8 b7 b3 16 00       	call   0xa7c6c0
  911309:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  91130c:	8d 0c ad 00 00 00 00 	lea    ecx,[ebp*4+0x0]
  911313:	8b 04 11             	mov    eax,DWORD PTR [ecx+edx*1]
  911316:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  911319:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  91131c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  911320:	89 3c 11             	mov    DWORD PTR [ecx+edx*1],edi
  911323:	83 46 0c 01          	add    DWORD PTR [esi+0xc],0x1
  911327:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  91132a:	89 38                	mov    DWORD PTR [eax],edi
  91132c:	5f                   	pop    edi
  91132d:	5e                   	pop    esi
  91132e:	03 d1                	add    edx,ecx
  911330:	5d                   	pop    ebp
  911331:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
  911335:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  911338:	5b                   	pop    ebx
  911339:	83 c4 08             	add    esp,0x8
  91133c:	c2 0c 00             	ret    0xc
  91133f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  911343:	5f                   	pop    edi
  911344:	5e                   	pop    esi
  911345:	5d                   	pop    ebp
  911346:	89 08                	mov    DWORD PTR [eax],ecx
  911348:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
  91134c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  91134f:	5b                   	pop    ebx
  911350:	83 c4 08             	add    esp,0x8
  911353:	c2 0c 00             	ret    0xc
