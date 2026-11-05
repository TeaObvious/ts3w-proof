# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946f30, 0x00946fe6); analyst name FootprintPolygon_AppendRelativeTransformCopies.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946f30 <.text+0x545f30>:
  946f30:	56                   	push   esi
  946f31:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  946f35:	8b 0e                	mov    ecx,DWORD PTR [esi]
  946f37:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  946f3a:	3b c8                	cmp    ecx,eax
  946f3c:	75 39                	jne    0x946f77
  946f3e:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  946f42:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946f45:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946f48:	73 1e                	jae    0x946f68
  946f4a:	85 c0                	test   eax,eax
  946f4c:	8d 50 40             	lea    edx,[eax+0x40]
  946f4f:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  946f52:	0f 84 8a 00 00 00    	je     0x946fe2
  946f58:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  946f5c:	51                   	push   ecx
  946f5d:	8b c8                	mov    ecx,eax
  946f5f:	e8 4c 48 ee ff       	call   0x82b7b0
  946f64:	5e                   	pop    esi
  946f65:	c2 0c 00             	ret    0xc
  946f68:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  946f6c:	52                   	push   edx
  946f6d:	50                   	push   eax
  946f6e:	e8 ad 82 ee ff       	call   0x82f220
  946f73:	5e                   	pop    esi
  946f74:	c2 0c 00             	ret    0xc
  946f77:	53                   	push   ebx
  946f78:	55                   	push   ebp
  946f79:	2b c1                	sub    eax,ecx
  946f7b:	57                   	push   edi
  946f7c:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  946f80:	c1 f8 06             	sar    eax,0x6
  946f83:	50                   	push   eax
  946f84:	8b cf                	mov    ecx,edi
  946f86:	e8 35 f5 ff ff       	call   0x9464c0
  946f8b:	8b 1e                	mov    ebx,DWORD PTR [esi]
  946f8d:	8b 6e 04             	mov    ebp,DWORD PTR [esi+0x4]
  946f90:	3b dd                	cmp    ebx,ebp
  946f92:	74 4b                	je     0x946fdf
  946f94:	8b cf                	mov    ecx,edi
  946f96:	e8 15 ff ff ff       	call   0x946eb0
  946f9b:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  946f9e:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  946fa2:	83 ee 40             	sub    esi,0x40
  946fa5:	50                   	push   eax
  946fa6:	8b ce                	mov    ecx,esi
  946fa8:	e8 73 48 ee ff       	call   0x82b820
  946fad:	53                   	push   ebx
  946fae:	8b ce                	mov    ecx,esi
  946fb0:	e8 db bf fe ff       	call   0x932f90
  946fb5:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  946fb8:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  946fbb:	73 12                	jae    0x946fcf
  946fbd:	85 c9                	test   ecx,ecx
  946fbf:	8d 51 40             	lea    edx,[ecx+0x40]
  946fc2:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  946fc5:	74 11                	je     0x946fd8
  946fc7:	56                   	push   esi
  946fc8:	e8 e3 47 ee ff       	call   0x82b7b0
  946fcd:	eb 09                	jmp    0x946fd8
  946fcf:	56                   	push   esi
  946fd0:	51                   	push   ecx
  946fd1:	8b cf                	mov    ecx,edi
  946fd3:	e8 48 82 ee ff       	call   0x82f220
  946fd8:	83 c3 40             	add    ebx,0x40
  946fdb:	3b dd                	cmp    ebx,ebp
  946fdd:	75 b5                	jne    0x946f94
  946fdf:	5f                   	pop    edi
  946fe0:	5d                   	pop    ebp
  946fe1:	5b                   	pop    ebx
  946fe2:	5e                   	pop    esi
  946fe3:	c2 0c 00             	ret    0xc
