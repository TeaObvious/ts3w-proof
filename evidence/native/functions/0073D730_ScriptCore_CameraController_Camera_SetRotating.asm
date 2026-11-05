# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0073d730, 0x0073d75e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0073d730 <.text+0x33c730>:
  73d730:	e8 9b c4 22 00       	call   0x969bd0
  73d735:	85 c0                	test   eax,eax
  73d737:	74 24                	je     0x73d75d
  73d739:	8b c8                	mov    ecx,eax
  73d73b:	e8 b0 48 7e 00       	call   0xf21ff0
  73d740:	85 c0                	test   eax,eax
  73d742:	74 19                	je     0x73d75d
  73d744:	8b c8                	mov    ecx,eax
  73d746:	e8 95 66 dd ff       	call   0x513de0
  73d74b:	85 c0                	test   eax,eax
  73d74d:	74 0e                	je     0x73d75d
  73d74f:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  73d753:	8b 10                	mov    edx,DWORD PTR [eax]
  73d755:	8b 52 44             	mov    edx,DWORD PTR [edx+0x44]
  73d758:	51                   	push   ecx
  73d759:	8b c8                	mov    ecx,eax
  73d75b:	ff d2                	call   edx
  73d75d:	c3                   	ret
