# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007852d0 (ScriptCore.World::World_SetAdvancedTime)
Paired Ghidra pseudocode: 007852D0_ScriptCore_World_World_SetAdvancedTime.c
Window: [0x007852d0, 0x007852f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007852f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007852d0: a1 c4 db 1e 01 85 c0 74 14 8b 4c 24 04 8b 54 24
007852e0: 08 89 88 40 01 00 00 89 90 44 01 00 00 c3 cc cc

LINEAR DISASSEMBLY
007852d0 <.text+0x3842d0>:
  7852d0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  7852d5:	85 c0                                           	test   eax,eax
  7852d7:	74 14                                           	je     0x7852ed
  7852d9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7852dd:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7852e1:	89 88 40 01 00 00                               	mov    DWORD PTR [eax+0x140],ecx
  7852e7:	89 90 44 01 00 00                               	mov    DWORD PTR [eax+0x144],edx
  7852ed:	c3                                              	ret
  7852ee:	cc                                              	int3
  7852ef:	cc                                              	int3
