# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942af0 <.text+0x541af0>:
  942af0:	56                   	push   esi
  942af1:	57                   	push   edi
  942af2:	8b f9                	mov    edi,ecx
  942af4:	8d 77 20             	lea    esi,[edi+0x20]
  942af7:	c7 07 28 46 04 01    	mov    DWORD PTR [edi],0x1044628
  942afd:	8b 06                	mov    eax,DWORD PTR [esi]
  942aff:	3b 46 04             	cmp    eax,DWORD PTR [esi+0x4]
  942b02:	74 1b                	je     0x942b1f
  942b04:	8b 0e                	mov    ecx,DWORD PTR [esi]
  942b06:	8b 11                	mov    edx,DWORD PTR [ecx]
  942b08:	6a 01                	push   0x1
  942b0a:	81 e2 ff ff ff 3f    	and    edx,0x3fffffff
  942b10:	52                   	push   edx
  942b11:	8b cf                	mov    ecx,edi
  942b13:	e8 e8 fe ff ff       	call   0x942a00
  942b18:	8b 06                	mov    eax,DWORD PTR [esi]
  942b1a:	3b 46 04             	cmp    eax,DWORD PTR [esi+0x4]
  942b1d:	75 e5                	jne    0x942b04
  942b1f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  942b22:	8b 16                	mov    edx,DWORD PTR [esi]
  942b24:	51                   	push   ecx
  942b25:	52                   	push   edx
  942b26:	8b ce                	mov    ecx,esi
  942b28:	e8 43 f9 ff ff       	call   0x942470
  942b2d:	8b 06                	mov    eax,DWORD PTR [esi]
  942b2f:	85 c0                	test   eax,eax
  942b31:	74 0e                	je     0x942b41
  942b33:	3b 46 10             	cmp    eax,DWORD PTR [esi+0x10]
  942b36:	74 09                	je     0x942b41
  942b38:	50                   	push   eax
  942b39:	e8 a2 19 ba ff       	call   0x4e44e0
  942b3e:	83 c4 04             	add    esp,0x4
  942b41:	c7 07 78 42 04 01    	mov    DWORD PTR [edi],0x1044278
  942b47:	5f                   	pop    edi
  942b48:	5e                   	pop    esi
  942b49:	c3                   	ret
