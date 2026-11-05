# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785250 (ScriptCore.World::World_GetSunsetTime)
Paired Ghidra pseudocode: 00785250_ScriptCore_World_World_GetSunsetTime.c
Window: [0x00785250, 0x00785270) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785250: a1 c4 db 1e 01 85 c0 74 07 d9 80 30 01 00 00 c3
00785260: d9 05 78 3f fb 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785250 <.text+0x384250>:
  785250:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  785255:	85 c0                                           	test   eax,eax
  785257:	74 07                                           	je     0x785260
  785259:	d9 80 30 01 00 00                               	fld    DWORD PTR [eax+0x130]
  78525f:	c3                                              	ret
  785260:	d9 05 78 3f fb 00                               	fld    DWORD PTR ds:0xfb3f78
  785266:	c3                                              	ret
  785267:	cc                                              	int3
  785268:	cc                                              	int3
  785269:	cc                                              	int3
  78526a:	cc                                              	int3
  78526b:	cc                                              	int3
  78526c:	cc                                              	int3
  78526d:	cc                                              	int3
  78526e:	cc                                              	int3
  78526f:	cc                                              	int3
