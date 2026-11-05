# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ce40 (ScriptCore.Simulator::Simulator_DidSecuritySystemFailImpl)
Paired Ghidra pseudocode: 0076CE40_ScriptCore_Simulator_Simulator_DidSecuritySystemFailImpl.c
Window: [0x0076ce40, 0x0076ce50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ce50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ce40: a0 7c 77 1d 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ce40 <.text+0x36be40>:
  76ce40:	a0 7c 77 1d 01                                  	mov    al,ds:0x11d777c
  76ce45:	c3                                              	ret
  76ce46:	cc                                              	int3
  76ce47:	cc                                              	int3
  76ce48:	cc                                              	int3
  76ce49:	cc                                              	int3
  76ce4a:	cc                                              	int3
  76ce4b:	cc                                              	int3
  76ce4c:	cc                                              	int3
  76ce4d:	cc                                              	int3
  76ce4e:	cc                                              	int3
  76ce4f:	cc                                              	int3
