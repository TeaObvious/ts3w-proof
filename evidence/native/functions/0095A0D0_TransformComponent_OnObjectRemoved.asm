# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0095a0d0, 0x0095a0f7); analyst name TransformComponent_OnObjectRemoved.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a0d0 <.text+0x5590d0>:
  95a0d0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  95a0d4:	85 c9                	test   ecx,ecx
  95a0d6:	74 1c                	je     0x95a0f4
  95a0d8:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  95a0dd:	50                   	push   eax
  95a0de:	e8 7d a1 fd ff       	call   0x934260
  95a0e3:	85 c0                	test   eax,eax
  95a0e5:	74 0d                	je     0x95a0f4
  95a0e7:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95a0eb:	51                   	push   ecx
  95a0ec:	8b c8                	mov    ecx,eax
  95a0ee:	e8 ad ff ff ff       	call   0x95a0a0
  95a0f3:	c3                   	ret
  95a0f4:	b0 01                	mov    al,0x1
  95a0f6:	c3                   	ret
