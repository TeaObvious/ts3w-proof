# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009372f0, 0x0093731b); analyst name ObjectRegistry_Activate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009372f0 <.text+0x5362f0>:
  9372f0:	56                   	push   esi
  9372f1:	8b f1                	mov    esi,ecx
  9372f3:	89 35 50 d3 1d 01    	mov    DWORD PTR ds:0x11dd350,esi
  9372f9:	e8 42 ee ff ff       	call   0x936140
  9372fe:	6a 00                	push   0x0
  937300:	68 c4 3e 04 01       	push   0x1043ec4
  937305:	e8 56 41 c5 ff       	call   0x58b460
  93730a:	83 c4 08             	add    esp,0x8
  93730d:	84 c0                	test   al,al
  93730f:	b0 01                	mov    al,0x1
  937311:	74 06                	je     0x937319
  937313:	88 86 e4 11 00 00    	mov    BYTE PTR [esi+0x11e4],al
  937319:	5e                   	pop    esi
  93731a:	c3                   	ret
