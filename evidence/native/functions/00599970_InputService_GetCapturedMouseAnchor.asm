# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599970, 0x005999af).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599970 <.text+0x198970>:
  599970:	56                   	push   esi
  599971:	8b 35 c0 f2 1c 01    	mov    esi,DWORD PTR ds:0x11cf2c0
  599977:	85 f6                	test   esi,esi
  599979:	74 30                	je     0x5999ab
  59997b:	53                   	push   ebx
  59997c:	57                   	push   edi
  59997d:	8d 7e 18             	lea    edi,[esi+0x18]
  599980:	68 dc a6 fd 00       	push   0xfda6dc
  599985:	8b cf                	mov    ecx,edi
  599987:	e8 74 82 f4 ff       	call   0x4e1c00
  59998c:	d9 46 48             	fld    DWORD PTR [esi+0x48]
  59998f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  599993:	d9 18                	fstp   DWORD PTR [eax]
  599995:	8b cf                	mov    ecx,edi
  599997:	d9 46 4c             	fld    DWORD PTR [esi+0x4c]
  59999a:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  59999d:	8a 5e 60             	mov    bl,BYTE PTR [esi+0x60]
  5999a0:	e8 1b 83 f4 ff       	call   0x4e1cc0
  5999a5:	5f                   	pop    edi
  5999a6:	8a c3                	mov    al,bl
  5999a8:	5b                   	pop    ebx
  5999a9:	5e                   	pop    esi
  5999aa:	c3                   	ret
  5999ab:	32 c0                	xor    al,al
  5999ad:	5e                   	pop    esi
  5999ae:	c3                   	ret
