# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995920 (ScriptCore.DownloadContent::DownloadContent_DownloadChallenges)
Paired Ghidra pseudocode: 00995920_ScriptCore_DownloadContent_DownloadContent_DownloadChallenges.c
Window: [0x00995920, 0x00995940) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995920: a1 68 50 1d 01 85 c0 74 0c 8d 48 f8 85 c9 74 05
00995930: e9 eb 3b ef ff 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995920 <.text+0x594920>:
  995920:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  995925:	85 c0                                           	test   eax,eax
  995927:	74 0c                                           	je     0x995935
  995929:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  99592c:	85 c9                                           	test   ecx,ecx
  99592e:	74 05                                           	je     0x995935
  995930:	e9 eb 3b ef ff                                  	jmp    0x889520
  995935:	32 c0                                           	xor    al,al
  995937:	c3                                              	ret
  995938:	cc                                              	int3
  995939:	cc                                              	int3
  99593a:	cc                                              	int3
  99593b:	cc                                              	int3
  99593c:	cc                                              	int3
  99593d:	cc                                              	int3
  99593e:	cc                                              	int3
  99593f:	cc                                              	int3
