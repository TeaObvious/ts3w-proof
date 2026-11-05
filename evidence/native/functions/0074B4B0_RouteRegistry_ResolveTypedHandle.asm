# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074b4b0, 0x0074b50c); analyst name RouteRegistry_ResolveTypedHandle.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b4b0 <.text+0x34a4b0>:
  74b4b0:	57                   	push   edi
  74b4b1:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
  74b4b5:	8b c7                	mov    eax,edi
  74b4b7:	25 00 00 00 ff       	and    eax,0xff000000
  74b4bc:	3d 00 00 00 25       	cmp    eax,0x25000000
  74b4c1:	74 06                	je     0x74b4c9
  74b4c3:	33 c0                	xor    eax,eax
  74b4c5:	5f                   	pop    edi
  74b4c6:	c2 04 00             	ret    0x4
  74b4c9:	56                   	push   esi
  74b4ca:	8d 71 08             	lea    esi,[ecx+0x8]
  74b4cd:	68 94 51 00 01       	push   0x1005194
  74b4d2:	8b ce                	mov    ecx,esi
  74b4d4:	e8 27 67 d9 ff       	call   0x4e1c00
  74b4d9:	e8 b2 de 01 00       	call   0x769390
  74b4de:	8b 10                	mov    edx,DWORD PTR [eax]
  74b4e0:	8b c8                	mov    ecx,eax
  74b4e2:	8b 82 cc 00 00 00    	mov    eax,DWORD PTR [edx+0xcc]
  74b4e8:	57                   	push   edi
  74b4e9:	ff d0                	call   eax
  74b4eb:	85 c0                	test   eax,eax
  74b4ed:	8b ce                	mov    ecx,esi
  74b4ef:	74 0f                	je     0x74b500
  74b4f1:	8d 78 fc             	lea    edi,[eax-0x4]
  74b4f4:	e8 c7 67 d9 ff       	call   0x4e1cc0
  74b4f9:	5e                   	pop    esi
  74b4fa:	8b c7                	mov    eax,edi
  74b4fc:	5f                   	pop    edi
  74b4fd:	c2 04 00             	ret    0x4
  74b500:	e8 bb 67 d9 ff       	call   0x4e1cc0
  74b505:	5e                   	pop    esi
  74b506:	33 c0                	xor    eax,eax
  74b508:	5f                   	pop    edi
  74b509:	c2 04 00             	ret    0x4
