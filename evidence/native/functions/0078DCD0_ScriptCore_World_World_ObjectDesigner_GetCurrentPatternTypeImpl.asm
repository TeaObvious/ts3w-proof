# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078dcd0 (ScriptCore.World::World_ObjectDesigner_GetCurrentPatternTypeImpl)
Paired Ghidra pseudocode: 0078DCD0_ScriptCore_World_World_ObjectDesigner_GetCurrentPatternTypeImpl.c
Window: [0x0078dcd0, 0x0078dcf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078dcf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078dcd0: e8 cb 25 3a 00 8b 80 a4 00 00 00 85 c0 74 07 8b
0078dce0: 80 88 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078dcd0 <.text+0x38ccd0>:
  78dcd0:	e8 cb 25 3a 00                                  	call   0xb302a0
  78dcd5:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
  78dcdb:	85 c0                                           	test   eax,eax
  78dcdd:	74 07                                           	je     0x78dce6
  78dcdf:	8b 80 88 00 00 00                               	mov    eax,DWORD PTR [eax+0x88]
  78dce5:	c3                                              	ret
  78dce6:	33 c0                                           	xor    eax,eax
  78dce8:	c3                                              	ret
  78dce9:	cc                                              	int3
  78dcea:	cc                                              	int3
  78dceb:	cc                                              	int3
  78dcec:	cc                                              	int3
  78dced:	cc                                              	int3
  78dcee:	cc                                              	int3
  78dcef:	cc                                              	int3
