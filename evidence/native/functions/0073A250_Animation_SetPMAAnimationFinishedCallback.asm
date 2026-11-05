# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073a250, 0x0073a25e); analyst name Animation_SetPMAAnimationFinishedCallback.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073a250 <.text+0x339250>:
  73a250:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  73a254:	8b 0d 34 4e 1d 01    	mov    ecx,DWORD PTR ds:0x11d4e34
  73a25a:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  73a25d:	c3                   	ret
