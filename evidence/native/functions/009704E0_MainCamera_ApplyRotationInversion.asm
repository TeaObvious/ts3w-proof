# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009704e0, 0x0097051a).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

009704e0 <.text+0x56f4e0>:
  9704e0:	53                   	push   ebx
  9704e1:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  9704e5:	55                   	push   ebp
  9704e6:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  9704ea:	56                   	push   esi
  9704eb:	57                   	push   edi
  9704ec:	8d 71 40             	lea    esi,[ecx+0x40]
  9704ef:	bf 04 00 00 00       	mov    edi,0x4
  9704f4:	53                   	push   ebx
  9704f5:	6a 05                	push   0x5
  9704f7:	8b ce                	mov    ecx,esi
  9704f9:	e8 e2 19 ff ff       	call   0x961ee0
  9704fe:	55                   	push   ebp
  9704ff:	6a 04                	push   0x4
  970501:	8b ce                	mov    ecx,esi
  970503:	e8 d8 19 ff ff       	call   0x961ee0
  970508:	81 c6 00 01 00 00    	add    esi,0x100
  97050e:	83 ef 01             	sub    edi,0x1
  970511:	75 e1                	jne    0x9704f4
  970513:	5f                   	pop    edi
  970514:	5e                   	pop    esi
  970515:	5d                   	pop    ebp
  970516:	5b                   	pop    ebx
  970517:	c2 08 00             	ret    0x8
