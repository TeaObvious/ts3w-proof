# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788050 (ScriptCore.World::World_ObjectDesigner_GetDesignPresetThumbnailImpl)
Paired Ghidra pseudocode: 00788050_ScriptCore_World_World_ObjectDesigner_GetDesignPresetThumbnailImpl.c
Window: [0x00788050, 0x00788070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788050: 8b 44 24 04 50 e8 46 82 3a 00 8b c8 e8 ef 91 3a
00788060: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788050 <.text+0x387050>:
  788050:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  788054:	50                                              	push   eax
  788055:	e8 46 82 3a 00                                  	call   0xb302a0
  78805a:	8b c8                                           	mov    ecx,eax
  78805c:	e8 ef 91 3a 00                                  	call   0xb31250
  788061:	c3                                              	ret
  788062:	cc                                              	int3
  788063:	cc                                              	int3
  788064:	cc                                              	int3
  788065:	cc                                              	int3
  788066:	cc                                              	int3
  788067:	cc                                              	int3
  788068:	cc                                              	int3
  788069:	cc                                              	int3
  78806a:	cc                                              	int3
  78806b:	cc                                              	int3
  78806c:	cc                                              	int3
  78806d:	cc                                              	int3
  78806e:	cc                                              	int3
  78806f:	cc                                              	int3
