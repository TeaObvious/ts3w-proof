# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d620 (ScriptCore.World::World_ObjectSetCurrentLotFlag)
Paired Ghidra pseudocode: 0078D620_ScriptCore_World_World_ObjectSetCurrentLotFlag.c
Window: [0x0078d620, 0x0078d660) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d620: e8 4b 9f 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0078d630: 04 51 52 8b c8 e8 46 a9 1a 00 85 c0 74 1e 8b 0d
0078d640: a8 a2 1e 01 51 8b c8 e8 14 6c 1a 00 85 c0 74 0c
0078d650: 8b 54 24 0c 52 8b c8 e8 d4 22 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
0078d620 <.text+0x38c620>:
  78d620:	e8 4b 9f 1a 00                                  	call   0x937570
  78d625:	85 c0                                           	test   eax,eax
  78d627:	74 33                                           	je     0x78d65c
  78d629:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d62d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d631:	51                                              	push   ecx
  78d632:	52                                              	push   edx
  78d633:	8b c8                                           	mov    ecx,eax
  78d635:	e8 46 a9 1a 00                                  	call   0x937f80
  78d63a:	85 c0                                           	test   eax,eax
  78d63c:	74 1e                                           	je     0x78d65c
  78d63e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d644:	51                                              	push   ecx
  78d645:	8b c8                                           	mov    ecx,eax
  78d647:	e8 14 6c 1a 00                                  	call   0x934260
  78d64c:	85 c0                                           	test   eax,eax
  78d64e:	74 0c                                           	je     0x78d65c
  78d650:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d654:	52                                              	push   edx
  78d655:	8b c8                                           	mov    ecx,eax
  78d657:	e8 d4 22 1d 00                                  	call   0x95f930
  78d65c:	c3                                              	ret
  78d65d:	cc                                              	int3
  78d65e:	cc                                              	int3
  78d65f:	cc                                              	int3
