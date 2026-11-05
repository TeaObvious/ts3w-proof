# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995730 (ScriptCore.DownloadContent::DownloadContent_IsDevBuild)
Paired Ghidra pseudocode: 00995730_ScriptCore_DownloadContent_DownloadContent_IsDevBuild.c
Window: [0x00995730, 0x00995740) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995730: e9 cb 95 01 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995730 <.text+0x594730>:
  995730:	e9 cb 95 01 00                                  	jmp    0x9aed00
  995735:	cc                                              	int3
  995736:	cc                                              	int3
  995737:	cc                                              	int3
  995738:	cc                                              	int3
  995739:	cc                                              	int3
  99573a:	cc                                              	int3
  99573b:	cc                                              	int3
  99573c:	cc                                              	int3
  99573d:	cc                                              	int3
  99573e:	cc                                              	int3
  99573f:	cc                                              	int3
