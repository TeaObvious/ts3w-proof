# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0082f180,0x0082f194); analyst name RoutingManager_AddPoolOrPlatformPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082f180 <.text+0x42e180>:
  82f180:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  82f184:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  82f188:	6a 00                	push   0x0
  82f18a:	50                   	push   eax
  82f18b:	52                   	push   edx
  82f18c:	e8 df db ff ff       	call   0x82cd70
  82f191:	c2 08 00             	ret    0x8
