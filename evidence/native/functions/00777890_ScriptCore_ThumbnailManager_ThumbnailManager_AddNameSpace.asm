# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777890 (ScriptCore.ThumbnailManager::ThumbnailManager_AddNameSpace)
Paired Ghidra pseudocode: 00777890_ScriptCore_ThumbnailManager_ThumbnailManager_AddNameSpace.c
Window: [0x00777890, 0x007778b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007778b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777890: 8b 0d 30 ec 1e 01 85 c9 74 0a 8b 44 24 04 50 e8
007778a0: ec ce 5d 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777890 <.text+0x376890>:
  777890:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777896:	85 c9                                           	test   ecx,ecx
  777898:	74 0a                                           	je     0x7778a4
  77789a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  77789e:	50                                              	push   eax
  77789f:	e8 ec ce 5d 00                                  	call   0xd54790
  7778a4:	c3                                              	ret
  7778a5:	cc                                              	int3
  7778a6:	cc                                              	int3
  7778a7:	cc                                              	int3
  7778a8:	cc                                              	int3
  7778a9:	cc                                              	int3
  7778aa:	cc                                              	int3
  7778ab:	cc                                              	int3
  7778ac:	cc                                              	int3
  7778ad:	cc                                              	int3
  7778ae:	cc                                              	int3
  7778af:	cc                                              	int3
