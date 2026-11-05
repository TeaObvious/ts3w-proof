# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ec71b0,0x00ec71f9); analyst name GameState_QueueNotInWorld.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec71b0 <.text+0xac61b0>:
  ec71b0:	6a 00                	push   0x0
  ec71b2:	6a 00                	push   0x0
  ec71b4:	6a 00                	push   0x0
  ec71b6:	6a 00                	push   0x0
  ec71b8:	68 b0 57 0f 01       	push   0x10f57b0
  ec71bd:	6a 0c                	push   0xc
  ec71bf:	e8 3c d3 61 ff       	call   0x4e4500
  ec71c4:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  ec71c8:	83 c4 18             	add    esp,0x18
  ec71cb:	85 c0                	test   eax,eax
  ec71cd:	74 1c                	je     0xec71eb
  ec71cf:	68 03 6e 8d 02       	push   0x28d6e03
  ec71d4:	50                   	push   eax
  ec71d5:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  ec71dc:	c7 00 94 57 0f 01    	mov    DWORD PTR [eax],0x10f5794
  ec71e2:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  ec71e5:	e8 56 e0 ff ff       	call   0xec5240
  ec71ea:	c3                   	ret
  ec71eb:	33 c0                	xor    eax,eax
  ec71ed:	68 03 6e 8d 02       	push   0x28d6e03
  ec71f2:	50                   	push   eax
  ec71f3:	e8 48 e0 ff ff       	call   0xec5240
  ec71f8:	c3                   	ret
