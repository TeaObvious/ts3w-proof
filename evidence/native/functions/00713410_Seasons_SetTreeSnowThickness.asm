# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00713410, 0x00713421).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_SetTreeSnowThickness (analyst-assigned)
Entry: 0x00713410
Ghidra body envelope: 0x00713410..0x00713420 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00713410 <.text+0x312410>:
  713410:	f3 0f 10 44 24 04    	movss  xmm0,DWORD PTR [esp+0x4]
  713416:	f3 0f 11 81 e0 01 00 	movss  DWORD PTR [ecx+0x1e0],xmm0
  71341d:	00
  71341e:	c2 04 00             	ret    0x4
