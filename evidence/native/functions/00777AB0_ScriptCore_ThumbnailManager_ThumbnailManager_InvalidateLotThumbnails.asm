# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777ab0 (ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateLotThumbnails)
Paired Ghidra pseudocode: 00777AB0_ScriptCore_ThumbnailManager_ThumbnailManager_InvalidateLotThumbnails.c
Window: [0x00777ab0, 0x00777ae0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777ab0: 8b 0d 30 ec 1e 01 85 c9 74 1e 8b 44 24 14 8b 54
00777ac0: 24 10 50 8b 44 24 10 52 8b 54 24 10 50 8b 44 24
00777ad0: 10 52 50 e8 78 9d 5e 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777ab0 <.text+0x376ab0>:
  777ab0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777ab6:	85 c9                                           	test   ecx,ecx
  777ab8:	74 1e                                           	je     0x777ad8
  777aba:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  777abe:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777ac2:	50                                              	push   eax
  777ac3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  777ac7:	52                                              	push   edx
  777ac8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777acc:	50                                              	push   eax
  777acd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  777ad1:	52                                              	push   edx
  777ad2:	50                                              	push   eax
  777ad3:	e8 78 9d 5e 00                                  	call   0xd61850
  777ad8:	c3                                              	ret
  777ad9:	cc                                              	int3
  777ada:	cc                                              	int3
  777adb:	cc                                              	int3
  777adc:	cc                                              	int3
  777add:	cc                                              	int3
  777ade:	cc                                              	int3
  777adf:	cc                                              	int3
