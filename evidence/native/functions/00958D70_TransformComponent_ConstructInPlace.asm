# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958d70, 0x00958d86); analyst name TransformComponent_ConstructInPlace.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958d70 <.text+0x557d70>:
  958d70:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  958d74:	85 c9                	test   ecx,ecx
  958d76:	74 0b                	je     0x958d83
  958d78:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  958d7c:	50                   	push   eax
  958d7d:	e8 de ee ff ff       	call   0x957c60
  958d82:	c3                   	ret
  958d83:	33 c0                	xor    eax,eax
  958d85:	c3                   	ret
