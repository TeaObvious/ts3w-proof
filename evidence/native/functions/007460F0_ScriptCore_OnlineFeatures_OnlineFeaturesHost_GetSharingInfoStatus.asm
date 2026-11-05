# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007460f0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSharingInfoStatus)
Paired Ghidra pseudocode: 007460F0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetSharingInfoStatus.c
Window: [0x007460f0, 0x00746130) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007460f0: 56 68 08 50 1d 01 ff 15 2c 61 f9 00 a1 00 50 1d
00746100: 01 85 c0 74 12 8b 70 30 68 08 50 1d 01 ff 15 30
00746110: 61 f9 00 8b c6 5e c3 68 08 50 1d 01 33 f6 ff 15
00746120: 30 61 f9 00 8b c6 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007460f0 <.text+0x3450f0>:
  7460f0:	56                                              	push   esi
  7460f1:	68 08 50 1d 01                                  	push   0x11d5008
  7460f6:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7460fc:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  746101:	85 c0                                           	test   eax,eax
  746103:	74 12                                           	je     0x746117
  746105:	8b 70 30                                        	mov    esi,DWORD PTR [eax+0x30]
  746108:	68 08 50 1d 01                                  	push   0x11d5008
  74610d:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  746113:	8b c6                                           	mov    eax,esi
  746115:	5e                                              	pop    esi
  746116:	c3                                              	ret
  746117:	68 08 50 1d 01                                  	push   0x11d5008
  74611c:	33 f6                                           	xor    esi,esi
  74611e:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  746124:	8b c6                                           	mov    eax,esi
  746126:	5e                                              	pop    esi
  746127:	c3                                              	ret
  746128:	cc                                              	int3
  746129:	cc                                              	int3
  74612a:	cc                                              	int3
  74612b:	cc                                              	int3
  74612c:	cc                                              	int3
  74612d:	cc                                              	int3
  74612e:	cc                                              	int3
  74612f:	cc                                              	int3
