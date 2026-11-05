# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0057aa50, 0x0057aa5e); analyst name AnimationClipResource_GetFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0057aa50 <.text+0x179a50>:
  57aa50:	8b 41 4c             	mov    eax,DWORD PTR [ecx+0x4c]
  57aa53:	85 c0                	test   eax,eax
  57aa55:	74 04                	je     0x57aa5b
  57aa57:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
  57aa5a:	c3                   	ret
  57aa5b:	33 c0                	xor    eax,eax
  57aa5d:	c3                   	ret
