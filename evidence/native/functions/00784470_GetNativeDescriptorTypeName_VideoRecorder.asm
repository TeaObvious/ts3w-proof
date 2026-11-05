# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784470 (GetNativeDescriptorTypeName_VideoRecorder)
Paired Ghidra pseudocode: 00784470_GetNativeDescriptorTypeName_VideoRecorder.c
Window: [0x00784470, 0x00784480) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784470: b8 1c 14 01 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784470 <.text+0x383470>:
  784470:	b8 1c 14 01 01                                  	mov    eax,0x101141c
  784475:	c3                                              	ret
  784476:	cc                                              	int3
  784477:	cc                                              	int3
  784478:	cc                                              	int3
  784479:	cc                                              	int3
  78447a:	cc                                              	int3
  78447b:	cc                                              	int3
  78447c:	cc                                              	int3
  78447d:	cc                                              	int3
  78447e:	cc                                              	int3
  78447f:	cc                                              	int3
