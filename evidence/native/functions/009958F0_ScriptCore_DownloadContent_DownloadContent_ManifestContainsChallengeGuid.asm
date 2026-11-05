# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009958f0 (ScriptCore.DownloadContent::DownloadContent_ManifestContainsChallengeGuid)
Paired Ghidra pseudocode: 009958F0_ScriptCore_DownloadContent_DownloadContent_ManifestContainsChallengeGuid.c
Window: [0x009958f0, 0x00995920) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009958f0: e8 9b 3a dd ff 8b 4c 24 04 8b 10 8b 52 58 51 8b
00995900: c8 ff d2 8b 0d 68 50 1d 01 85 c9 74 0c 83 c1 f8
00995910: 74 07 50 e8 68 c1 ee ff c3 32 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
009958f0 <.text+0x5948f0>:
  9958f0:	e8 9b 3a dd ff                                  	call   0x769390
  9958f5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  9958f9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9958fb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  9958fe:	51                                              	push   ecx
  9958ff:	8b c8                                           	mov    ecx,eax
  995901:	ff d2                                           	call   edx
  995903:	8b 0d 68 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d5068
  995909:	85 c9                                           	test   ecx,ecx
  99590b:	74 0c                                           	je     0x995919
  99590d:	83 c1 f8                                        	add    ecx,0xfffffff8
  995910:	74 07                                           	je     0x995919
  995912:	50                                              	push   eax
  995913:	e8 68 c1 ee ff                                  	call   0x881a80
  995918:	c3                                              	ret
  995919:	32 c0                                           	xor    al,al
  99591b:	c3                                              	ret
  99591c:	cc                                              	int3
  99591d:	cc                                              	int3
  99591e:	cc                                              	int3
  99591f:	cc                                              	int3
