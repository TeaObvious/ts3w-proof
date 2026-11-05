# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744b10 (GetNativeDescriptorTypeName_NameGuidMapService)
Paired Ghidra pseudocode: 00744B10_GetNativeDescriptorTypeName_NameGuidMapService.c
Window: [0x00744b10, 0x00744b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744b10: b8 d8 34 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744b10 <.text+0x343b10>:
  744b10:	b8 d8 34 00 01                                  	mov    eax,0x10034d8
  744b15:	c3                                              	ret
  744b16:	cc                                              	int3
  744b17:	cc                                              	int3
  744b18:	cc                                              	int3
  744b19:	cc                                              	int3
  744b1a:	cc                                              	int3
  744b1b:	cc                                              	int3
  744b1c:	cc                                              	int3
  744b1d:	cc                                              	int3
  744b1e:	cc                                              	int3
  744b1f:	cc                                              	int3
