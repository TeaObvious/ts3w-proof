# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009958c0 (ScriptCore.DownloadContent::DownloadContent_GetChallengeManifestEntry)
Paired Ghidra pseudocode: 009958C0_ScriptCore_DownloadContent_DownloadContent_GetChallengeManifestEntry.c
Window: [0x009958c0, 0x009958f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x009958f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009958c0: a1 68 50 1d 01 85 c0 74 17 8d 48 f8 85 c9 74 10
009958d0: 8b 44 24 08 8b 54 24 04 50 52 e8 71 c0 ee ff c3
009958e0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009958c0 <.text+0x5948c0>:
  9958c0:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  9958c5:	85 c0                                           	test   eax,eax
  9958c7:	74 17                                           	je     0x9958e0
  9958c9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  9958cc:	85 c9                                           	test   ecx,ecx
  9958ce:	74 10                                           	je     0x9958e0
  9958d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  9958d4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  9958d8:	50                                              	push   eax
  9958d9:	52                                              	push   edx
  9958da:	e8 71 c0 ee ff                                  	call   0x881950
  9958df:	c3                                              	ret
  9958e0:	32 c0                                           	xor    al,al
  9958e2:	c3                                              	ret
  9958e3:	cc                                              	int3
  9958e4:	cc                                              	int3
  9958e5:	cc                                              	int3
  9958e6:	cc                                              	int3
  9958e7:	cc                                              	int3
  9958e8:	cc                                              	int3
  9958e9:	cc                                              	int3
  9958ea:	cc                                              	int3
  9958eb:	cc                                              	int3
  9958ec:	cc                                              	int3
  9958ed:	cc                                              	int3
  9958ee:	cc                                              	int3
  9958ef:	cc                                              	int3
