# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060ff90,0x0060ffa0); analyst name RenderDevice_SetAlphaBlendByte.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060ff90 <.text+0x20ef90>:
  60ff90:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
  60ff95:	50                   	push   eax
  60ff96:	6a 1b                	push   0x1b
  60ff98:	e8 13 ef ff ff       	call   0x60eeb0
  60ff9d:	c2 04 00             	ret    0x4
