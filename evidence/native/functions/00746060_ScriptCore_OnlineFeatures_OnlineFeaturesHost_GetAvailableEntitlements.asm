# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746060 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetAvailableEntitlements)
Paired Ghidra pseudocode: 00746060_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetAvailableEntitlements.c
Window: [0x00746060, 0x007460a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007460a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746060: 68 08 50 1d 01 ff 15 2c 61 f9 00 a1 00 50 1d 01
00746070: 85 c0 74 19 83 78 30 02 75 13 56 8b 70 2c 68 08
00746080: 50 1d 01 ff 15 30 61 f9 00 8b c6 5e c3 68 08 50
00746090: 1d 01 ff 15 30 61 f9 00 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00746060 <.text+0x345060>:
  746060:	68 08 50 1d 01                                  	push   0x11d5008
  746065:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  74606b:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  746070:	85 c0                                           	test   eax,eax
  746072:	74 19                                           	je     0x74608d
  746074:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
  746078:	75 13                                           	jne    0x74608d
  74607a:	56                                              	push   esi
  74607b:	8b 70 2c                                        	mov    esi,DWORD PTR [eax+0x2c]
  74607e:	68 08 50 1d 01                                  	push   0x11d5008
  746083:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  746089:	8b c6                                           	mov    eax,esi
  74608b:	5e                                              	pop    esi
  74608c:	c3                                              	ret
  74608d:	68 08 50 1d 01                                  	push   0x11d5008
  746092:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  746098:	33 c0                                           	xor    eax,eax
  74609a:	c3                                              	ret
  74609b:	cc                                              	int3
  74609c:	cc                                              	int3
  74609d:	cc                                              	int3
  74609e:	cc                                              	int3
  74609f:	cc                                              	int3
