# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957c30, 0x00957c57); analyst name TransformComponent_OnEvent18.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957c30 <.text+0x556c30>:
  957c30:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  957c34:	85 c9                	test   ecx,ecx
  957c36:	74 1c                	je     0x957c54
  957c38:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  957c3d:	50                   	push   eax
  957c3e:	e8 1d c6 fd ff       	call   0x934260
  957c43:	85 c0                	test   eax,eax
  957c45:	74 0d                	je     0x957c54
  957c47:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  957c4b:	51                   	push   ecx
  957c4c:	8b c8                	mov    ecx,eax
  957c4e:	e8 0d ff ff ff       	call   0x957b60
  957c53:	c3                   	ret
  957c54:	b0 01                	mov    al,0x1
  957c56:	c3                   	ret
