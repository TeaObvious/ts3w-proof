# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6940 (ScriptCore.UserToolUtils::UserToolUtils_IncViewCountStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 00CE6940_ScriptCore_UserToolUtils_UserToolUtils_IncViewCountStoreFeaturedItemImpl.c
Window: [0x00ce6940, 0x00ce6970) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6940: 8b 44 24 08 8b 54 24 04 8b 0d 34 e0 1e 01 50 52
00ce6950: e8 ab 86 fa ff 85 c0 74 07 8b c8 e9 00 4d fb ff
00ce6960: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6940 <.text+0x8e5940>:
  ce6940:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce6944:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce6948:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce694e:	50                                              	push   eax
  ce694f:	52                                              	push   edx
  ce6950:	e8 ab 86 fa ff                                  	call   0xc8f000
  ce6955:	85 c0                                           	test   eax,eax
  ce6957:	74 07                                           	je     0xce6960
  ce6959:	8b c8                                           	mov    ecx,eax
  ce695b:	e9 00 4d fb ff                                  	jmp    0xc9b660
  ce6960:	c3                                              	ret
  ce6961:	cc                                              	int3
  ce6962:	cc                                              	int3
  ce6963:	cc                                              	int3
  ce6964:	cc                                              	int3
  ce6965:	cc                                              	int3
  ce6966:	cc                                              	int3
  ce6967:	cc                                              	int3
  ce6968:	cc                                              	int3
  ce6969:	cc                                              	int3
  ce696a:	cc                                              	int3
  ce696b:	cc                                              	int3
  ce696c:	cc                                              	int3
  ce696d:	cc                                              	int3
  ce696e:	cc                                              	int3
  ce696f:	cc                                              	int3
