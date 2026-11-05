# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x007759d0; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007759d0 (ScriptCore.StreamHost::StreamHost_Close)
Paired Ghidra pseudocode: 007759D0_ScriptCore_StreamHost_StreamHost_Close.c
Window: [0x007759d0, 0x007759e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007759e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007759d0: e9 1b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007759d0 <.text+0x3749d0>:
  7759d0:	e9 1b f5 ff ff                                  	jmp    0x774ef0
  7759d5:	cc                                              	int3
  7759d6:	cc                                              	int3
  7759d7:	cc                                              	int3
  7759d8:	cc                                              	int3
  7759d9:	cc                                              	int3
  7759da:	cc                                              	int3
  7759db:	cc                                              	int3
  7759dc:	cc                                              	int3
  7759dd:	cc                                              	int3
  7759de:	cc                                              	int3
  7759df:	cc                                              	int3
