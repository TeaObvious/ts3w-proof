# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0095a610, 0x0095a632); analyst name TreeComponent_GetEntryCount.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a610 <.text+0x559610>:
  95a610:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  95a613:	85 c0                	test   eax,eax
  95a615:	74 18                	je     0x95a62f
  95a617:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  95a61a:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  95a61d:	b8 67 66 66 66       	mov    eax,0x66666667
  95a622:	f7 e9                	imul   ecx
  95a624:	c1 fa 05             	sar    edx,0x5
  95a627:	8b c2                	mov    eax,edx
  95a629:	c1 e8 1f             	shr    eax,0x1f
  95a62c:	03 c2                	add    eax,edx
  95a62e:	c3                   	ret
  95a62f:	33 c0                	xor    eax,eax
  95a631:	c3                   	ret
