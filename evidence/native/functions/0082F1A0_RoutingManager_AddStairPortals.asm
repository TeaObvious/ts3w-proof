# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0082f1a0,0x0082f1b4); analyst name RoutingManager_AddStairPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082f1a0 <.text+0x42e1a0>:
  82f1a0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  82f1a4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  82f1a8:	6a 03                	push   0x3
  82f1aa:	50                   	push   eax
  82f1ab:	52                   	push   edx
  82f1ac:	e8 bf db ff ff       	call   0x82cd70
  82f1b1:	c2 08 00             	ret    0x8
