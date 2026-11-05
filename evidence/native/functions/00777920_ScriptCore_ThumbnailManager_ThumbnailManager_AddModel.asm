# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777920 (ScriptCore.ThumbnailManager::ThumbnailManager_AddModel)
Paired Ghidra pseudocode: 00777920_ScriptCore_ThumbnailManager_ThumbnailManager_AddModel.c
Window: [0x00777920, 0x00777960) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777920: 56 8b 74 24 08 85 f6 74 2a e8 62 1a ff ff 85 c0
00777930: 74 21 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85
00777940: c0 74 10 8b 0d 30 ec 1e 01 85 c9 74 06 50 e8 fd
00777950: ce 5d 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777920 <.text+0x376920>:
  777920:	56                                              	push   esi
  777921:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  777925:	85 f6                                           	test   esi,esi
  777927:	74 2a                                           	je     0x777953
  777929:	e8 62 1a ff ff                                  	call   0x769390
  77792e:	85 c0                                           	test   eax,eax
  777930:	74 21                                           	je     0x777953
  777932:	8b 10                                           	mov    edx,DWORD PTR [eax]
  777934:	8b c8                                           	mov    ecx,eax
  777936:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77793c:	56                                              	push   esi
  77793d:	ff d0                                           	call   eax
  77793f:	85 c0                                           	test   eax,eax
  777941:	74 10                                           	je     0x777953
  777943:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777949:	85 c9                                           	test   ecx,ecx
  77794b:	74 06                                           	je     0x777953
  77794d:	50                                              	push   eax
  77794e:	e8 fd ce 5d 00                                  	call   0xd54850
  777953:	5e                                              	pop    esi
  777954:	c3                                              	ret
  777955:	cc                                              	int3
  777956:	cc                                              	int3
  777957:	cc                                              	int3
  777958:	cc                                              	int3
  777959:	cc                                              	int3
  77795a:	cc                                              	int3
  77795b:	cc                                              	int3
  77795c:	cc                                              	int3
  77795d:	cc                                              	int3
  77795e:	cc                                              	int3
  77795f:	cc                                              	int3
