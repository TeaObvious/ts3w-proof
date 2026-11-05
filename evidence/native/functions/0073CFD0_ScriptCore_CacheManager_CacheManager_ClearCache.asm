# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cfd0 (ScriptCore.CacheManager::CacheManager_ClearCache)
Paired Ghidra pseudocode: 0073CFD0_ScriptCore_CacheManager_CacheManager_ClearCache.c
Window: [0x0073cfd0, 0x0073cfe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073cfe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cfd0: 8b 0d 40 4e 1d 01 85 c9 74 05 e9 e1 fe ff ff c3

LINEAR DISASSEMBLY
0073cfd0 <.text+0x33bfd0>:
  73cfd0:	8b 0d 40 4e 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4e40
  73cfd6:	85 c9                                           	test   ecx,ecx
  73cfd8:	74 05                                           	je     0x73cfdf
  73cfda:	e9 e1 fe ff ff                                  	jmp    0x73cec0
  73cfdf:	c3                                              	ret
