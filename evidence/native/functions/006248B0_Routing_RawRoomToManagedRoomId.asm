# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x006248b0,0x006248c5); analyst name Routing_RawRoomToManagedRoomId.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006248b0 <.text+0x2238b0>:
  6248b0:	66 8b 44 24 04       	mov    ax,WORD PTR [esp+0x4]
  6248b5:	66 3d 10 00          	cmp    ax,0x10
  6248b9:	77 03                	ja     0x6248be
  6248bb:	33 c0                	xor    eax,eax
  6248bd:	c3                   	ret
  6248be:	0f b7 c0             	movzx  eax,ax
  6248c1:	83 e8 10             	sub    eax,0x10
  6248c4:	c3                   	ret
