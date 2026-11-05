# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777b70 (ScriptCore.ThumbnailManager::ThumbnailManager_CloneObject)
Paired Ghidra pseudocode: 00777B70_ScriptCore_ThumbnailManager_ThumbnailManager_CloneObject.c
Window: [0x00777b70, 0x00777b90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777b70: 8b 0d 30 ec 1e 01 85 c9 75 05 33 c0 33 d2 c3 8b
00777b80: 44 24 08 8b 54 24 04 50 52 e8 62 09 5e 00 c3 cc

LINEAR DISASSEMBLY
00777b70 <.text+0x376b70>:
  777b70:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777b76:	85 c9                                           	test   ecx,ecx
  777b78:	75 05                                           	jne    0x777b7f
  777b7a:	33 c0                                           	xor    eax,eax
  777b7c:	33 d2                                           	xor    edx,edx
  777b7e:	c3                                              	ret
  777b7f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  777b83:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  777b87:	50                                              	push   eax
  777b88:	52                                              	push   edx
  777b89:	e8 62 09 5e 00                                  	call   0xd584f0
  777b8e:	c3                                              	ret
  777b8f:	cc                                              	int3
