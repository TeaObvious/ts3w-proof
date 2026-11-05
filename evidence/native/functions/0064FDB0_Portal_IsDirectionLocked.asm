# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064fdb0,0x0064fdcc); analyst name Portal_IsDirectionLocked.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064fdb0 <.text+0x24edb0>:
  64fdb0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  64fdb4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  64fdb8:	50                   	push   eax
  64fdb9:	52                   	push   edx
  64fdba:	e8 61 fd ff ff       	call   0x64fb20
  64fdbf:	83 e8 01             	sub    eax,0x1
  64fdc2:	f7 d8                	neg    eax
  64fdc4:	1b c0                	sbb    eax,eax
  64fdc6:	83 c0 01             	add    eax,0x1
  64fdc9:	c2 08 00             	ret    0x8
