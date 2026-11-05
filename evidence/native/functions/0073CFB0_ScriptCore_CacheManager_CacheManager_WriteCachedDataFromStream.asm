# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cfb0 (ScriptCore.CacheManager::CacheManager_WriteCachedDataFromStream)
Paired Ghidra pseudocode: 0073CFB0_ScriptCore_CacheManager_CacheManager_WriteCachedDataFromStream.c
Window: [0x0073cfb0, 0x0073cfd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073cfd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cfb0: 8b 0d 40 4e 1d 01 85 c9 74 0f 8b 44 24 08 8b 54
0073cfc0: 24 04 50 52 e8 77 fd ff ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073cfb0 <.text+0x33bfb0>:
  73cfb0:	8b 0d 40 4e 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4e40
  73cfb6:	85 c9                                           	test   ecx,ecx
  73cfb8:	74 0f                                           	je     0x73cfc9
  73cfba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  73cfbe:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73cfc2:	50                                              	push   eax
  73cfc3:	52                                              	push   edx
  73cfc4:	e8 77 fd ff ff                                  	call   0x73cd40
  73cfc9:	c3                                              	ret
  73cfca:	cc                                              	int3
  73cfcb:	cc                                              	int3
  73cfcc:	cc                                              	int3
  73cfcd:	cc                                              	int3
  73cfce:	cc                                              	int3
  73cfcf:	cc                                              	int3
