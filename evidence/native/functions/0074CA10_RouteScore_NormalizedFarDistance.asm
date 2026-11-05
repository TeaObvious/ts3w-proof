# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074ca10, 0x0074ca21); analyst name RouteScore_NormalizedFarDistance.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074ca10 <.text+0x34ba10>:
  74ca10:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  74ca14:	50                   	push   eax
  74ca15:	e8 16 ff ff ff       	call   0x74c930
  74ca1a:	d9 e8                	fld1
  74ca1c:	de e1                	fsubrp st(1),st
  74ca1e:	c2 04 00             	ret    0x4
