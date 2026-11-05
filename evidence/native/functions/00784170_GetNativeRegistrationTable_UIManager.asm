# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784170 (GetNativeRegistrationTable_UIManager)
Paired Ghidra pseudocode: 00784170_GetNativeRegistrationTable_UIManager.c
Window: [0x00784170, 0x00784180) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784170: 8b 44 24 04 c7 00 90 2d 16 01 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
00784170 <.text+0x383170>:
  784170:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  784174:	c7 00 90 2d 16 01                               	mov    DWORD PTR [eax],0x1162d90
  78417a:	c2 04 00                                        	ret    0x4
  78417d:	cc                                              	int3
  78417e:	cc                                              	int3
  78417f:	cc                                              	int3
