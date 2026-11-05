# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b474a0,0x00b474af); analyst name LotPartition_SetFogFadeSeconds.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b474a0 <.text+0x7464a0>:
  b474a0:	d9 44 24 04          	fld    DWORD PTR [esp+0x4]
  b474a4:	51                   	push   ecx
  b474a5:	d9 1c 24             	fstp   DWORD PTR [esp]
  b474a8:	e8 43 87 f9 ff       	call   0xadfbf0
  b474ad:	59                   	pop    ecx
  b474ae:	c3                   	ret
