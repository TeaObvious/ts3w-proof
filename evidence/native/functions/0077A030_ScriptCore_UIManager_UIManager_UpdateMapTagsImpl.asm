# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a030 (ScriptCore.UIManager::UIManager_UpdateMapTagsImpl)
Paired Ghidra pseudocode: 0077A030_ScriptCore_UIManager_UIManager_UpdateMapTagsImpl.c
Window: [0x0077a030, 0x0077a050) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a030: e8 2b ff 06 00 85 c0 74 07 8b c8 e9 a0 09 07 00
0077a040: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a030 <.text+0x379030>:
  77a030:	e8 2b ff 06 00                                  	call   0x7e9f60
  77a035:	85 c0                                           	test   eax,eax
  77a037:	74 07                                           	je     0x77a040
  77a039:	8b c8                                           	mov    ecx,eax
  77a03b:	e9 a0 09 07 00                                  	jmp    0x7ea9e0
  77a040:	c3                                              	ret
  77a041:	cc                                              	int3
  77a042:	cc                                              	int3
  77a043:	cc                                              	int3
  77a044:	cc                                              	int3
  77a045:	cc                                              	int3
  77a046:	cc                                              	int3
  77a047:	cc                                              	int3
  77a048:	cc                                              	int3
  77a049:	cc                                              	int3
  77a04a:	cc                                              	int3
  77a04b:	cc                                              	int3
  77a04c:	cc                                              	int3
  77a04d:	cc                                              	int3
  77a04e:	cc                                              	int3
  77a04f:	cc                                              	int3
