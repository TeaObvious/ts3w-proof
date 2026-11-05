# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e320 (ScriptCore.World::World_SetLotType)
Paired Ghidra pseudocode: 0078E320_ScriptCore_World_World_SetLotType.c
Window: [0x0078e320, 0x0078e360) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e320: 8b 0d c4 db 1e 01 85 c9 74 31 8b 44 24 08 8b 54
0078e330: 24 04 6a 00 50 52 e8 d5 44 4d 00 85 c0 74 1c 8b
0078e340: 4c 24 0c 39 88 08 04 00 00 74 10 c7 80 0c 04 00
0078e350: 00 00 00 00 00 89 88 08 04 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
0078e320 <.text+0x38d320>:
  78e320:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78e326:	85 c9                                           	test   ecx,ecx
  78e328:	74 31                                           	je     0x78e35b
  78e32a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78e32e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78e332:	6a 00                                           	push   0x0
  78e334:	50                                              	push   eax
  78e335:	52                                              	push   edx
  78e336:	e8 d5 44 4d 00                                  	call   0xc62810
  78e33b:	85 c0                                           	test   eax,eax
  78e33d:	74 1c                                           	je     0x78e35b
  78e33f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78e343:	39 88 08 04 00 00                               	cmp    DWORD PTR [eax+0x408],ecx
  78e349:	74 10                                           	je     0x78e35b
  78e34b:	c7 80 0c 04 00 00 00 00 00 00                   	mov    DWORD PTR [eax+0x40c],0x0
  78e355:	89 88 08 04 00 00                               	mov    DWORD PTR [eax+0x408],ecx
  78e35b:	c3                                              	ret
  78e35c:	cc                                              	int3
  78e35d:	cc                                              	int3
  78e35e:	cc                                              	int3
  78e35f:	cc                                              	int3
