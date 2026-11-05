# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788640 (ScriptCore.World::World_IsEditInGameFromWBModeImpl)
Paired Ghidra pseudocode: 00788640_ScriptCore_World_World_IsEditInGameFromWBModeImpl.c
Window: [0x00788640, 0x00788660) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788640: a1 c4 db 1e 01 85 c0 74 0f 33 c9 83 b8 b4 01 00
00788650: 00 02 0f 94 c1 8a c1 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00788640 <.text+0x387640>:
  788640:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  788645:	85 c0                                           	test   eax,eax
  788647:	74 0f                                           	je     0x788658
  788649:	33 c9                                           	xor    ecx,ecx
  78864b:	83 b8 b4 01 00 00 02                            	cmp    DWORD PTR [eax+0x1b4],0x2
  788652:	0f 94 c1                                        	sete   cl
  788655:	8a c1                                           	mov    al,cl
  788657:	c3                                              	ret
  788658:	32 c0                                           	xor    al,al
  78865a:	c3                                              	ret
  78865b:	cc                                              	int3
  78865c:	cc                                              	int3
  78865d:	cc                                              	int3
  78865e:	cc                                              	int3
  78865f:	cc                                              	int3
