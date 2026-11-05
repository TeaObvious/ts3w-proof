# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ce30 (ScriptCore.Simulator::Simulator_DisableYieldAnalysis)
Paired Ghidra pseudocode: 0076CE30_ScriptCore_Simulator_Simulator_DisableYieldAnalysis.c
Window: [0x0076ce30, 0x0076ce40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ce40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ce30: e8 5b c5 ff ff 8b c8 e9 64 cb ff ff cc cc cc cc

LINEAR DISASSEMBLY
0076ce30 <.text+0x36be30>:
  76ce30:	e8 5b c5 ff ff                                  	call   0x769390
  76ce35:	8b c8                                           	mov    ecx,eax
  76ce37:	e9 64 cb ff ff                                  	jmp    0x7699a0
  76ce3c:	cc                                              	int3
  76ce3d:	cc                                              	int3
  76ce3e:	cc                                              	int3
  76ce3f:	cc                                              	int3
