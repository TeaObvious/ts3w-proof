# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777b90 (ScriptCore.ThumbnailManager::ThumbnailManager_SetLotView)
Paired Ghidra pseudocode: 00777B90_ScriptCore_ThumbnailManager_ThumbnailManager_SetLotView.c
Window: [0x00777b90, 0x00777bc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777b90: 55 8b ec 83 e4 f0 83 ec 1c 56 8b 35 30 ec 1e 01
00777ba0: 85 f6 74 15 8d 44 24 10 50 8d 4d 08 e8 9f 44 ff
00777bb0: ff 50 8b ce e8 f7 3b 5d 00 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00777b90 <.text+0x376b90>:
  777b90:	55                                              	push   ebp
  777b91:	8b ec                                           	mov    ebp,esp
  777b93:	83 e4 f0                                        	and    esp,0xfffffff0
  777b96:	83 ec 1c                                        	sub    esp,0x1c
  777b99:	56                                              	push   esi
  777b9a:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  777ba0:	85 f6                                           	test   esi,esi
  777ba2:	74 15                                           	je     0x777bb9
  777ba4:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  777ba8:	50                                              	push   eax
  777ba9:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  777bac:	e8 9f 44 ff ff                                  	call   0x76c050
  777bb1:	50                                              	push   eax
  777bb2:	8b ce                                           	mov    ecx,esi
  777bb4:	e8 f7 3b 5d 00                                  	call   0xd4b7b0
  777bb9:	5e                                              	pop    esi
  777bba:	8b e5                                           	mov    esp,ebp
  777bbc:	5d                                              	pop    ebp
  777bbd:	c3                                              	ret
  777bbe:	cc                                              	int3
  777bbf:	cc                                              	int3
