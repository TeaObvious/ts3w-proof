# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787050 (ScriptCore.World::World_EnableCustomLightRiggingImpl)
Paired Ghidra pseudocode: 00787050_ScriptCore_World_World_EnableCustomLightRiggingImpl.c
Window: [0x00787050, 0x00787070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787050: 8b 44 24 04 50 e8 e6 25 f6 ff 8b c8 e8 1f 8f f2
00787060: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787050 <.text+0x386050>:
  787050:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787054:	50                                              	push   eax
  787055:	e8 e6 25 f6 ff                                  	call   0x6e9640
  78705a:	8b c8                                           	mov    ecx,eax
  78705c:	e8 1f 8f f2 ff                                  	call   0x6aff80
  787061:	c3                                              	ret
  787062:	cc                                              	int3
  787063:	cc                                              	int3
  787064:	cc                                              	int3
  787065:	cc                                              	int3
  787066:	cc                                              	int3
  787067:	cc                                              	int3
  787068:	cc                                              	int3
  787069:	cc                                              	int3
  78706a:	cc                                              	int3
  78706b:	cc                                              	int3
  78706c:	cc                                              	int3
  78706d:	cc                                              	int3
  78706e:	cc                                              	int3
  78706f:	cc                                              	int3
