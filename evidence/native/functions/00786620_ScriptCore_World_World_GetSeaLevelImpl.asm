# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786620 (ScriptCore.World::World_GetSeaLevelImpl)
Paired Ghidra pseudocode: 00786620_ScriptCore_World_World_GetSeaLevelImpl.c
Window: [0x00786620, 0x00786640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786620: 8b 0d c4 db 1e 01 85 c9 74 05 e9 61 aa 4d 00 d9
00786630: ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786620 <.text+0x385620>:
  786620:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786626:	85 c9                                           	test   ecx,ecx
  786628:	74 05                                           	je     0x78662f
  78662a:	e9 61 aa 4d 00                                  	jmp    0xc61090
  78662f:	d9 ee                                           	fldz
  786631:	c3                                              	ret
  786632:	cc                                              	int3
  786633:	cc                                              	int3
  786634:	cc                                              	int3
  786635:	cc                                              	int3
  786636:	cc                                              	int3
  786637:	cc                                              	int3
  786638:	cc                                              	int3
  786639:	cc                                              	int3
  78663a:	cc                                              	int3
  78663b:	cc                                              	int3
  78663c:	cc                                              	int3
  78663d:	cc                                              	int3
  78663e:	cc                                              	int3
  78663f:	cc                                              	int3
