# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x004b40c0 (ScriptCore.Animation::Animation_SetMissingAnimationCallback)
Paired Ghidra pseudocode: 004B40C0_ScriptCore_Animation_Animation_SetMissingAnimationCallback.c
Window: [0x004b40c0, 0x004b40d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x004b40d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
004b40c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
004b40c0 <.text+0xb30c0>:
  4b40c0:	c3                                              	ret
  4b40c1:	cc                                              	int3
  4b40c2:	cc                                              	int3
  4b40c3:	cc                                              	int3
  4b40c4:	cc                                              	int3
  4b40c5:	cc                                              	int3
  4b40c6:	cc                                              	int3
  4b40c7:	cc                                              	int3
  4b40c8:	cc                                              	int3
  4b40c9:	cc                                              	int3
  4b40ca:	cc                                              	int3
  4b40cb:	cc                                              	int3
  4b40cc:	cc                                              	int3
  4b40cd:	cc                                              	int3
  4b40ce:	cc                                              	int3
  4b40cf:	cc                                              	int3
