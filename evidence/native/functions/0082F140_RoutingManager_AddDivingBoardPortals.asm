# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0082f140,0x0082f154); analyst name RoutingManager_AddDivingBoardPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082f140 <.text+0x42e140>:
  82f140:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  82f144:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  82f148:	6a 05                	push   0x5
  82f14a:	50                   	push   eax
  82f14b:	52                   	push   edx
  82f14c:	e8 1f dc ff ff       	call   0x82cd70
  82f151:	c2 08 00             	ret    0x8
