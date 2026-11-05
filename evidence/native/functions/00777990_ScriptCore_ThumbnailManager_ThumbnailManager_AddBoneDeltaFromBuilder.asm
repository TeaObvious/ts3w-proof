# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777990 (ScriptCore.ThumbnailManager::ThumbnailManager_AddBoneDeltaFromBuilder)
Paired Ghidra pseudocode: 00777990_ScriptCore_ThumbnailManager_ThumbnailManager_AddBoneDeltaFromBuilder.c
Window: [0x00777990, 0x007779e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007779e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777990: 56 8b 74 24 08 85 f6 74 41 e8 f2 19 ff ff 8b 10
007779a0: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b 35 30 ec 1e
007779b0: 01 85 f6 74 25 85 c0 74 21 8d 4c 24 08 51 8b c8
007779c0: e8 eb 9e e6 ff 84 c0 74 11 8b 4c 24 08 e8 2e cf
007779d0: df ff 50 8b ce e8 56 0a 5e 00 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00777990 <.text+0x376990>:
  777990:	56                                              	push   esi
  777991:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  777995:	85 f6                                           	test   esi,esi
  777997:	74 41                                           	je     0x7779da
  777999:	e8 f2 19 ff ff                                  	call   0x769390
  77799e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7779a0:	8b c8                                           	mov    ecx,eax
  7779a2:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7779a8:	56                                              	push   esi
  7779a9:	ff d0                                           	call   eax
  7779ab:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  7779b1:	85 f6                                           	test   esi,esi
  7779b3:	74 25                                           	je     0x7779da
  7779b5:	85 c0                                           	test   eax,eax
  7779b7:	74 21                                           	je     0x7779da
  7779b9:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7779bd:	51                                              	push   ecx
  7779be:	8b c8                                           	mov    ecx,eax
  7779c0:	e8 eb 9e e6 ff                                  	call   0x5e18b0
  7779c5:	84 c0                                           	test   al,al
  7779c7:	74 11                                           	je     0x7779da
  7779c9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7779cd:	e8 2e cf df ff                                  	call   0x574900
  7779d2:	50                                              	push   eax
  7779d3:	8b ce                                           	mov    ecx,esi
  7779d5:	e8 56 0a 5e 00                                  	call   0xd58430
  7779da:	5e                                              	pop    esi
  7779db:	c3                                              	ret
  7779dc:	cc                                              	int3
  7779dd:	cc                                              	int3
  7779de:	cc                                              	int3
  7779df:	cc                                              	int3
