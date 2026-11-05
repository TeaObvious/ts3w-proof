# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0078d060 (ScriptCore.World::World_ObjectSetOpacityTransition)
Full Ghidra function-body envelope: 0x0078d060..0x0078d0b4 (exclusive end)
Ghidra body ranges: [[0078d060, 0078d0b3]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078d060 <.text+0x38c060>:
  78d060:	e8 0b a5 1a 00       	call   0x937570
  78d065:	85 c0                	test   eax,eax
  78d067:	74 4a                	je     0x78d0b3
  78d069:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  78d06d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  78d071:	51                   	push   ecx
  78d072:	52                   	push   edx
  78d073:	8b c8                	mov    ecx,eax
  78d075:	e8 06 af 1a 00       	call   0x937f80
  78d07a:	85 c0                	test   eax,eax
  78d07c:	74 35                	je     0x78d0b3
  78d07e:	8b 0d a8 a2 1e 01    	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d084:	51                   	push   ecx
  78d085:	8b c8                	mov    ecx,eax
  78d087:	e8 d4 71 1a 00       	call   0x934260
  78d08c:	85 c0                	test   eax,eax
  78d08e:	74 23                	je     0x78d0b3
  78d090:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  78d094:	6a 01                	push   0x1
  78d096:	83 ec 0c             	sub    esp,0xc
  78d099:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  78d09d:	8b c8                	mov    ecx,eax
  78d09f:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  78d0a3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  78d0a7:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  78d0ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  78d0ae:	e8 8d 0e 1d 00       	call   0x95df40
  78d0b3:	c3                   	ret
