# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009953d0 (ScriptCore.DownloadContent::DownloadContent_DeleteLotContentsImpl)
Paired Ghidra pseudocode: 009953D0_ScriptCore_DownloadContent_DownloadContent_DeleteLotContentsImpl.c
Window: [0x009953d0, 0x009953f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009953f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009953d0: 8b 0d f8 c4 1e 01 85 c9 74 10 8b 44 24 08 8b 54
009953e0: 24 04 50 52 e8 37 f9 13 00 c3 32 c0 c3 cc cc cc

LINEAR DISASSEMBLY
009953d0 <.text+0x5943d0>:
  9953d0:	8b 0d f8 c4 1e 01                               	mov    ecx,DWORD PTR ds:0x11ec4f8
  9953d6:	85 c9                                           	test   ecx,ecx
  9953d8:	74 10                                           	je     0x9953ea
  9953da:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  9953de:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  9953e2:	50                                              	push   eax
  9953e3:	52                                              	push   edx
  9953e4:	e8 37 f9 13 00                                  	call   0xad4d20
  9953e9:	c3                                              	ret
  9953ea:	32 c0                                           	xor    al,al
  9953ec:	c3                                              	ret
  9953ed:	cc                                              	int3
  9953ee:	cc                                              	int3
  9953ef:	cc                                              	int3
