# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0078d000 (ScriptCore.World::World_ObjectSetOpacity)
Full Ghidra function-body envelope: 0x0078d000..0x0078d052 (exclusive end)
Ghidra body ranges: [[0078d000, 0078d051]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078d000 <.text+0x38c000>:
  78d000:	e8 6b a5 1a 00       	call   0x937570
  78d005:	85 c0                	test   eax,eax
  78d007:	74 48                	je     0x78d051
  78d009:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  78d00d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  78d011:	51                   	push   ecx
  78d012:	52                   	push   edx
  78d013:	8b c8                	mov    ecx,eax
  78d015:	e8 66 af 1a 00       	call   0x937f80
  78d01a:	85 c0                	test   eax,eax
  78d01c:	74 33                	je     0x78d051
  78d01e:	8b 0d a8 a2 1e 01    	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d024:	51                   	push   ecx
  78d025:	8b c8                	mov    ecx,eax
  78d027:	e8 34 72 1a 00       	call   0x934260
  78d02c:	85 c0                	test   eax,eax
  78d02e:	74 21                	je     0x78d051
  78d030:	d9 ee                	fldz
  78d032:	6a 00                	push   0x0
  78d034:	83 ec 0c             	sub    esp,0xc
  78d037:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  78d03b:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  78d03f:	8b c8                	mov    ecx,eax
  78d041:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  78d045:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  78d049:	d9 1c 24             	fstp   DWORD PTR [esp]
  78d04c:	e8 ef 0e 1d 00       	call   0x95df40
  78d051:	c3                   	ret
