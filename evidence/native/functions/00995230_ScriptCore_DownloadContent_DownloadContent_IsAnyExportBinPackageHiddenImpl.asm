# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995230 (ScriptCore.DownloadContent::DownloadContent_IsAnyExportBinPackageHiddenImpl)
Paired Ghidra pseudocode: 00995230_ScriptCore_DownloadContent_DownloadContent_IsAnyExportBinPackageHiddenImpl.c
Window: [0x00995230, 0x00995250) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995230: 8b 0d a4 a6 1e 01 85 c9 74 05 e9 21 c4 00 00 32
00995240: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995230 <.text+0x594230>:
  995230:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  995236:	85 c9                                           	test   ecx,ecx
  995238:	74 05                                           	je     0x99523f
  99523a:	e9 21 c4 00 00                                  	jmp    0x9a1660
  99523f:	32 c0                                           	xor    al,al
  995241:	c3                                              	ret
  995242:	cc                                              	int3
  995243:	cc                                              	int3
  995244:	cc                                              	int3
  995245:	cc                                              	int3
  995246:	cc                                              	int3
  995247:	cc                                              	int3
  995248:	cc                                              	int3
  995249:	cc                                              	int3
  99524a:	cc                                              	int3
  99524b:	cc                                              	int3
  99524c:	cc                                              	int3
  99524d:	cc                                              	int3
  99524e:	cc                                              	int3
  99524f:	cc                                              	int3
