# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958d40, 0x00958d67); analyst name TransformComponent_OnObjectAttached.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958d40 <.text+0x557d40>:
  958d40:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  958d44:	85 c9                	test   ecx,ecx
  958d46:	74 1c                	je     0x958d64
  958d48:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  958d4d:	50                   	push   eax
  958d4e:	e8 0d b5 fd ff       	call   0x934260
  958d53:	85 c0                	test   eax,eax
  958d55:	74 0d                	je     0x958d64
  958d57:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  958d5b:	51                   	push   ecx
  958d5c:	8b c8                	mov    ecx,eax
  958d5e:	e8 7d ef ff ff       	call   0x957ce0
  958d63:	c3                   	ret
  958d64:	b0 01                	mov    al,0x1
  958d66:	c3                   	ret
