# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995880 (ScriptCore.DownloadContent::DownloadContent_GetNumChallengeManifestEntries)
Paired Ghidra pseudocode: 00995880_ScriptCore_DownloadContent_DownloadContent_GetNumChallengeManifestEntries.c
Window: [0x00995880, 0x009958a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009958a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995880: a1 68 50 1d 01 85 c0 74 0c 8d 48 f8 85 c9 74 05
00995890: e9 5b c0 ee ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995880 <.text+0x594880>:
  995880:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  995885:	85 c0                                           	test   eax,eax
  995887:	74 0c                                           	je     0x995895
  995889:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  99588c:	85 c9                                           	test   ecx,ecx
  99588e:	74 05                                           	je     0x995895
  995890:	e9 5b c0 ee ff                                  	jmp    0x8818f0
  995895:	33 c0                                           	xor    eax,eax
  995897:	c3                                              	ret
  995898:	cc                                              	int3
  995899:	cc                                              	int3
  99589a:	cc                                              	int3
  99589b:	cc                                              	int3
  99589c:	cc                                              	int3
  99589d:	cc                                              	int3
  99589e:	cc                                              	int3
  99589f:	cc                                              	int3
