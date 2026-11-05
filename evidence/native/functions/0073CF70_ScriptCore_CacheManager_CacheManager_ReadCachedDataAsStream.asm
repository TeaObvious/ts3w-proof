# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cf70 (ScriptCore.CacheManager::CacheManager_ReadCachedDataAsStream)
Paired Ghidra pseudocode: 0073CF70_ScriptCore_CacheManager_CacheManager_ReadCachedDataAsStream.c
Window: [0x0073cf70, 0x0073cf90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073cf90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cf70: 8b 0d 40 4e 1d 01 85 c9 75 03 33 c0 c3 8b 44 24
0073cf80: 04 50 e8 99 fb ff ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073cf70 <.text+0x33bf70>:
  73cf70:	8b 0d 40 4e 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4e40
  73cf76:	85 c9                                           	test   ecx,ecx
  73cf78:	75 03                                           	jne    0x73cf7d
  73cf7a:	33 c0                                           	xor    eax,eax
  73cf7c:	c3                                              	ret
  73cf7d:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  73cf81:	50                                              	push   eax
  73cf82:	e8 99 fb ff ff                                  	call   0x73cb20
  73cf87:	c3                                              	ret
  73cf88:	cc                                              	int3
  73cf89:	cc                                              	int3
  73cf8a:	cc                                              	int3
  73cf8b:	cc                                              	int3
  73cf8c:	cc                                              	int3
  73cf8d:	cc                                              	int3
  73cf8e:	cc                                              	int3
  73cf8f:	cc                                              	int3
