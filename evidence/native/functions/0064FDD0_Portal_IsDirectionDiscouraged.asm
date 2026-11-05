# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064fdd0,0x0064fdec); analyst name Portal_IsDirectionDiscouraged.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064fdd0 <.text+0x24edd0>:
  64fdd0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  64fdd4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  64fdd8:	50                   	push   eax
  64fdd9:	52                   	push   edx
  64fdda:	e8 41 fd ff ff       	call   0x64fb20
  64fddf:	33 c9                	xor    ecx,ecx
  64fde1:	83 f8 03             	cmp    eax,0x3
  64fde4:	0f 94 c1             	sete   cl
  64fde7:	8a c1                	mov    al,cl
  64fde9:	c2 08 00             	ret    0x8
