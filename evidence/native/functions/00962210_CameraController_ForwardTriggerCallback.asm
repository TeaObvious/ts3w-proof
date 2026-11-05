# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962210, 0x00962226).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00962210 <.text+0x561210>:
  962210:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  962214:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  962218:	8b 01                	mov    eax,DWORD PTR [ecx]
  96221a:	8b 40 5c             	mov    eax,DWORD PTR [eax+0x5c]
  96221d:	52                   	push   edx
  96221e:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  962222:	52                   	push   edx
  962223:	ff d0                	call   eax
  962225:	c3                   	ret
