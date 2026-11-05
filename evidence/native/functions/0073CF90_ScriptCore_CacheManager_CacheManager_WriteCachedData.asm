# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cf90 (ScriptCore.CacheManager::CacheManager_WriteCachedData)
Paired Ghidra pseudocode: 0073CF90_ScriptCore_CacheManager_CacheManager_WriteCachedData.c
Window: [0x0073cf90, 0x0073cfb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073cfb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cf90: 8b 0d 40 4e 1d 01 85 c9 74 14 8b 44 24 0c 8b 54
0073cfa0: 24 08 50 8b 44 24 08 52 50 e8 82 fc ff ff c3 cc

LINEAR DISASSEMBLY
0073cf90 <.text+0x33bf90>:
  73cf90:	8b 0d 40 4e 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4e40
  73cf96:	85 c9                                           	test   ecx,ecx
  73cf98:	74 14                                           	je     0x73cfae
  73cf9a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73cf9e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  73cfa2:	50                                              	push   eax
  73cfa3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  73cfa7:	52                                              	push   edx
  73cfa8:	50                                              	push   eax
  73cfa9:	e8 82 fc ff ff                                  	call   0x73cc30
  73cfae:	c3                                              	ret
  73cfaf:	cc                                              	int3
