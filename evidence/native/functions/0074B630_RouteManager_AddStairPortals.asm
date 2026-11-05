# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b630,0x0074b656); analyst name RouteManager_AddStairPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b630 <.text+0x34a630>:
  74b630:	56                   	push   esi
  74b631:	33 f6                	xor    esi,esi
  74b633:	e8 b8 d6 0d 00       	call   0x828cf0
  74b638:	85 c0                	test   eax,eax
  74b63a:	74 13                	je     0x74b64f
  74b63c:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  74b640:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74b644:	51                   	push   ecx
  74b645:	52                   	push   edx
  74b646:	8b c8                	mov    ecx,eax
  74b648:	e8 53 3b 0e 00       	call   0x82f1a0
  74b64d:	8b f0                	mov    esi,eax
  74b64f:	85 f6                	test   esi,esi
  74b651:	0f 97 c0             	seta   al
  74b654:	5e                   	pop    esi
  74b655:	c3                   	ret
