# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0079a6d0,0x0079a6ff); analyst name ShaderDefinition_DrawSelectedTechnique.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a6d0 <.text+0x3996d0>:
  79a6d0:	56                   	push   esi
  79a6d1:	8b f1                	mov    esi,ecx
  79a6d3:	e8 38 42 e7 ff       	call   0x60e910
  79a6d8:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  79a6dc:	75 0a                	jne    0x79a6e8
  79a6de:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79a6e1:	85 c9                	test   ecx,ecx
  79a6e3:	74 16                	je     0x79a6fb
  79a6e5:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  79a6e8:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  79a6ec:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  79a6f0:	51                   	push   ecx
  79a6f1:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  79a6f4:	52                   	push   edx
  79a6f5:	50                   	push   eax
  79a6f6:	e8 b5 68 00 00       	call   0x7a0fb0
  79a6fb:	5e                   	pop    esi
  79a6fc:	c2 08 00             	ret    0x8
