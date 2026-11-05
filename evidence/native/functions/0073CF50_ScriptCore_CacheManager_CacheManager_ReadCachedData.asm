# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cf50 (ScriptCore.CacheManager::CacheManager_ReadCachedData)
Paired Ghidra pseudocode: 0073CF50_ScriptCore_CacheManager_CacheManager_ReadCachedData.c
Window: [0x0073cf50, 0x0073cf70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073cf70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cf50: 8b 0d 40 4e 1d 01 85 c9 75 03 32 c0 c3 8b 44 24
0073cf60: 08 8b 54 24 04 50 52 e8 74 fa ff ff c3 cc cc cc

LINEAR DISASSEMBLY
0073cf50 <.text+0x33bf50>:
  73cf50:	8b 0d 40 4e 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4e40
  73cf56:	85 c9                                           	test   ecx,ecx
  73cf58:	75 03                                           	jne    0x73cf5d
  73cf5a:	32 c0                                           	xor    al,al
  73cf5c:	c3                                              	ret
  73cf5d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  73cf61:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73cf65:	50                                              	push   eax
  73cf66:	52                                              	push   edx
  73cf67:	e8 74 fa ff ff                                  	call   0x73c9e0
  73cf6c:	c3                                              	ret
  73cf6d:	cc                                              	int3
  73cf6e:	cc                                              	int3
  73cf6f:	cc                                              	int3
