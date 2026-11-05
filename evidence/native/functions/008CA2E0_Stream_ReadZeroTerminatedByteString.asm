# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

008ca2e0 <.text+0x4c92e0>:
  8ca2e0:	56                   	push   esi
  8ca2e1:	57                   	push   edi
  8ca2e2:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  8ca2e6:	8b 07                	mov    eax,DWORD PTR [edi]
  8ca2e8:	3b 47 04             	cmp    eax,DWORD PTR [edi+0x4]
  8ca2eb:	74 08                	je     0x8ca2f5
  8ca2ed:	c6 00 00             	mov    BYTE PTR [eax],0x0
  8ca2f0:	8b 07                	mov    eax,DWORD PTR [edi]
  8ca2f2:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  8ca2f5:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  8ca2f9:	8b 16                	mov    edx,DWORD PTR [esi]
  8ca2fb:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  8ca2fe:	6a 01                	push   0x1
  8ca300:	8d 44 24 14          	lea    eax,[esp+0x14]
  8ca304:	50                   	push   eax
  8ca305:	8b ce                	mov    ecx,esi
  8ca307:	ff d2                	call   edx
  8ca309:	83 f8 01             	cmp    eax,0x1
  8ca30c:	75 27                	jne    0x8ca335
  8ca30e:	8b ff                	mov    edi,edi
  8ca310:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  8ca314:	84 c0                	test   al,al
  8ca316:	74 1d                	je     0x8ca335
  8ca318:	50                   	push   eax
  8ca319:	8b cf                	mov    ecx,edi
  8ca31b:	e8 00 16 b4 ff       	call   0x40b920
  8ca320:	8b 06                	mov    eax,DWORD PTR [esi]
  8ca322:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  8ca325:	6a 01                	push   0x1
  8ca327:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  8ca32b:	51                   	push   ecx
  8ca32c:	8b ce                	mov    ecx,esi
  8ca32e:	ff d2                	call   edx
  8ca330:	83 f8 01             	cmp    eax,0x1
  8ca333:	74 db                	je     0x8ca310
  8ca335:	5f                   	pop    edi
  8ca336:	8b c6                	mov    eax,esi
  8ca338:	5e                   	pop    esi
  8ca339:	c3                   	ret
