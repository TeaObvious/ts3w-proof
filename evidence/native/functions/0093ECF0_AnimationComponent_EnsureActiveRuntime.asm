# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093ecf0, 0x0093ed3d); analyst name AnimationComponent_EnsureActiveRuntime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093ecf0 <.text+0x53dcf0>:
  93ecf0:	56                   	push   esi
  93ecf1:	8b f1                	mov    esi,ecx
  93ecf3:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  93ecf6:	a9 00 08 00 00       	test   eax,0x800
  93ecfb:	75 3e                	jne    0x93ed3b
  93ecfd:	a9 00 01 00 00       	test   eax,0x100
  93ed02:	75 29                	jne    0x93ed2d
  93ed04:	8b 0d 00 e8 1c 01    	mov    ecx,DWORD PTR ds:0x11ce800
  93ed0a:	85 c9                	test   ecx,ecx
  93ed0c:	74 11                	je     0x93ed1f
  93ed0e:	85 c0                	test   eax,eax
  93ed10:	56                   	push   esi
  93ed11:	78 07                	js     0x93ed1a
  93ed13:	e8 a8 2c c3 ff       	call   0x5719c0
  93ed18:	eb 05                	jmp    0x93ed1f
  93ed1a:	e8 11 2d c3 ff       	call   0x571a30
  93ed1f:	81 4e 2c 00 01 00 00 	or     DWORD PTR [esi+0x2c],0x100
  93ed26:	8b ce                	mov    ecx,esi
  93ed28:	e8 83 f2 ff ff       	call   0x93dfb0
  93ed2d:	a1 7c d4 1d 01       	mov    eax,ds:0x11dd47c
  93ed32:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  93ed35:	50                   	push   eax
  93ed36:	e8 95 55 ff ff       	call   0x9342d0
  93ed3b:	5e                   	pop    esi
  93ed3c:	c3                   	ret
