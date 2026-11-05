# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937610, 0x0093766f); analyst name ObjectRegistry_GetDescriptorForMask.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937610 <.text+0x536610>:
  937610:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  937614:	85 c0                	test   eax,eax
  937616:	74 3b                	je     0x937653
  937618:	56                   	push   esi
  937619:	0f b7 f0             	movzx  esi,ax
  93761c:	85 f6                	test   esi,esi
  93761e:	ba 01 00 00 00       	mov    edx,0x1
  937623:	5e                   	pop    esi
  937624:	75 08                	jne    0x93762e
  937626:	ba 11 00 00 00       	mov    edx,0x11
  93762b:	c1 e8 10             	shr    eax,0x10
  93762e:	84 c0                	test   al,al
  937630:	75 06                	jne    0x937638
  937632:	83 c2 08             	add    edx,0x8
  937635:	c1 e8 08             	shr    eax,0x8
  937638:	a8 0f                	test   al,0xf
  93763a:	75 06                	jne    0x937642
  93763c:	83 c2 04             	add    edx,0x4
  93763f:	c1 e8 04             	shr    eax,0x4
  937642:	a8 03                	test   al,0x3
  937644:	75 06                	jne    0x93764c
  937646:	83 c2 02             	add    edx,0x2
  937649:	c1 e8 02             	shr    eax,0x2
  93764c:	83 e0 01             	and    eax,0x1
  93764f:	2b d0                	sub    edx,eax
  937651:	eb 05                	jmp    0x937658
  937653:	ba 20 00 00 00       	mov    edx,0x20
  937658:	3b 91 c8 11 00 00    	cmp    edx,DWORD PTR [ecx+0x11c8]
  93765e:	7d 0a                	jge    0x93766a
  937660:	8b 84 91 44 10 00 00 	mov    eax,DWORD PTR [ecx+edx*4+0x1044]
  937667:	c2 04 00             	ret    0x4
  93766a:	33 c0                	xor    eax,eax
  93766c:	c2 04 00             	ret    0x4
