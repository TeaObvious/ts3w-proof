# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060fe00,0x0060fe10); analyst name RenderDevice_SetDepthWriteByte.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060fe00 <.text+0x20ee00>:
  60fe00:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
  60fe05:	50                   	push   eax
  60fe06:	6a 0e                	push   0xe
  60fe08:	e8 a3 f0 ff ff       	call   0x60eeb0
  60fe0d:	c2 04 00             	ret    0x4
