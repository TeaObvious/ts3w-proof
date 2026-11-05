# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b458a0 <.text+0x7448a0>:
  b458a0:	56                   	push   esi
  b458a1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  b458a5:	d9 46 14             	fld    DWORD PTR [esi+0x14]
  b458a8:	51                   	push   ecx
  b458a9:	d9 1c 24             	fstp   DWORD PTR [esp]
  b458ac:	e8 4f 64 fb ff       	call   0xafbd00
  b458b1:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  b458b4:	8b 06                	mov    eax,DWORD PTR [esi]
  b458b6:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b458bc:	83 c4 04             	add    esp,0x4
  b458bf:	83 c0 18             	add    eax,0x18
  b458c2:	50                   	push   eax
  b458c3:	e8 e8 92 14 00       	call   0xc8ebb0
  b458c8:	85 c0                	test   eax,eax
  b458ca:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  b458cd:	75 04                	jne    0xb458d3
  b458cf:	32 c0                	xor    al,al
  b458d1:	5e                   	pop    esi
  b458d2:	c3                   	ret
  b458d3:	80 be 81 00 00 00 00 	cmp    BYTE PTR [esi+0x81],0x0
  b458da:	57                   	push   edi
  b458db:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  b458df:	75 29                	jne    0xb4590a
  b458e1:	50                   	push   eax
  b458e2:	e8 a9 67 fb ff       	call   0xafc090
  b458e7:	83 c4 04             	add    esp,0x4
  b458ea:	84 c0                	test   al,al
  b458ec:	74 1c                	je     0xb4590a
  b458ee:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b458f1:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  b458f4:	57                   	push   edi
  b458f5:	8d 46 08             	lea    eax,[esi+0x8]
  b458f8:	50                   	push   eax
  b458f9:	51                   	push   ecx
  b458fa:	52                   	push   edx
  b458fb:	e8 f0 59 ff ff       	call   0xb3b2f0
  b45900:	83 c4 10             	add    esp,0x10
  b45903:	84 c0                	test   al,al
  b45905:	75 03                	jne    0xb4590a
  b45907:	5f                   	pop    edi
  b45908:	5e                   	pop    esi
  b45909:	c3                   	ret
  b4590a:	57                   	push   edi
  b4590b:	56                   	push   esi
  b4590c:	e8 ff fa ff ff       	call   0xb45410
  b45911:	83 c4 08             	add    esp,0x8
  b45914:	84 c0                	test   al,al
  b45916:	74 0a                	je     0xb45922
  b45918:	57                   	push   edi
  b45919:	56                   	push   esi
  b4591a:	e8 e1 df ff ff       	call   0xb43900
  b4591f:	83 c4 08             	add    esp,0x8
  b45922:	5f                   	pop    edi
  b45923:	5e                   	pop    esi
  b45924:	c3                   	ret
