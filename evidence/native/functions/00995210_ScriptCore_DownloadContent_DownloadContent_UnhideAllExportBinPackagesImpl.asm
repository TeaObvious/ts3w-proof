# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995210 (ScriptCore.DownloadContent::DownloadContent_UnhideAllExportBinPackagesImpl)
Paired Ghidra pseudocode: 00995210_ScriptCore_DownloadContent_DownloadContent_UnhideAllExportBinPackagesImpl.c
Window: [0x00995210, 0x00995230) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995210: 8b 0d a4 a6 1e 01 85 c9 74 05 e9 b1 eb 00 00 32
00995220: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995210 <.text+0x594210>:
  995210:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  995216:	85 c9                                           	test   ecx,ecx
  995218:	74 05                                           	je     0x99521f
  99521a:	e9 b1 eb 00 00                                  	jmp    0x9a3dd0
  99521f:	32 c0                                           	xor    al,al
  995221:	c3                                              	ret
  995222:	cc                                              	int3
  995223:	cc                                              	int3
  995224:	cc                                              	int3
  995225:	cc                                              	int3
  995226:	cc                                              	int3
  995227:	cc                                              	int3
  995228:	cc                                              	int3
  995229:	cc                                              	int3
  99522a:	cc                                              	int3
  99522b:	cc                                              	int3
  99522c:	cc                                              	int3
  99522d:	cc                                              	int3
  99522e:	cc                                              	int3
  99522f:	cc                                              	int3
