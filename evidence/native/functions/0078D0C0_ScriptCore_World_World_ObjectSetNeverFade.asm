# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d0c0 (ScriptCore.World::World_ObjectSetNeverFade)
Paired Ghidra pseudocode: 0078D0C0_ScriptCore_World_World_ObjectSetNeverFade.c
Window: [0x0078d0c0, 0x0078d100) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d0c0: e8 ab a4 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0078d0d0: 04 51 52 8b c8 e8 a6 ae 1a 00 85 c0 74 1e 8b 0d
0078d0e0: a8 a2 1e 01 51 8b c8 e8 74 71 1a 00 85 c0 74 0c
0078d0f0: 8b 54 24 0c 52 8b c8 e8 94 0d 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
0078d0c0 <.text+0x38c0c0>:
  78d0c0:	e8 ab a4 1a 00                                  	call   0x937570
  78d0c5:	85 c0                                           	test   eax,eax
  78d0c7:	74 33                                           	je     0x78d0fc
  78d0c9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d0cd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d0d1:	51                                              	push   ecx
  78d0d2:	52                                              	push   edx
  78d0d3:	8b c8                                           	mov    ecx,eax
  78d0d5:	e8 a6 ae 1a 00                                  	call   0x937f80
  78d0da:	85 c0                                           	test   eax,eax
  78d0dc:	74 1e                                           	je     0x78d0fc
  78d0de:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d0e4:	51                                              	push   ecx
  78d0e5:	8b c8                                           	mov    ecx,eax
  78d0e7:	e8 74 71 1a 00                                  	call   0x934260
  78d0ec:	85 c0                                           	test   eax,eax
  78d0ee:	74 0c                                           	je     0x78d0fc
  78d0f0:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d0f4:	52                                              	push   edx
  78d0f5:	8b c8                                           	mov    ecx,eax
  78d0f7:	e8 94 0d 1d 00                                  	call   0x95de90
  78d0fc:	c3                                              	ret
  78d0fd:	cc                                              	int3
  78d0fe:	cc                                              	int3
  78d0ff:	cc                                              	int3
