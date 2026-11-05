# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788090 (ScriptCore.World::World_ObjectDesigner_GetPresetContentCategoryImpl)
Paired Ghidra pseudocode: 00788090_ScriptCore_World_World_ObjectDesigner_GetPresetContentCategoryImpl.c
Window: [0x00788090, 0x007880b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007880b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788090: 8b 44 24 04 50 e8 06 82 3a 00 8b c8 e8 3f 8c 3a
007880a0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788090 <.text+0x387090>:
  788090:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  788094:	50                                              	push   eax
  788095:	e8 06 82 3a 00                                  	call   0xb302a0
  78809a:	8b c8                                           	mov    ecx,eax
  78809c:	e8 3f 8c 3a 00                                  	call   0xb30ce0
  7880a1:	c3                                              	ret
  7880a2:	cc                                              	int3
  7880a3:	cc                                              	int3
  7880a4:	cc                                              	int3
  7880a5:	cc                                              	int3
  7880a6:	cc                                              	int3
  7880a7:	cc                                              	int3
  7880a8:	cc                                              	int3
  7880a9:	cc                                              	int3
  7880aa:	cc                                              	int3
  7880ab:	cc                                              	int3
  7880ac:	cc                                              	int3
  7880ad:	cc                                              	int3
  7880ae:	cc                                              	int3
  7880af:	cc                                              	int3
