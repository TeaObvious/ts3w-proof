# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995290 (ScriptCore.DownloadContent::DownloadContent_SetSimSaveMode)
Paired Ghidra pseudocode: 00995290_ScriptCore_DownloadContent_DownloadContent_SetSimSaveMode.c
Window: [0x00995290, 0x009952b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009952b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995290: e8 cb db fe ff 8b 88 64 06 00 00 85 c9 74 0a 8b
009952a0: 44 24 04 50 e8 17 38 03 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995290 <.text+0x594290>:
  995290:	e8 cb db fe ff                                  	call   0x982e60
  995295:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
  99529b:	85 c9                                           	test   ecx,ecx
  99529d:	74 0a                                           	je     0x9952a9
  99529f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  9952a3:	50                                              	push   eax
  9952a4:	e8 17 38 03 00                                  	call   0x9c8ac0
  9952a9:	c3                                              	ret
  9952aa:	cc                                              	int3
  9952ab:	cc                                              	int3
  9952ac:	cc                                              	int3
  9952ad:	cc                                              	int3
  9952ae:	cc                                              	int3
  9952af:	cc                                              	int3
