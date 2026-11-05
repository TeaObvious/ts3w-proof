# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bb360 <.text+0x2ba360>:
  6bb360:	53                   	push   ebx
  6bb361:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  6bb365:	57                   	push   edi
  6bb366:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  6bb36a:	3b fb                	cmp    edi,ebx
  6bb36c:	74 65                	je     0x6bb3d3
  6bb36e:	8b cb                	mov    ecx,ebx
  6bb370:	2b cf                	sub    ecx,edi
  6bb372:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  6bb377:	f7 e9                	imul   ecx
  6bb379:	c1 fa 03             	sar    edx,0x3
  6bb37c:	56                   	push   esi
  6bb37d:	8b f2                	mov    esi,edx
  6bb37f:	c1 ee 1f             	shr    esi,0x1f
  6bb382:	03 f2                	add    esi,edx
  6bb384:	8b c6                	mov    eax,esi
  6bb386:	33 c9                	xor    ecx,ecx
  6bb388:	85 c0                	test   eax,eax
  6bb38a:	74 0d                	je     0x6bb399
  6bb38c:	8d 64 24 00          	lea    esp,[esp+0x0]
  6bb390:	d1 f8                	sar    eax,1
  6bb392:	83 c1 01             	add    ecx,0x1
  6bb395:	85 c0                	test   eax,eax
  6bb397:	75 f7                	jne    0x6bb390
  6bb399:	8d 44 09 fe          	lea    eax,[ecx+ecx*1-0x2]
  6bb39d:	50                   	push   eax
  6bb39e:	53                   	push   ebx
  6bb39f:	57                   	push   edi
  6bb3a0:	e8 cb fa ff ff       	call   0x6bae70
  6bb3a5:	83 c4 0c             	add    esp,0xc
  6bb3a8:	83 fe 1c             	cmp    esi,0x1c
  6bb3ab:	7e 1b                	jle    0x6bb3c8
  6bb3ad:	8d b7 40 05 00 00    	lea    esi,[edi+0x540]
  6bb3b3:	56                   	push   esi
  6bb3b4:	57                   	push   edi
  6bb3b5:	e8 86 d5 ff ff       	call   0x6b8940
  6bb3ba:	53                   	push   ebx
  6bb3bb:	56                   	push   esi
  6bb3bc:	e8 3f d6 ff ff       	call   0x6b8a00
  6bb3c1:	83 c4 10             	add    esp,0x10
  6bb3c4:	5e                   	pop    esi
  6bb3c5:	5f                   	pop    edi
  6bb3c6:	5b                   	pop    ebx
  6bb3c7:	c3                   	ret
  6bb3c8:	53                   	push   ebx
  6bb3c9:	57                   	push   edi
  6bb3ca:	e8 71 d5 ff ff       	call   0x6b8940
  6bb3cf:	83 c4 08             	add    esp,0x8
  6bb3d2:	5e                   	pop    esi
  6bb3d3:	5f                   	pop    edi
  6bb3d4:	5b                   	pop    ebx
  6bb3d5:	c3                   	ret
