# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060fef0,0x0060ff00); analyst name RenderDevice_SetAlphaTestByte.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060fef0 <.text+0x20eef0>:
  60fef0:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
  60fef5:	50                   	push   eax
  60fef6:	6a 0f                	push   0xf
  60fef8:	e8 b3 ef ff ff       	call   0x60eeb0
  60fefd:	c2 04 00             	ret    0x4
