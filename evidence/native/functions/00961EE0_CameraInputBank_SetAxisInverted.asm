# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00961ee0, 0x00961f11).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00961ee0 <.text+0x560ee0>:
  961ee0:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
  961ee5:	74 15                	je     0x961efc
  961ee7:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  961eeb:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  961ef2:	00
  961ef3:	f3 0f 11 44 81 1c    	movss  DWORD PTR [ecx+eax*4+0x1c],xmm0
  961ef9:	c2 08 00             	ret    0x8
  961efc:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  961f00:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  961f07:	00
  961f08:	f3 0f 11 44 91 1c    	movss  DWORD PTR [ecx+edx*4+0x1c],xmm0
  961f0e:	c2 08 00             	ret    0x8
