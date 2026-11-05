# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007778f0 (ScriptCore.ThumbnailManager::ThumbnailManager_AddRig)
Paired Ghidra pseudocode: 007778F0_ScriptCore_ThumbnailManager_ThumbnailManager_AddRig.c
Window: [0x007778f0, 0x00777920) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007778f0: 83 ec 10 56 8b 35 30 ec 1e 01 85 f6 74 16 8d 44
00777900: 24 04 50 8d 4c 24 1c e8 d4 47 ff ff 50 8b ce e8
00777910: 4c 0a 5e 00 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007778f0 <.text+0x3768f0>:
  7778f0:	83 ec 10                                        	sub    esp,0x10
  7778f3:	56                                              	push   esi
  7778f4:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  7778fa:	85 f6                                           	test   esi,esi
  7778fc:	74 16                                           	je     0x777914
  7778fe:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  777902:	50                                              	push   eax
  777903:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  777907:	e8 d4 47 ff ff                                  	call   0x76c0e0
  77790c:	50                                              	push   eax
  77790d:	8b ce                                           	mov    ecx,esi
  77790f:	e8 4c 0a 5e 00                                  	call   0xd58360
  777914:	5e                                              	pop    esi
  777915:	83 c4 10                                        	add    esp,0x10
  777918:	c3                                              	ret
  777919:	cc                                              	int3
  77791a:	cc                                              	int3
  77791b:	cc                                              	int3
  77791c:	cc                                              	int3
  77791d:	cc                                              	int3
  77791e:	cc                                              	int3
  77791f:	cc                                              	int3
