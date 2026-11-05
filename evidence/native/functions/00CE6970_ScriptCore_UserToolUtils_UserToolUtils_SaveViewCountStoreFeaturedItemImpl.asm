# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6970 (ScriptCore.UserToolUtils::UserToolUtils_SaveViewCountStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 00CE6970_ScriptCore_UserToolUtils_UserToolUtils_SaveViewCountStoreFeaturedItemImpl.c
Window: [0x00ce6970, 0x00ce6980) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6970: 8b 0d 34 e0 1e 01 e9 35 56 fa ff cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6970 <.text+0x8e5970>:
  ce6970:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce6976:	e9 35 56 fa ff                                  	jmp    0xc8bfb0
  ce697b:	cc                                              	int3
  ce697c:	cc                                              	int3
  ce697d:	cc                                              	int3
  ce697e:	cc                                              	int3
  ce697f:	cc                                              	int3
