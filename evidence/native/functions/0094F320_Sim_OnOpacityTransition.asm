# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0094f320 (Sim_OnOpacityTransition)
Full Ghidra function-body envelope: 0x0094f320..0x0094f347 (exclusive end)
Ghidra body ranges: [[0094f320, 0094f346]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094f320 <.text+0x54e320>:
  94f320:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  94f324:	85 c9                	test   ecx,ecx
  94f326:	74 1c                	je     0x94f344
  94f328:	a1 fc a0 1e 01       	mov    eax,ds:0x11ea0fc
  94f32d:	50                   	push   eax
  94f32e:	e8 2d 4f fe ff       	call   0x934260
  94f333:	85 c0                	test   eax,eax
  94f335:	74 0d                	je     0x94f344
  94f337:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  94f33b:	51                   	push   ecx
  94f33c:	8b c8                	mov    ecx,eax
  94f33e:	e8 bd fe ff ff       	call   0x94f200
  94f343:	c3                   	ret
  94f344:	b0 01                	mov    al,0x1
  94f346:	c3                   	ret
