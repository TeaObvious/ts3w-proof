# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0073d8d0, 0x0073d90b).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0073d8d0 <.text+0x33c8d0>:
  73d8d0:	e8 fb c2 22 00       	call   0x969bd0
  73d8d5:	85 c0                	test   eax,eax
  73d8d7:	74 2f                	je     0x73d908
  73d8d9:	8b c8                	mov    ecx,eax
  73d8db:	e8 10 47 7e 00       	call   0xf21ff0
  73d8e0:	85 c0                	test   eax,eax
  73d8e2:	74 24                	je     0x73d908
  73d8e4:	8b c8                	mov    ecx,eax
  73d8e6:	e8 f5 64 dd ff       	call   0x513de0
  73d8eb:	85 c0                	test   eax,eax
  73d8ed:	74 19                	je     0x73d908
  73d8ef:	8b 10                	mov    edx,DWORD PTR [eax]
  73d8f1:	8b c8                	mov    ecx,eax
  73d8f3:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  73d8f6:	68 89 dd 0f 11       	push   0x110fdd89
  73d8fb:	ff d0                	call   eax
  73d8fd:	85 c0                	test   eax,eax
  73d8ff:	74 07                	je     0x73d908
  73d901:	8b c8                	mov    ecx,eax
  73d903:	e9 e8 35 23 00       	jmp    0x970ef0
  73d908:	d9 ee                	fldz
  73d90a:	c3                   	ret
