# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009952b0 (ScriptCore.DownloadContent::DownloadContent_SetExportMode)
Paired Ghidra pseudocode: 009952B0_ScriptCore_DownloadContent_DownloadContent_SetExportMode.c
Window: [0x009952b0, 0x009952d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009952d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009952b0: e8 ab db fe ff 85 c0 74 0b 0f b7 4c 24 04 89 88
009952c0: 70 05 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009952b0 <.text+0x5942b0>:
  9952b0:	e8 ab db fe ff                                  	call   0x982e60
  9952b5:	85 c0                                           	test   eax,eax
  9952b7:	74 0b                                           	je     0x9952c4
  9952b9:	0f b7 4c 24 04                                  	movzx  ecx,WORD PTR [esp+0x4]
  9952be:	89 88 70 05 00 00                               	mov    DWORD PTR [eax+0x570],ecx
  9952c4:	c3                                              	ret
  9952c5:	cc                                              	int3
  9952c6:	cc                                              	int3
  9952c7:	cc                                              	int3
  9952c8:	cc                                              	int3
  9952c9:	cc                                              	int3
  9952ca:	cc                                              	int3
  9952cb:	cc                                              	int3
  9952cc:	cc                                              	int3
  9952cd:	cc                                              	int3
  9952ce:	cc                                              	int3
  9952cf:	cc                                              	int3
