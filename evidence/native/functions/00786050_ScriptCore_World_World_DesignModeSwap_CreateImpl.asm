# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786050 (ScriptCore.World::World_DesignModeSwap_CreateImpl)
Paired Ghidra pseudocode: 00786050_ScriptCore_World_World_DesignModeSwap_CreateImpl.c
Window: [0x00786050, 0x00786060) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786050: e8 4b a2 3a 00 8b c8 e9 44 0f 3b 00 cc cc cc cc

LINEAR DISASSEMBLY
00786050 <.text+0x385050>:
  786050:	e8 4b a2 3a 00                                  	call   0xb302a0
  786055:	8b c8                                           	mov    ecx,eax
  786057:	e9 44 0f 3b 00                                  	jmp    0xb36fa0
  78605c:	cc                                              	int3
  78605d:	cc                                              	int3
  78605e:	cc                                              	int3
  78605f:	cc                                              	int3
