# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0081c550,0x0081c561); analyst name RoutePortalContext_SetPreferredObject.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0081c550 <.text+0x41b550>:
  81c550:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  81c554:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  81c558:	89 41 78             	mov    DWORD PTR [ecx+0x78],eax
  81c55b:	89 51 7c             	mov    DWORD PTR [ecx+0x7c],edx
  81c55e:	c2 08 00             	ret    0x8
