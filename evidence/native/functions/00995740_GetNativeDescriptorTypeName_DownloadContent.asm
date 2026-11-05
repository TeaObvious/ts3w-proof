# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995740 (GetNativeDescriptorTypeName_DownloadContent)
Paired Ghidra pseudocode: 00995740_GetNativeDescriptorTypeName_DownloadContent.c
Window: [0x00995740, 0x00995750) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995740: b8 00 9f 04 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995740 <.text+0x594740>:
  995740:	b8 00 9f 04 01                                  	mov    eax,0x1049f00
  995745:	c3                                              	ret
  995746:	cc                                              	int3
  995747:	cc                                              	int3
  995748:	cc                                              	int3
  995749:	cc                                              	int3
  99574a:	cc                                              	int3
  99574b:	cc                                              	int3
  99574c:	cc                                              	int3
  99574d:	cc                                              	int3
  99574e:	cc                                              	int3
  99574f:	cc                                              	int3
