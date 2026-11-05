# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006caec0 <.text+0x2c9ec0>:
  6caec0:	56                   	push   esi
  6caec1:	8b f1                	mov    esi,ecx
  6caec3:	83 7e 38 00          	cmp    DWORD PTR [esi+0x38],0x0
  6caec7:	75 54                	jne    0x6caf1d
  6caec9:	6a 00                	push   0x0
  6caecb:	6a 00                	push   0x0
  6caecd:	6a 00                	push   0x0
  6caecf:	6a 00                	push   0x0
  6caed1:	68 18 6b ff 00       	push   0xff6b18
  6caed6:	6a 78                	push   0x78
  6caed8:	e8 23 96 e1 ff       	call   0x4e4500
  6caedd:	83 c4 18             	add    esp,0x18
  6caee0:	85 c0                	test   eax,eax
  6caee2:	74 09                	je     0x6caeed
  6caee4:	8b c8                	mov    ecx,eax
  6caee6:	e8 35 f3 ff ff       	call   0x6ca220
  6caeeb:	eb 02                	jmp    0x6caeef
  6caeed:	33 c0                	xor    eax,eax
  6caeef:	85 c0                	test   eax,eax
  6caef1:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  6caef4:	74 21                	je     0x6caf17
  6caef6:	8b c8                	mov    ecx,eax
  6caef8:	e8 13 6d 7f 00       	call   0xec1c10
  6caefd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  6caf01:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  6caf04:	50                   	push   eax
  6caf05:	56                   	push   esi
  6caf06:	e8 95 fe ff ff       	call   0x6cada0
  6caf0b:	84 c0                	test   al,al
  6caf0d:	75 0e                	jne    0x6caf1d
  6caf0f:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  6caf12:	e8 79 50 0d 00       	call   0x79ff90
  6caf17:	32 c0                	xor    al,al
  6caf19:	5e                   	pop    esi
  6caf1a:	c2 08 00             	ret    0x8
  6caf1d:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
  6caf20:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  6caf24:	89 0a                	mov    DWORD PTR [edx],ecx
  6caf26:	8b 01                	mov    eax,DWORD PTR [ecx]
  6caf28:	8b 10                	mov    edx,DWORD PTR [eax]
  6caf2a:	ff d2                	call   edx
  6caf2c:	b0 01                	mov    al,0x1
  6caf2e:	5e                   	pop    esi
  6caf2f:	c2 08 00             	ret    0x8
