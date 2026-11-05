# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6910 (ScriptCore.UserToolUtils::UserToolUtils_MainMenuFeaturedSetUpdateImpl)
Paired Ghidra pseudocode: 00CE6910_ScriptCore_UserToolUtils_UserToolUtils_MainMenuFeaturedSetUpdateImpl.c
Window: [0x00ce6910, 0x00ce6940) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6910: 8b 44 24 08 8b 54 24 04 8b 0d 34 e0 1e 01 50 52
00ce6920: e8 db 86 fa ff 85 c0 74 13 8b 0d 60 a9 1e 01 85
00ce6930: c9 74 09 83 c0 58 50 e8 14 e2 ce ff c3 cc cc cc

LINEAR DISASSEMBLY
00ce6910 <.text+0x8e5910>:
  ce6910:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce6914:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce6918:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce691e:	50                                              	push   eax
  ce691f:	52                                              	push   edx
  ce6920:	e8 db 86 fa ff                                  	call   0xc8f000
  ce6925:	85 c0                                           	test   eax,eax
  ce6927:	74 13                                           	je     0xce693c
  ce6929:	8b 0d 60 a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea960
  ce692f:	85 c9                                           	test   ecx,ecx
  ce6931:	74 09                                           	je     0xce693c
  ce6933:	83 c0 58                                        	add    eax,0x58
  ce6936:	50                                              	push   eax
  ce6937:	e8 14 e2 ce ff                                  	call   0x9d4b50
  ce693c:	c3                                              	ret
  ce693d:	cc                                              	int3
  ce693e:	cc                                              	int3
  ce693f:	cc                                              	int3
