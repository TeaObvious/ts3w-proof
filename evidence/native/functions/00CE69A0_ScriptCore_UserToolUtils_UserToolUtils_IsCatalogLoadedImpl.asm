# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce69a0 (ScriptCore.UserToolUtils::UserToolUtils_IsCatalogLoadedImpl)
Paired Ghidra pseudocode: 00CE69A0_ScriptCore_UserToolUtils_UserToolUtils_IsCatalogLoadedImpl.c
Window: [0x00ce69a0, 0x00ce69b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce69b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce69a0: a1 34 e0 1e 01 85 c0 74 04 8a 40 05 c3 32 c0 c3

LINEAR DISASSEMBLY
00ce69a0 <.text+0x8e59a0>:
  ce69a0:	a1 34 e0 1e 01                                  	mov    eax,ds:0x11ee034
  ce69a5:	85 c0                                           	test   eax,eax
  ce69a7:	74 04                                           	je     0xce69ad
  ce69a9:	8a 40 05                                        	mov    al,BYTE PTR [eax+0x5]
  ce69ac:	c3                                              	ret
  ce69ad:	32 c0                                           	xor    al,al
  ce69af:	c3                                              	ret
