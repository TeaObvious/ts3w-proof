# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946550, 0x009465da); analyst name FootprintComponent_SetSupplementalResource.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946550 <.text+0x545550>:
  946550:	51                   	push   ecx
  946551:	55                   	push   ebp
  946552:	56                   	push   esi
  946553:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  946557:	8b e9                	mov    ebp,ecx
  946559:	3b 75 2c             	cmp    esi,DWORD PTR [ebp+0x2c]
  94655c:	89 6c 24 08          	mov    DWORD PTR [esp+0x8],ebp
  946560:	74 1d                	je     0x94657f
  946562:	85 f6                	test   esi,esi
  946564:	74 08                	je     0x94656e
  946566:	8b 06                	mov    eax,DWORD PTR [esi]
  946568:	8b 10                	mov    edx,DWORD PTR [eax]
  94656a:	8b ce                	mov    ecx,esi
  94656c:	ff d2                	call   edx
  94656e:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  946571:	85 c9                	test   ecx,ecx
  946573:	74 07                	je     0x94657c
  946575:	8b 01                	mov    eax,DWORD PTR [ecx]
  946577:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  94657a:	ff d2                	call   edx
  94657c:	89 75 2c             	mov    DWORD PTR [ebp+0x2c],esi
  94657f:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  946582:	85 c9                	test   ecx,ecx
  946584:	74 46                	je     0x9465cc
  946586:	53                   	push   ebx
  946587:	57                   	push   edi
  946588:	e8 c3 c7 fe ff       	call   0x932d50
  94658d:	8b f8                	mov    edi,eax
  94658f:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  946592:	2b 37                	sub    esi,DWORD PTR [edi]
  946594:	8d 5d 48             	lea    ebx,[ebp+0x48]
  946597:	c1 fe 06             	sar    esi,0x6
  94659a:	56                   	push   esi
  94659b:	8b cb                	mov    ecx,ebx
  94659d:	e8 4e bc 2d 00       	call   0xc221f0
  9465a2:	33 c0                	xor    eax,eax
  9465a4:	85 f6                	test   esi,esi
  9465a6:	76 22                	jbe    0x9465ca
  9465a8:	33 c9                	xor    ecx,ecx
  9465aa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  9465b0:	8b 17                	mov    edx,DWORD PTR [edi]
  9465b2:	8b 54 0a 08          	mov    edx,DWORD PTR [edx+ecx*1+0x8]
  9465b6:	8b 2b                	mov    ebp,DWORD PTR [ebx]
  9465b8:	89 54 85 00          	mov    DWORD PTR [ebp+eax*4+0x0],edx
  9465bc:	83 c0 01             	add    eax,0x1
  9465bf:	83 c1 40             	add    ecx,0x40
  9465c2:	3b c6                	cmp    eax,esi
  9465c4:	72 ea                	jb     0x9465b0
  9465c6:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  9465ca:	5f                   	pop    edi
  9465cb:	5b                   	pop    ebx
  9465cc:	33 c0                	xor    eax,eax
  9465ce:	39 45 2c             	cmp    DWORD PTR [ebp+0x2c],eax
  9465d1:	5e                   	pop    esi
  9465d2:	0f 95 c0             	setne  al
  9465d5:	5d                   	pop    ebp
  9465d6:	59                   	pop    ecx
  9465d7:	c2 04 00             	ret    0x4
