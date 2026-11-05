# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e360 (ScriptCore.World::World_ForceVisibilityForPicture)
Paired Ghidra pseudocode: 0078E360_ScriptCore_World_World_ForceVisibilityForPicture.c
Window: [0x0078e360, 0x0078e380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e360: e8 0b 9e f5 ff 85 c0 74 10 33 c9 38 4c 24 04 0f
0078e370: 95 c1 05 a4 02 00 00 87 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e360 <.text+0x38d360>:
  78e360:	e8 0b 9e f5 ff                                  	call   0x6e8170
  78e365:	85 c0                                           	test   eax,eax
  78e367:	74 10                                           	je     0x78e379
  78e369:	33 c9                                           	xor    ecx,ecx
  78e36b:	38 4c 24 04                                     	cmp    BYTE PTR [esp+0x4],cl
  78e36f:	0f 95 c1                                        	setne  cl
  78e372:	05 a4 02 00 00                                  	add    eax,0x2a4
  78e377:	87 08                                           	xchg   DWORD PTR [eax],ecx
  78e379:	c3                                              	ret
  78e37a:	cc                                              	int3
  78e37b:	cc                                              	int3
  78e37c:	cc                                              	int3
  78e37d:	cc                                              	int3
  78e37e:	cc                                              	int3
  78e37f:	cc                                              	int3
