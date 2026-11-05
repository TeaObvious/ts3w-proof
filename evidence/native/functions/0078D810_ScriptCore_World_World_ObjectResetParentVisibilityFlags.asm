# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d810 (ScriptCore.World::World_ObjectResetParentVisibilityFlags)
Paired Ghidra pseudocode: 0078D810_ScriptCore_World_World_ObjectResetParentVisibilityFlags.c
Window: [0x0078d810, 0x0078d850) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d810: e8 5b 9d 1a 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
0078d820: 04 51 52 8b c8 e8 56 a7 1a 00 85 c0 74 19 8b 0d
0078d830: a8 a2 1e 01 51 8b c8 e8 24 6a 1a 00 85 c0 74 07
0078d840: 8b c8 e9 79 1e 1d 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d810 <.text+0x38c810>:
  78d810:	e8 5b 9d 1a 00                                  	call   0x937570
  78d815:	85 c0                                           	test   eax,eax
  78d817:	74 2e                                           	je     0x78d847
  78d819:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d81d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d821:	51                                              	push   ecx
  78d822:	52                                              	push   edx
  78d823:	8b c8                                           	mov    ecx,eax
  78d825:	e8 56 a7 1a 00                                  	call   0x937f80
  78d82a:	85 c0                                           	test   eax,eax
  78d82c:	74 19                                           	je     0x78d847
  78d82e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d834:	51                                              	push   ecx
  78d835:	8b c8                                           	mov    ecx,eax
  78d837:	e8 24 6a 1a 00                                  	call   0x934260
  78d83c:	85 c0                                           	test   eax,eax
  78d83e:	74 07                                           	je     0x78d847
  78d840:	8b c8                                           	mov    ecx,eax
  78d842:	e9 79 1e 1d 00                                  	jmp    0x95f6c0
  78d847:	c3                                              	ret
  78d848:	cc                                              	int3
  78d849:	cc                                              	int3
  78d84a:	cc                                              	int3
  78d84b:	cc                                              	int3
  78d84c:	cc                                              	int3
  78d84d:	cc                                              	int3
  78d84e:	cc                                              	int3
  78d84f:	cc                                              	int3
