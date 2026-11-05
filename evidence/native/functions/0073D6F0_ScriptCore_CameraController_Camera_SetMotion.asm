# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0073d6f0, 0x0073d723).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0073d6f0 <.text+0x33c6f0>:
  73d6f0:	e8 db c4 22 00       	call   0x969bd0
  73d6f5:	85 c0                	test   eax,eax
  73d6f7:	74 29                	je     0x73d722
  73d6f9:	8b c8                	mov    ecx,eax
  73d6fb:	e8 f0 48 7e 00       	call   0xf21ff0
  73d700:	85 c0                	test   eax,eax
  73d702:	74 1e                	je     0x73d722
  73d704:	8b c8                	mov    ecx,eax
  73d706:	e8 d5 66 dd ff       	call   0x513de0
  73d70b:	85 c0                	test   eax,eax
  73d70d:	74 13                	je     0x73d722
  73d70f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  73d713:	8b 10                	mov    edx,DWORD PTR [eax]
  73d715:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
  73d718:	51                   	push   ecx
  73d719:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  73d71d:	51                   	push   ecx
  73d71e:	8b c8                	mov    ecx,eax
  73d720:	ff d2                	call   edx
  73d722:	c3                   	ret
