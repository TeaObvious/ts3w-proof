# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007891d0 (ScriptCore.World::World_SetVisualOverrideImpl)
Paired Ghidra pseudocode: 007891D0_ScriptCore_World_World_SetVisualOverrideImpl.c
Window: [0x007891d0, 0x007891f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007891f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007891d0: 8b 0d c4 db 1e 01 85 c9 74 0a 8b 44 24 04 50 e8
007891e0: 5c 67 4d 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007891d0 <.text+0x3881d0>:
  7891d0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7891d6:	85 c9                                           	test   ecx,ecx
  7891d8:	74 0a                                           	je     0x7891e4
  7891da:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7891de:	50                                              	push   eax
  7891df:	e8 5c 67 4d 00                                  	call   0xc5f940
  7891e4:	c3                                              	ret
  7891e5:	cc                                              	int3
  7891e6:	cc                                              	int3
  7891e7:	cc                                              	int3
  7891e8:	cc                                              	int3
  7891e9:	cc                                              	int3
  7891ea:	cc                                              	int3
  7891eb:	cc                                              	int3
  7891ec:	cc                                              	int3
  7891ed:	cc                                              	int3
  7891ee:	cc                                              	int3
  7891ef:	cc                                              	int3
