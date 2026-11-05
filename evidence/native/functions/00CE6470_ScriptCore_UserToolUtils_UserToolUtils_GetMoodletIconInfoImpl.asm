# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6470 (ScriptCore.UserToolUtils::UserToolUtils_GetMoodletIconInfoImpl)
Paired Ghidra pseudocode: 00CE6470_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletIconInfoImpl.c
Window: [0x00ce6470, 0x00ce64d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce64d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6470: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 4a 8b 44 24
00ce6480: 18 8b 54 24 1c 89 04 24 8b 44 24 14 89 44 24 08
00ce6490: 89 54 24 04 8b 54 24 20 8d 04 24 50 89 54 24 10
00ce64a0: e8 0b 87 fa ff 85 c0 74 1e 8b 88 28 02 00 00 8b
00ce64b0: 54 24 24 89 0a 8b 80 2c 02 00 00 8b 4c 24 28 89
00ce64c0: 01 b0 01 83 c4 10 c3 32 c0 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00ce6470 <.text+0x8e5470>:
  ce6470:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce6476:	83 ec 10                                        	sub    esp,0x10
  ce6479:	85 c9                                           	test   ecx,ecx
  ce647b:	74 4a                                           	je     0xce64c7
  ce647d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  ce6481:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  ce6485:	89 04 24                                        	mov    DWORD PTR [esp],eax
  ce6488:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce648c:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  ce6490:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  ce6494:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  ce6498:	8d 04 24                                        	lea    eax,[esp]
  ce649b:	50                                              	push   eax
  ce649c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  ce64a0:	e8 0b 87 fa ff                                  	call   0xc8ebb0
  ce64a5:	85 c0                                           	test   eax,eax
  ce64a7:	74 1e                                           	je     0xce64c7
  ce64a9:	8b 88 28 02 00 00                               	mov    ecx,DWORD PTR [eax+0x228]
  ce64af:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  ce64b3:	89 0a                                           	mov    DWORD PTR [edx],ecx
  ce64b5:	8b 80 2c 02 00 00                               	mov    eax,DWORD PTR [eax+0x22c]
  ce64bb:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ce64bf:	89 01                                           	mov    DWORD PTR [ecx],eax
  ce64c1:	b0 01                                           	mov    al,0x1
  ce64c3:	83 c4 10                                        	add    esp,0x10
  ce64c6:	c3                                              	ret
  ce64c7:	32 c0                                           	xor    al,al
  ce64c9:	83 c4 10                                        	add    esp,0x10
  ce64cc:	c3                                              	ret
  ce64cd:	cc                                              	int3
  ce64ce:	cc                                              	int3
  ce64cf:	cc                                              	int3
