# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746190 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetNumberOfMemoriesShared)
Paired Ghidra pseudocode: 00746190_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetNumberOfMemoriesShared.c
Window: [0x00746190, 0x007461d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007461d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746190: 56 68 08 50 1d 01 ff 15 2c 61 f9 00 a1 00 50 1d
007461a0: 01 85 c0 74 18 83 78 30 02 75 12 8b 70 24 68 08
007461b0: 50 1d 01 ff 15 30 61 f9 00 8b c6 5e c3 68 08 50
007461c0: 1d 01 33 f6 ff 15 30 61 f9 00 8b c6 5e c3 cc cc

LINEAR DISASSEMBLY
00746190 <.text+0x345190>:
  746190:	56                                              	push   esi
  746191:	68 08 50 1d 01                                  	push   0x11d5008
  746196:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  74619c:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  7461a1:	85 c0                                           	test   eax,eax
  7461a3:	74 18                                           	je     0x7461bd
  7461a5:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
  7461a9:	75 12                                           	jne    0x7461bd
  7461ab:	8b 70 24                                        	mov    esi,DWORD PTR [eax+0x24]
  7461ae:	68 08 50 1d 01                                  	push   0x11d5008
  7461b3:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7461b9:	8b c6                                           	mov    eax,esi
  7461bb:	5e                                              	pop    esi
  7461bc:	c3                                              	ret
  7461bd:	68 08 50 1d 01                                  	push   0x11d5008
  7461c2:	33 f6                                           	xor    esi,esi
  7461c4:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7461ca:	8b c6                                           	mov    eax,esi
  7461cc:	5e                                              	pop    esi
  7461cd:	c3                                              	ret
  7461ce:	cc                                              	int3
  7461cf:	cc                                              	int3
