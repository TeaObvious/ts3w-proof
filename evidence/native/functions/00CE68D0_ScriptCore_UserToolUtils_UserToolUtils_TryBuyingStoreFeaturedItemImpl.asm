# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce68d0 (ScriptCore.UserToolUtils::UserToolUtils_TryBuyingStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 00CE68D0_ScriptCore_UserToolUtils_UserToolUtils_TryBuyingStoreFeaturedItemImpl.c
Window: [0x00ce68d0, 0x00ce6910) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce68d0: 8b 44 24 08 8b 54 24 04 8b 0d 34 e0 1e 01 50 52
00ce68e0: e8 1b 87 fa ff 85 c0 74 17 8b 0d 60 a9 1e 01 85
00ce68f0: c9 74 0d 8b 50 48 52 83 c0 58 50 e8 d0 95 ce ff
00ce6900: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce68d0 <.text+0x8e58d0>:
  ce68d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce68d4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce68d8:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce68de:	50                                              	push   eax
  ce68df:	52                                              	push   edx
  ce68e0:	e8 1b 87 fa ff                                  	call   0xc8f000
  ce68e5:	85 c0                                           	test   eax,eax
  ce68e7:	74 17                                           	je     0xce6900
  ce68e9:	8b 0d 60 a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea960
  ce68ef:	85 c9                                           	test   ecx,ecx
  ce68f1:	74 0d                                           	je     0xce6900
  ce68f3:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  ce68f6:	52                                              	push   edx
  ce68f7:	83 c0 58                                        	add    eax,0x58
  ce68fa:	50                                              	push   eax
  ce68fb:	e8 d0 95 ce ff                                  	call   0x9cfed0
  ce6900:	c3                                              	ret
  ce6901:	cc                                              	int3
  ce6902:	cc                                              	int3
  ce6903:	cc                                              	int3
  ce6904:	cc                                              	int3
  ce6905:	cc                                              	int3
  ce6906:	cc                                              	int3
  ce6907:	cc                                              	int3
  ce6908:	cc                                              	int3
  ce6909:	cc                                              	int3
  ce690a:	cc                                              	int3
  ce690b:	cc                                              	int3
  ce690c:	cc                                              	int3
  ce690d:	cc                                              	int3
  ce690e:	cc                                              	int3
  ce690f:	cc                                              	int3
