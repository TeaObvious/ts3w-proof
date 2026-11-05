# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007461d0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetNumberOfCustomMemoriesShared)
Paired Ghidra pseudocode: 007461D0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetNumberOfCustomMemoriesShared.c
Window: [0x007461d0, 0x00746210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007461d0: 56 68 08 50 1d 01 ff 15 2c 61 f9 00 a1 00 50 1d
007461e0: 01 85 c0 74 18 83 78 30 02 75 12 8b 70 28 68 08
007461f0: 50 1d 01 ff 15 30 61 f9 00 8b c6 5e c3 68 08 50
00746200: 1d 01 33 f6 ff 15 30 61 f9 00 8b c6 5e c3 cc cc

LINEAR DISASSEMBLY
007461d0 <.text+0x3451d0>:
  7461d0:	56                                              	push   esi
  7461d1:	68 08 50 1d 01                                  	push   0x11d5008
  7461d6:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7461dc:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  7461e1:	85 c0                                           	test   eax,eax
  7461e3:	74 18                                           	je     0x7461fd
  7461e5:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
  7461e9:	75 12                                           	jne    0x7461fd
  7461eb:	8b 70 28                                        	mov    esi,DWORD PTR [eax+0x28]
  7461ee:	68 08 50 1d 01                                  	push   0x11d5008
  7461f3:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7461f9:	8b c6                                           	mov    eax,esi
  7461fb:	5e                                              	pop    esi
  7461fc:	c3                                              	ret
  7461fd:	68 08 50 1d 01                                  	push   0x11d5008
  746202:	33 f6                                           	xor    esi,esi
  746204:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  74620a:	8b c6                                           	mov    eax,esi
  74620c:	5e                                              	pop    esi
  74620d:	c3                                              	ret
  74620e:	cc                                              	int3
  74620f:	cc                                              	int3
