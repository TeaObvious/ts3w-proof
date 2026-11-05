# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007878f0,0x007878ff); analyst name World_FogOfExplorationSetFadeTime.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007878f0 <.text+0x3868f0>:
  7878f0:	d9 44 24 04          	fld    DWORD PTR [esp+0x4]
  7878f4:	51                   	push   ecx
  7878f5:	d9 1c 24             	fstp   DWORD PTR [esp]
  7878f8:	e8 a3 fb 3b 00       	call   0xb474a0
  7878fd:	59                   	pop    ecx
  7878fe:	c3                   	ret
