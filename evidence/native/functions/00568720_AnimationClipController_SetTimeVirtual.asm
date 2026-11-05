# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568720, 0x00568730); analyst name AnimationClipController_SetTimeVirtual.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568720 <.text+0x167720>:
  568720:	d9 44 24 04          	fld    DWORD PTR [esp+0x4]
  568724:	51                   	push   ecx
  568725:	d9 1c 24             	fstp   DWORD PTR [esp]
  568728:	e8 23 ff ff ff       	call   0x568650
  56872d:	c2 04 00             	ret    0x4
