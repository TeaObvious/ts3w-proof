# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007852b0 (ScriptCore.World::World_SetStartTime)
Paired Ghidra pseudocode: 007852B0_ScriptCore_World_World_SetStartTime.c
Window: [0x007852b0, 0x007852d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007852d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007852b0: a1 c4 db 1e 01 85 c0 74 14 8b 4c 24 04 8b 54 24
007852c0: 08 89 88 38 01 00 00 89 90 3c 01 00 00 c3 cc cc

LINEAR DISASSEMBLY
007852b0 <.text+0x3842b0>:
  7852b0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  7852b5:	85 c0                                           	test   eax,eax
  7852b7:	74 14                                           	je     0x7852cd
  7852b9:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7852bd:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7852c1:	89 88 38 01 00 00                               	mov    DWORD PTR [eax+0x138],ecx
  7852c7:	89 90 3c 01 00 00                               	mov    DWORD PTR [eax+0x13c],edx
  7852cd:	c3                                              	ret
  7852ce:	cc                                              	int3
  7852cf:	cc                                              	int3
