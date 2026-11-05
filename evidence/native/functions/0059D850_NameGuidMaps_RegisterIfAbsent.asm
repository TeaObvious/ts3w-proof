# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059d850 <.text+0x19c850>:
  59d850:	56                   	push   esi
  59d851:	8b 35 f4 f3 1c 01    	mov    esi,DWORD PTR ds:0x11cf3f4
  59d857:	68 c4 c3 30 94       	push   0x9430c3c4
  59d85c:	8b ce                	mov    ecx,esi
  59d85e:	e8 7d 1f 00 00       	call   0x59f7e0
  59d863:	84 c0                	test   al,al
  59d865:	75 39                	jne    0x59d8a0
  59d867:	6a 00                	push   0x0
  59d869:	6a 00                	push   0x0
  59d86b:	6a 00                	push   0x0
  59d86d:	6a 00                	push   0x0
  59d86f:	68 e8 eb fd 00       	push   0xfdebe8
  59d874:	6a 20                	push   0x20
  59d876:	e8 85 6c f4 ff       	call   0x4e4500
  59d87b:	83 c4 18             	add    esp,0x18
  59d87e:	85 c0                	test   eax,eax
  59d880:	74 13                	je     0x59d895
  59d882:	8b c8                	mov    ecx,eax
  59d884:	e8 87 ff ff ff       	call   0x59d810
  59d889:	6a 00                	push   0x0
  59d88b:	50                   	push   eax
  59d88c:	8b ce                	mov    ecx,esi
  59d88e:	e8 6d 24 00 00       	call   0x59fd00
  59d893:	5e                   	pop    esi
  59d894:	c3                   	ret
  59d895:	33 c0                	xor    eax,eax
  59d897:	50                   	push   eax
  59d898:	50                   	push   eax
  59d899:	8b ce                	mov    ecx,esi
  59d89b:	e8 60 24 00 00       	call   0x59fd00
  59d8a0:	5e                   	pop    esi
  59d8a1:	c3                   	ret
