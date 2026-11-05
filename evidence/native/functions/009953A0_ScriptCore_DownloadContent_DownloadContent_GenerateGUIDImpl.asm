# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009953a0 (ScriptCore.DownloadContent::DownloadContent_GenerateGUIDImpl)
Paired Ghidra pseudocode: 009953A0_ScriptCore_DownloadContent_DownloadContent_GenerateGUIDImpl.c
Window: [0x009953a0, 0x009953b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x009953b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009953a0: 6a 00 e8 59 aa e3 ff 83 c4 04 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
009953a0 <.text+0x5943a0>:
  9953a0:	6a 00                                           	push   0x0
  9953a2:	e8 59 aa e3 ff                                  	call   0x7cfe00
  9953a7:	83 c4 04                                        	add    esp,0x4
  9953aa:	c3                                              	ret
  9953ab:	cc                                              	int3
  9953ac:	cc                                              	int3
  9953ad:	cc                                              	int3
  9953ae:	cc                                              	int3
  9953af:	cc                                              	int3
