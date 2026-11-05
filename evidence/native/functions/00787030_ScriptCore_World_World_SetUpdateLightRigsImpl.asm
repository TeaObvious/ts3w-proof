# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787030 (ScriptCore.World::World_SetUpdateLightRigsImpl)
Paired Ghidra pseudocode: 00787030_ScriptCore_World_World_SetUpdateLightRigsImpl.c
Window: [0x00787030, 0x00787050) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787030: 8b 44 24 04 8b 0d c4 db 1e 01 50 e8 d0 83 4d 00
00787040: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787030 <.text+0x386030>:
  787030:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787034:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78703a:	50                                              	push   eax
  78703b:	e8 d0 83 4d 00                                  	call   0xc5f410
  787040:	c3                                              	ret
  787041:	cc                                              	int3
  787042:	cc                                              	int3
  787043:	cc                                              	int3
  787044:	cc                                              	int3
  787045:	cc                                              	int3
  787046:	cc                                              	int3
  787047:	cc                                              	int3
  787048:	cc                                              	int3
  787049:	cc                                              	int3
  78704a:	cc                                              	int3
  78704b:	cc                                              	int3
  78704c:	cc                                              	int3
  78704d:	cc                                              	int3
  78704e:	cc                                              	int3
  78704f:	cc                                              	int3
