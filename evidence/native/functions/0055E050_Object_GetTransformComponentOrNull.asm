# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0055e050, 0x0055e067); analyst name Object_GetTransformComponentOrNull.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0055e050 <.text+0x15d050>:
  55e050:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  55e054:	85 c9                	test   ecx,ecx
  55e056:	74 0c                	je     0x55e064
  55e058:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  55e05d:	50                   	push   eax
  55e05e:	e8 fd 61 3d 00       	call   0x934260
  55e063:	c3                   	ret
  55e064:	33 c0                	xor    eax,eax
  55e066:	c3                   	ret
