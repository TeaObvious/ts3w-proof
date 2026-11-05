# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c8b210, 0x00c8b239); analyst name LocationComponent_OnWorldPoseChanged.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c8b210 <.text+0x88a210>:
  c8b210:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  c8b214:	85 c9                	test   ecx,ecx
  c8b216:	74 1e                	je     0xc8b236
  c8b218:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  c8b21d:	50                   	push   eax
  c8b21e:	e8 3d 90 ca ff       	call   0x934260
  c8b223:	85 c0                	test   eax,eax
  c8b225:	74 0f                	je     0xc8b236
  c8b227:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  c8b22b:	83 c1 10             	add    ecx,0x10
  c8b22e:	51                   	push   ecx
  c8b22f:	8b c8                	mov    ecx,eax
  c8b231:	e8 aa f9 ff ff       	call   0xc8abe0
  c8b236:	b0 01                	mov    al,0x1
  c8b238:	c3                   	ret
