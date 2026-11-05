# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068f080 <.text+0x28e080>:
  68f080:	56                   	push   esi
  68f081:	8b f1                	mov    esi,ecx
  68f083:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  68f086:	85 c0                	test   eax,eax
  68f088:	57                   	push   edi
  68f089:	74 17                	je     0x68f0a2
  68f08b:	50                   	push   eax
  68f08c:	e8 4f 54 e5 ff       	call   0x4e44e0
  68f091:	83 c4 04             	add    esp,0x4
  68f094:	c7 46 50 00 00 00 00 	mov    DWORD PTR [esi+0x50],0x0
  68f09b:	c7 46 54 00 00 00 00 	mov    DWORD PTR [esi+0x54],0x0
  68f0a2:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  68f0a6:	85 ff                	test   edi,edi
  68f0a8:	74 39                	je     0x68f0e3
  68f0aa:	33 c9                	xor    ecx,ecx
  68f0ac:	8b c7                	mov    eax,edi
  68f0ae:	ba 14 00 00 00       	mov    edx,0x14
  68f0b3:	f7 e2                	mul    edx
  68f0b5:	6a 00                	push   0x0
  68f0b7:	0f 90 c1             	seto   cl
  68f0ba:	6a 00                	push   0x0
  68f0bc:	6a 00                	push   0x0
  68f0be:	6a 00                	push   0x0
  68f0c0:	68 f4 31 ff 00       	push   0xff31f4
  68f0c5:	f7 d9                	neg    ecx
  68f0c7:	0b c8                	or     ecx,eax
  68f0c9:	51                   	push   ecx
  68f0ca:	e8 31 54 e5 ff       	call   0x4e4500
  68f0cf:	83 c4 18             	add    esp,0x18
  68f0d2:	85 c0                	test   eax,eax
  68f0d4:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  68f0d7:	75 07                	jne    0x68f0e0
  68f0d9:	5f                   	pop    edi
  68f0da:	32 c0                	xor    al,al
  68f0dc:	5e                   	pop    esi
  68f0dd:	c2 04 00             	ret    0x4
  68f0e0:	89 7e 54             	mov    DWORD PTR [esi+0x54],edi
  68f0e3:	5f                   	pop    edi
  68f0e4:	b0 01                	mov    al,0x1
  68f0e6:	5e                   	pop    esi
  68f0e7:	c2 04 00             	ret    0x4
