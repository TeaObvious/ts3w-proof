# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073ea80 (GetNativeRegistrationTable_CameraController)
Paired Ghidra pseudocode: 0073EA80_GetNativeRegistrationTable_CameraController.c
Window: [0x0073ea80, 0x0073ea90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073ea90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073ea80: 8b 44 24 04 c7 00 38 ec 15 01 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
0073ea80 <.text+0x33da80>:
  73ea80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  73ea84:	c7 00 38 ec 15 01                               	mov    DWORD PTR [eax],0x115ec38
  73ea8a:	c2 04 00                                        	ret    0x4
  73ea8d:	cc                                              	int3
  73ea8e:	cc                                              	int3
  73ea8f:	cc                                              	int3
