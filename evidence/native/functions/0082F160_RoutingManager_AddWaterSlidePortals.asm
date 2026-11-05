# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0082f160,0x0082f174); analyst name RoutingManager_AddWaterSlidePortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082f160 <.text+0x42e160>:
  82f160:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  82f164:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  82f168:	6a 06                	push   0x6
  82f16a:	50                   	push   eax
  82f16b:	52                   	push   edx
  82f16c:	e8 ff db ff ff       	call   0x82cd70
  82f171:	c2 08 00             	ret    0x8
