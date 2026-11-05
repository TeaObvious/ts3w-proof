# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00943b90 (Effect_OnVisualStateChanged)
Full Ghidra function-body envelope: 0x00943b90..0x00943bb6 (exclusive end)
Ghidra body ranges: [[00943b90, 00943bb5]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00943b90 <.text+0x542b90>:
  943b90:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  943b94:	85 c9                	test   ecx,ecx
  943b96:	74 1b                	je     0x943bb3
  943b98:	a1 90 9e 1e 01       	mov    eax,ds:0x11e9e90
  943b9d:	50                   	push   eax
  943b9e:	e8 bd 06 ff ff       	call   0x934260
  943ba3:	85 c0                	test   eax,eax
  943ba5:	74 0c                	je     0x943bb3
  943ba7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  943baa:	51                   	push   ecx
  943bab:	e8 40 b4 01 00       	call   0x95eff0
  943bb0:	83 c4 04             	add    esp,0x4
  943bb3:	b0 01                	mov    al,0x1
  943bb5:	c3                   	ret
