# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788190 (ScriptCore.World::World_ObjectDesigner_RemoveDesignPresetByIdImpl)
Paired Ghidra pseudocode: 00788190_ScriptCore_World_World_ObjectDesigner_RemoveDesignPresetByIdImpl.c
Window: [0x00788190, 0x007881b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007881b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788190: e8 0b 81 3a 00 8b 4c 24 04 51 8b c8 e8 9f 02 3b
007881a0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788190 <.text+0x387190>:
  788190:	e8 0b 81 3a 00                                  	call   0xb302a0
  788195:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  788199:	51                                              	push   ecx
  78819a:	8b c8                                           	mov    ecx,eax
  78819c:	e8 9f 02 3b 00                                  	call   0xb38440
  7881a1:	c3                                              	ret
  7881a2:	cc                                              	int3
  7881a3:	cc                                              	int3
  7881a4:	cc                                              	int3
  7881a5:	cc                                              	int3
  7881a6:	cc                                              	int3
  7881a7:	cc                                              	int3
  7881a8:	cc                                              	int3
  7881a9:	cc                                              	int3
  7881aa:	cc                                              	int3
  7881ab:	cc                                              	int3
  7881ac:	cc                                              	int3
  7881ad:	cc                                              	int3
  7881ae:	cc                                              	int3
  7881af:	cc                                              	int3
