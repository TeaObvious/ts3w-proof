# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995710 (ScriptCore.DownloadContent::DownloadContent_IsCustomContentEnabled)
Paired Ghidra pseudocode: 00995710_ScriptCore_DownloadContent_DownloadContent_IsCustomContentEnabled.c
Window: [0x00995710, 0x00995730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995710: e8 4b d7 fe ff 85 c0 75 03 32 c0 c3 8a 80 d5 00
00995720: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995710 <.text+0x594710>:
  995710:	e8 4b d7 fe ff                                  	call   0x982e60
  995715:	85 c0                                           	test   eax,eax
  995717:	75 03                                           	jne    0x99571c
  995719:	32 c0                                           	xor    al,al
  99571b:	c3                                              	ret
  99571c:	8a 80 d5 00 00 00                               	mov    al,BYTE PTR [eax+0xd5]
  995722:	c3                                              	ret
  995723:	cc                                              	int3
  995724:	cc                                              	int3
  995725:	cc                                              	int3
  995726:	cc                                              	int3
  995727:	cc                                              	int3
  995728:	cc                                              	int3
  995729:	cc                                              	int3
  99572a:	cc                                              	int3
  99572b:	cc                                              	int3
  99572c:	cc                                              	int3
  99572d:	cc                                              	int3
  99572e:	cc                                              	int3
  99572f:	cc                                              	int3
