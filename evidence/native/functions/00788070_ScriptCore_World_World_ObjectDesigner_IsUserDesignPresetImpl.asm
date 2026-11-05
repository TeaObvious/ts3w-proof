# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788070 (ScriptCore.World::World_ObjectDesigner_IsUserDesignPresetImpl)
Paired Ghidra pseudocode: 00788070_ScriptCore_World_World_ObjectDesigner_IsUserDesignPresetImpl.c
Window: [0x00788070, 0x00788090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788070: 8b 44 24 04 50 e8 26 82 3a 00 8b c8 e8 cf 8b 3a
00788080: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788070 <.text+0x387070>:
  788070:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  788074:	50                                              	push   eax
  788075:	e8 26 82 3a 00                                  	call   0xb302a0
  78807a:	8b c8                                           	mov    ecx,eax
  78807c:	e8 cf 8b 3a 00                                  	call   0xb30c50
  788081:	c3                                              	ret
  788082:	cc                                              	int3
  788083:	cc                                              	int3
  788084:	cc                                              	int3
  788085:	cc                                              	int3
  788086:	cc                                              	int3
  788087:	cc                                              	int3
  788088:	cc                                              	int3
  788089:	cc                                              	int3
  78808a:	cc                                              	int3
  78808b:	cc                                              	int3
  78808c:	cc                                              	int3
  78808d:	cc                                              	int3
  78808e:	cc                                              	int3
  78808f:	cc                                              	int3
