# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009422f0 <.text+0x5412f0>:
  9422f0:	c6 41 4c 00          	mov    BYTE PTR [ecx+0x4c],0x0
  9422f4:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  9422f7:	3b 41 24             	cmp    eax,DWORD PTR [ecx+0x24]
  9422fa:	0f 84 7c 00 00 00    	je     0x94237c
  942300:	53                   	push   ebx
  942301:	55                   	push   ebp
  942302:	8b 69 24             	mov    ebp,DWORD PTR [ecx+0x24]
  942305:	8b d8                	mov    ebx,eax
  942307:	3b dd                	cmp    ebx,ebp
  942309:	74 6a                	je     0x942375
  94230b:	56                   	push   esi
  94230c:	57                   	push   edi
  94230d:	8d 49 00             	lea    ecx,[ecx+0x0]
  942310:	8b 03                	mov    eax,DWORD PTR [ebx]
  942312:	a9 00 00 00 40       	test   eax,0x40000000
  942317:	75 4c                	jne    0x942365
  942319:	25 ff ff ff 3f       	and    eax,0x3fffffff
  94231e:	8b f8                	mov    edi,eax
  942320:	e8 db da f6 ff       	call   0x8afe00
  942325:	8b f0                	mov    esi,eax
  942327:	85 f6                	test   esi,esi
  942329:	74 3a                	je     0x942365
  94232b:	85 ff                	test   edi,edi
  94232d:	74 36                	je     0x942365
  94232f:	8b 16                	mov    edx,DWORD PTR [esi]
  942331:	8b 42 44             	mov    eax,DWORD PTR [edx+0x44]
  942334:	68 6b 53 47 03       	push   0x347536b
  942339:	8b ce                	mov    ecx,esi
  94233b:	ff d0                	call   eax
  94233d:	8b 16                	mov    edx,DWORD PTR [esi]
  94233f:	8b 42 4c             	mov    eax,DWORD PTR [edx+0x4c]
  942342:	57                   	push   edi
  942343:	68 85 53 47 03       	push   0x3475385
  942348:	8b ce                	mov    ecx,esi
  94234a:	ff d0                	call   eax
  94234c:	8b 16                	mov    edx,DWORD PTR [esi]
  94234e:	8b 42 4c             	mov    eax,DWORD PTR [edx+0x4c]
  942351:	6a 00                	push   0x0
  942353:	68 a0 53 47 03       	push   0x34753a0
  942358:	8b ce                	mov    ecx,esi
  94235a:	ff d0                	call   eax
  94235c:	8b 16                	mov    edx,DWORD PTR [esi]
  94235e:	8b 42 68             	mov    eax,DWORD PTR [edx+0x68]
  942361:	8b ce                	mov    ecx,esi
  942363:	ff d0                	call   eax
  942365:	83 c3 14             	add    ebx,0x14
  942368:	3b dd                	cmp    ebx,ebp
  94236a:	75 a4                	jne    0x942310
  94236c:	5f                   	pop    edi
  94236d:	5e                   	pop    esi
  94236e:	5d                   	pop    ebp
  94236f:	b0 01                	mov    al,0x1
  942371:	5b                   	pop    ebx
  942372:	c2 04 00             	ret    0x4
  942375:	5d                   	pop    ebp
  942376:	b0 01                	mov    al,0x1
  942378:	5b                   	pop    ebx
  942379:	c2 04 00             	ret    0x4
  94237c:	b0 01                	mov    al,0x1
  94237e:	c2 04 00             	ret    0x4
