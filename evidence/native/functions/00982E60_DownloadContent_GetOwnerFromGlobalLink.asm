# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00982e60,0x00982e75); analyst name DownloadContent_GetOwnerFromGlobalLink.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00982e60 <.text+0x581e60>:
  982e60:	a1 f8 a4 1e 01       	mov    eax,ds:0x11ea4f8
  982e65:	85 c0                	test   eax,eax
  982e67:	74 09                	je     0x982e72
  982e69:	83 c0 d0             	add    eax,0xffffffd0
  982e6c:	74 04                	je     0x982e72
  982e6e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  982e71:	c3                   	ret
  982e72:	33 c0                	xor    eax,eax
  982e74:	c3                   	ret
