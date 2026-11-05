# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c8b2c0, 0x00c8b2ef); analyst name ObjectRegistry_RegisterGameplayComponents.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c8b2c0 <.text+0x88a2c0>:
  c8b2c0:	56                   	push   esi
  c8b2c1:	e8 6a 77 ca ff       	call   0x932a30
  c8b2c6:	84 c0                	test   al,al
  c8b2c8:	74 21                	je     0xc8b2eb
  c8b2ca:	e8 a1 c2 ca ff       	call   0x937570
  c8b2cf:	8b f0                	mov    esi,eax
  c8b2d1:	85 f6                	test   esi,esi
  c8b2d3:	74 16                	je     0xc8b2eb
  c8b2d5:	e8 c6 df ff ff       	call   0xc892a0
  c8b2da:	50                   	push   eax
  c8b2db:	8b ce                	mov    ecx,esi
  c8b2dd:	e8 4e c1 ca ff       	call   0x937430
  c8b2e2:	a3 08 df 1e 01       	mov    ds:0x11edf08,eax
  c8b2e7:	b0 01                	mov    al,0x1
  c8b2e9:	5e                   	pop    esi
  c8b2ea:	c3                   	ret
  c8b2eb:	32 c0                	xor    al,al
  c8b2ed:	5e                   	pop    esi
  c8b2ee:	c3                   	ret
