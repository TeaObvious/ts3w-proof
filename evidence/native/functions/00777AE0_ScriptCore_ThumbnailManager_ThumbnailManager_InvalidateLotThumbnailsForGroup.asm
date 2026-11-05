# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777ae0 (ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateLotThumbnailsForGroup)
Paired Ghidra pseudocode: 00777AE0_ScriptCore_ThumbnailManager_ThumbnailManager_InvalidateLotThumbnailsForGroup.c
Window: [0x00777ae0, 0x00777b10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777ae0: 8b 0d 30 ec 1e 01 85 c9 74 23 8b 44 24 18 8b 54
00777af0: 24 14 50 8b 44 24 14 52 8b 54 24 14 50 8b 44 24
00777b00: 14 52 8b 54 24 14 50 52 e8 53 95 5e 00 c3 cc cc

LINEAR DISASSEMBLY
00777ae0 <.text+0x376ae0>:
  777ae0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777ae6:	85 c9                                           	test   ecx,ecx
  777ae8:	74 23                                           	je     0x777b0d
  777aea:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  777aee:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  777af2:	50                                              	push   eax
  777af3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  777af7:	52                                              	push   edx
  777af8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  777afc:	50                                              	push   eax
  777afd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  777b01:	52                                              	push   edx
  777b02:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  777b06:	50                                              	push   eax
  777b07:	52                                              	push   edx
  777b08:	e8 53 95 5e 00                                  	call   0xd61060
  777b0d:	c3                                              	ret
  777b0e:	cc                                              	int3
  777b0f:	cc                                              	int3
