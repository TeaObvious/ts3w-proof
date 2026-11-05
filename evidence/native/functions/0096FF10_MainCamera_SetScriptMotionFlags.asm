# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0096ff10, 0x0096ff33).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

0096ff10 <.text+0x56ef10>:
  96ff10:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
  96ff15:	74 0d                	je     0x96ff24
  96ff17:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  96ff1b:	09 81 80 08 00 00    	or     DWORD PTR [ecx+0x880],eax
  96ff21:	c2 08 00             	ret    0x8
  96ff24:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  96ff28:	f7 d2                	not    edx
  96ff2a:	21 91 80 08 00 00    	and    DWORD PTR [ecx+0x880],edx
  96ff30:	c2 08 00             	ret    0x8
