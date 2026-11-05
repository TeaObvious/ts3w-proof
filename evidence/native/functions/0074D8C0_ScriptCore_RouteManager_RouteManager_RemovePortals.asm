# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074d8c0,0x0074d930); analyst name RouteManager_RemovePortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074d8c0 <.text+0x34c8c0>:
  74d8c0:	53                   	push   ebx
  74d8c1:	56                   	push   esi
  74d8c2:	57                   	push   edi
  74d8c3:	e8 28 b4 0d 00       	call   0x828cf0
  74d8c8:	85 c0                	test   eax,eax
  74d8ca:	74 0b                	je     0x74d8d7
  74d8cc:	8b c8                	mov    ecx,eax
  74d8ce:	e8 ed bc 0d 00       	call   0x8295c0
  74d8d3:	8b d8                	mov    ebx,eax
  74d8d5:	eb 02                	jmp    0x74d8d9
  74d8d7:	33 db                	xor    ebx,ebx
  74d8d9:	e8 92 9c 1e 00       	call   0x937570
  74d8de:	85 c0                	test   eax,eax
  74d8e0:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  74d8e4:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  74d8e8:	74 28                	je     0x74d912
  74d8ea:	56                   	push   esi
  74d8eb:	57                   	push   edi
  74d8ec:	8b c8                	mov    ecx,eax
  74d8ee:	e8 8d a6 1e 00       	call   0x937f80
  74d8f3:	85 c0                	test   eax,eax
  74d8f5:	74 1b                	je     0x74d912
  74d8f7:	8b c8                	mov    ecx,eax
  74d8f9:	e8 32 18 f4 ff       	call   0x68f130
  74d8fe:	85 c0                	test   eax,eax
  74d900:	74 10                	je     0x74d912
  74d902:	8b 10                	mov    edx,DWORD PTR [eax]
  74d904:	8b c8                	mov    ecx,eax
  74d906:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  74d909:	68 0e 6b 56 90       	push   0x90566b0e
  74d90e:	ff d0                	call   eax
  74d910:	eb 02                	jmp    0x74d914
  74d912:	33 c0                	xor    eax,eax
  74d914:	85 db                	test   ebx,ebx
  74d916:	74 12                	je     0x74d92a
  74d918:	85 c0                	test   eax,eax
  74d91a:	74 0e                	je     0x74d92a
  74d91c:	56                   	push   esi
  74d91d:	57                   	push   edi
  74d91e:	50                   	push   eax
  74d91f:	8b cb                	mov    ecx,ebx
  74d921:	e8 da c8 ee ff       	call   0x63a200
  74d926:	5f                   	pop    edi
  74d927:	5e                   	pop    esi
  74d928:	5b                   	pop    ebx
  74d929:	c3                   	ret
  74d92a:	5f                   	pop    edi
  74d92b:	5e                   	pop    esi
  74d92c:	32 c0                	xor    al,al
  74d92e:	5b                   	pop    ebx
  74d92f:	c3                   	ret
