# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777960 (ScriptCore.ThumbnailManager::ThumbnailManager_AddSimBuilder)
Paired Ghidra pseudocode: 00777960_ScriptCore_ThumbnailManager_ThumbnailManager_AddSimBuilder.c
Window: [0x00777960, 0x00777990) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777960: 56 8b 74 24 08 85 f6 74 22 e8 22 1a ff ff 8b 10
00777970: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b 0d 30 ec 1e
00777980: 01 85 c9 74 06 50 e8 05 0b 5e 00 5e c3 cc cc cc

LINEAR DISASSEMBLY
00777960 <.text+0x376960>:
  777960:	56                                              	push   esi
  777961:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  777965:	85 f6                                           	test   esi,esi
  777967:	74 22                                           	je     0x77798b
  777969:	e8 22 1a ff ff                                  	call   0x769390
  77796e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  777970:	8b c8                                           	mov    ecx,eax
  777972:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  777978:	56                                              	push   esi
  777979:	ff d0                                           	call   eax
  77797b:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777981:	85 c9                                           	test   ecx,ecx
  777983:	74 06                                           	je     0x77798b
  777985:	50                                              	push   eax
  777986:	e8 05 0b 5e 00                                  	call   0xd58490
  77798b:	5e                                              	pop    esi
  77798c:	c3                                              	ret
  77798d:	cc                                              	int3
  77798e:	cc                                              	int3
  77798f:	cc                                              	int3
