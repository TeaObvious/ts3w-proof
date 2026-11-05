# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060fde0,0x0060fdf4); analyst name RenderDevice_SetDepthEnabled.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060fde0 <.text+0x20ede0>:
  60fde0:	33 c0                	xor    eax,eax
  60fde2:	38 44 24 04          	cmp    BYTE PTR [esp+0x4],al
  60fde6:	0f 95 c0             	setne  al
  60fde9:	50                   	push   eax
  60fdea:	6a 07                	push   0x7
  60fdec:	e8 bf f0 ff ff       	call   0x60eeb0
  60fdf1:	c2 04 00             	ret    0x4
