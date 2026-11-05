# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0096ff40, 0x0096ff71).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

0096ff40 <.text+0x56ef40>:
  96ff40:	53                   	push   ebx
  96ff41:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  96ff45:	53                   	push   ebx
  96ff46:	83 c1 40             	add    ecx,0x40
  96ff49:	e8 32 27 ff ff       	call   0x962680
  96ff4e:	84 db                	test   bl,bl
  96ff50:	5b                   	pop    ebx
  96ff51:	74 0f                	je     0x96ff62
  96ff53:	6a 01                	push   0x1
  96ff55:	6a 01                	push   0x1
  96ff57:	e8 f4 99 c2 ff       	call   0x599950
  96ff5c:	83 c4 08             	add    esp,0x8
  96ff5f:	c2 04 00             	ret    0x4
  96ff62:	6a 00                	push   0x0
  96ff64:	6a 00                	push   0x0
  96ff66:	e8 e5 99 c2 ff       	call   0x599950
  96ff6b:	83 c4 08             	add    esp,0x8
  96ff6e:	c2 04 00             	ret    0x4
