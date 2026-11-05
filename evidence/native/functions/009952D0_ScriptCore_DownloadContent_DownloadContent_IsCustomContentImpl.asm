# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009952d0 (ScriptCore.DownloadContent::DownloadContent_IsCustomContentImpl)
Paired Ghidra pseudocode: 009952D0_ScriptCore_DownloadContent_DownloadContent_IsCustomContentImpl.c
Window: [0x009952d0, 0x00995310) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009952d0: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 00 6e dd ff
009952e0: 50 e8 2a ea ff ff 83 c4 04 83 f8 03 74 0f 83 f8
009952f0: 02 74 0a 85 c0 74 06 33 c0 83 c4 10 c3 b8 01 00
00995300: 00 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009952d0 <.text+0x5942d0>:
  9952d0:	83 ec 10                                        	sub    esp,0x10
  9952d3:	8d 04 24                                        	lea    eax,[esp]
  9952d6:	50                                              	push   eax
  9952d7:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  9952db:	e8 00 6e dd ff                                  	call   0x76c0e0
  9952e0:	50                                              	push   eax
  9952e1:	e8 2a ea ff ff                                  	call   0x993d10
  9952e6:	83 c4 04                                        	add    esp,0x4
  9952e9:	83 f8 03                                        	cmp    eax,0x3
  9952ec:	74 0f                                           	je     0x9952fd
  9952ee:	83 f8 02                                        	cmp    eax,0x2
  9952f1:	74 0a                                           	je     0x9952fd
  9952f3:	85 c0                                           	test   eax,eax
  9952f5:	74 06                                           	je     0x9952fd
  9952f7:	33 c0                                           	xor    eax,eax
  9952f9:	83 c4 10                                        	add    esp,0x10
  9952fc:	c3                                              	ret
  9952fd:	b8 01 00 00 00                                  	mov    eax,0x1
  995302:	83 c4 10                                        	add    esp,0x10
  995305:	c3                                              	ret
  995306:	cc                                              	int3
  995307:	cc                                              	int3
  995308:	cc                                              	int3
  995309:	cc                                              	int3
  99530a:	cc                                              	int3
  99530b:	cc                                              	int3
  99530c:	cc                                              	int3
  99530d:	cc                                              	int3
  99530e:	cc                                              	int3
  99530f:	cc                                              	int3
