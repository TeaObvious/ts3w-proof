# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787db0 (ScriptCore.World::World_ObjectDesigner_GetHairSwatchThumbnailImpl)
Paired Ghidra pseudocode: 00787DB0_ScriptCore_World_World_ObjectDesigner_GetHairSwatchThumbnailImpl.c
Window: [0x00787db0, 0x00787de0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787db0: e8 eb 84 3a 00 8b 4c 24 18 8b 54 24 14 51 8b 4c
00787dc0: 24 14 52 8b 54 24 14 51 8b 4c 24 14 52 8b 54 24
00787dd0: 14 51 52 8b c8 e8 e6 e5 3a 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00787db0 <.text+0x386db0>:
  787db0:	e8 eb 84 3a 00                                  	call   0xb302a0
  787db5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  787db9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  787dbd:	51                                              	push   ecx
  787dbe:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  787dc2:	52                                              	push   edx
  787dc3:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  787dc7:	51                                              	push   ecx
  787dc8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  787dcc:	52                                              	push   edx
  787dcd:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  787dd1:	51                                              	push   ecx
  787dd2:	52                                              	push   edx
  787dd3:	8b c8                                           	mov    ecx,eax
  787dd5:	e8 e6 e5 3a 00                                  	call   0xb363c0
  787dda:	c3                                              	ret
  787ddb:	cc                                              	int3
  787ddc:	cc                                              	int3
  787ddd:	cc                                              	int3
  787dde:	cc                                              	int3
  787ddf:	cc                                              	int3
