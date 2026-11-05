# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060fe10,0x0060fe26); analyst name RenderDevice_SetDepthCompareIndex.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060fe10 <.text+0x20ee10>:
  60fe10:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  60fe14:	8b 14 85 f4 89 fe 00 	mov    edx,DWORD PTR [eax*4+0xfe89f4]
  60fe1b:	52                   	push   edx
  60fe1c:	6a 17                	push   0x17
  60fe1e:	e8 8d f0 ff ff       	call   0x60eeb0
  60fe23:	c2 04 00             	ret    0x4
