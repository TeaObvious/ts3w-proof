# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0095e120, 0x0095e13f).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_TestObjectSnowEnableBits (analyst-assigned)
Entry: 0x0095e120
Ghidra body envelope: 0x0095e120..0x0095e13e inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

0095e120 <.text+0x55d120>:
  95e120:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
  95e124:	f6 d8                	neg    al
  95e126:	1b c0                	sbb    eax,eax
  95e128:	25 00 00 ea ff       	and    eax,0xffea0000
  95e12d:	05 00 00 1e 00       	add    eax,0x1e0000
  95e132:	23 41 08             	and    eax,DWORD PTR [ecx+0x8]
  95e135:	f7 d8                	neg    eax
  95e137:	1b c0                	sbb    eax,eax
  95e139:	83 c0 01             	add    eax,0x1
  95e13c:	c2 04 00             	ret    0x4
