# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0095a0a0, 0x0095a0c5); analyst name TransformComponent_HandleObjectRemoval.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a0a0 <.text+0x5590a0>:
  95a0a0:	56                   	push   esi
  95a0a1:	6a 00                	push   0x0
  95a0a3:	8b f1                	mov    esi,ecx
  95a0a5:	e8 f6 fe ff ff       	call   0x959fa0
  95a0aa:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  95a0ad:	c1 e8 03             	shr    eax,0x3
  95a0b0:	f6 d0                	not    al
  95a0b2:	8b ce                	mov    ecx,esi
  95a0b4:	25 01 ff ff ff       	and    eax,0xffffff01
  95a0b9:	50                   	push   eax
  95a0ba:	e8 31 e9 ff ff       	call   0x9589f0
  95a0bf:	b0 01                	mov    al,0x1
  95a0c1:	5e                   	pop    esi
  95a0c2:	c2 04 00             	ret    0x4
