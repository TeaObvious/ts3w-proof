# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009958a0 (ScriptCore.DownloadContent::DownloadContent_RefreshChallengeManifest)
Paired Ghidra pseudocode: 009958A0_ScriptCore_DownloadContent_DownloadContent_RefreshChallengeManifest.c
Window: [0x009958a0, 0x009958c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009958c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009958a0: a1 68 50 1d 01 85 c0 74 0c 8d 48 f8 85 c9 74 05
009958b0: e9 7b c0 ee ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009958a0 <.text+0x5948a0>:
  9958a0:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  9958a5:	85 c0                                           	test   eax,eax
  9958a7:	74 0c                                           	je     0x9958b5
  9958a9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  9958ac:	85 c9                                           	test   ecx,ecx
  9958ae:	74 05                                           	je     0x9958b5
  9958b0:	e9 7b c0 ee ff                                  	jmp    0x881930
  9958b5:	c3                                              	ret
  9958b6:	cc                                              	int3
  9958b7:	cc                                              	int3
  9958b8:	cc                                              	int3
  9958b9:	cc                                              	int3
  9958ba:	cc                                              	int3
  9958bb:	cc                                              	int3
  9958bc:	cc                                              	int3
  9958bd:	cc                                              	int3
  9958be:	cc                                              	int3
  9958bf:	cc                                              	int3
