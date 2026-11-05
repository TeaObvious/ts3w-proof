# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957a30, 0x00957a52); analyst name TransformComponent_GetWorldPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957a30 <.text+0x556a30>:
  957a30:	55                   	push   ebp
  957a31:	8b ec                	mov    ebp,esp
  957a33:	83 e4 f0             	and    esp,0xfffffff0
  957a36:	83 ec 20             	sub    esp,0x20
  957a39:	8d 04 24             	lea    eax,[esp]
  957a3c:	50                   	push   eax
  957a3d:	e8 ce fe ff ff       	call   0x957910
  957a42:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  957a46:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  957a49:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  957a4c:	8b e5                	mov    esp,ebp
  957a4e:	5d                   	pop    ebp
  957a4f:	c2 04 00             	ret    0x4
