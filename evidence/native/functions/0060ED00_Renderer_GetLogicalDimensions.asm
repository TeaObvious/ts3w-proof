# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0060ed00, 0x0060ed1e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060ed00 <.text+0x20dd00>:
  60ed00:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
  60ed03:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  60ed07:	89 02                	mov    DWORD PTR [edx],eax
  60ed09:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
  60ed0c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  60ed10:	89 02                	mov    DWORD PTR [edx],eax
  60ed12:	8b 41 34             	mov    eax,DWORD PTR [ecx+0x34]
  60ed15:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  60ed19:	89 01                	mov    DWORD PTR [ecx],eax
  60ed1b:	c2 0c 00             	ret    0xc
