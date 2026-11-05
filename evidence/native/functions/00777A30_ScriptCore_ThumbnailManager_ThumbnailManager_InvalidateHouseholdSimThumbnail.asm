# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777a30 (ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateHouseholdSimThumbnail)
Paired Ghidra pseudocode: 00777A30_ScriptCore_ThumbnailManager_ThumbnailManager_InvalidateHouseholdSimThumbnail.c
Window: [0x00777a30, 0x00777a70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777a30: 83 ec 10 56 8b 35 30 ec 1e 01 85 f6 74 2a 8b 44
00777a40: 24 34 8b 4c 24 30 8b 54 24 2c 50 8b 44 24 2c 51
00777a50: 52 50 8d 4c 24 14 51 8d 4c 24 2c e8 80 46 ff ff
00777a60: 50 8b ce e8 18 95 5e 00 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00777a30 <.text+0x376a30>:
  777a30:	83 ec 10                                        	sub    esp,0x10
  777a33:	56                                              	push   esi
  777a34:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  777a3a:	85 f6                                           	test   esi,esi
  777a3c:	74 2a                                           	je     0x777a68
  777a3e:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  777a42:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  777a46:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  777a4a:	50                                              	push   eax
  777a4b:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  777a4f:	51                                              	push   ecx
  777a50:	52                                              	push   edx
  777a51:	50                                              	push   eax
  777a52:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  777a56:	51                                              	push   ecx
  777a57:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  777a5b:	e8 80 46 ff ff                                  	call   0x76c0e0
  777a60:	50                                              	push   eax
  777a61:	8b ce                                           	mov    ecx,esi
  777a63:	e8 18 95 5e 00                                  	call   0xd60f80
  777a68:	5e                                              	pop    esi
  777a69:	83 c4 10                                        	add    esp,0x10
  777a6c:	c3                                              	ret
  777a6d:	cc                                              	int3
  777a6e:	cc                                              	int3
  777a6f:	cc                                              	int3
