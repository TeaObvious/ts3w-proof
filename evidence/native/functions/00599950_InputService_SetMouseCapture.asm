# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599950, 0x0059996a).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599950 <.text+0x198950>:
  599950:	8b 0d c0 f2 1c 01    	mov    ecx,DWORD PTR ds:0x11cf2c0
  599956:	85 c9                	test   ecx,ecx
  599958:	74 0f                	je     0x599969
  59995a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  59995e:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  599962:	50                   	push   eax
  599963:	52                   	push   edx
  599964:	e8 17 fd ff ff       	call   0x599680
  599969:	c3                   	ret
