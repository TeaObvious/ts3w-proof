# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777860 (ScriptCore.ThumbnailManager::ThumbnailManager_AddPose)
Paired Ghidra pseudocode: 00777860_ScriptCore_ThumbnailManager_ThumbnailManager_AddPose.c
Window: [0x00777860, 0x00777890) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777860: 83 ec 10 56 8b 35 30 ec 1e 01 85 f6 74 16 8d 44
00777870: 24 04 50 8d 4c 24 1c e8 64 48 ff ff 50 8b ce e8
00777880: 0c 0a 5e 00 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777860 <.text+0x376860>:
  777860:	83 ec 10                                        	sub    esp,0x10
  777863:	56                                              	push   esi
  777864:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  77786a:	85 f6                                           	test   esi,esi
  77786c:	74 16                                           	je     0x777884
  77786e:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  777872:	50                                              	push   eax
  777873:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  777877:	e8 64 48 ff ff                                  	call   0x76c0e0
  77787c:	50                                              	push   eax
  77787d:	8b ce                                           	mov    ecx,esi
  77787f:	e8 0c 0a 5e 00                                  	call   0xd58290
  777884:	5e                                              	pop    esi
  777885:	83 c4 10                                        	add    esp,0x10
  777888:	c3                                              	ret
  777889:	cc                                              	int3
  77788a:	cc                                              	int3
  77788b:	cc                                              	int3
  77788c:	cc                                              	int3
  77788d:	cc                                              	int3
  77788e:	cc                                              	int3
  77788f:	cc                                              	int3
