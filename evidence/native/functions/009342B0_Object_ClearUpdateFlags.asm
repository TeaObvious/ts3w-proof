# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009342b0, 0x009342c5); analyst name Object_ClearUpdateFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009342b0 <.text+0x5332b0>:
  9342b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9342b4:	8b 51 28             	mov    edx,DWORD PTR [ecx+0x28]
  9342b7:	f7 d0                	not    eax
  9342b9:	23 c2                	and    eax,edx
  9342bb:	3b c2                	cmp    eax,edx
  9342bd:	74 03                	je     0x9342c2
  9342bf:	89 41 28             	mov    DWORD PTR [ecx+0x28],eax
  9342c2:	c2 04 00             	ret    0x4
