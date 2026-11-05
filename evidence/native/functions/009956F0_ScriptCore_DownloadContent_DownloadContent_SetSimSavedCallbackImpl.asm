# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009956f0 (ScriptCore.DownloadContent::DownloadContent_SetSimSavedCallbackImpl)
Paired Ghidra pseudocode: 009956F0_ScriptCore_DownloadContent_DownloadContent_SetSimSavedCallbackImpl.c
Window: [0x009956f0, 0x00995710) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009956f0: e8 6b d7 fe ff 85 c0 74 14 8b 88 64 06 00 00 85
00995700: c9 74 0a 8b 44 24 04 50 e8 c3 33 03 00 c3 cc cc

LINEAR DISASSEMBLY
009956f0 <.text+0x5946f0>:
  9956f0:	e8 6b d7 fe ff                                  	call   0x982e60
  9956f5:	85 c0                                           	test   eax,eax
  9956f7:	74 14                                           	je     0x99570d
  9956f9:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
  9956ff:	85 c9                                           	test   ecx,ecx
  995701:	74 0a                                           	je     0x99570d
  995703:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  995707:	50                                              	push   eax
  995708:	e8 c3 33 03 00                                  	call   0x9c8ad0
  99570d:	c3                                              	ret
  99570e:	cc                                              	int3
  99570f:	cc                                              	int3
