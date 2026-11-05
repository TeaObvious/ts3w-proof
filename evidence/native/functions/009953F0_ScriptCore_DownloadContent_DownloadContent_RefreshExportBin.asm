# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009953f0 (ScriptCore.DownloadContent::DownloadContent_RefreshExportBin)
Paired Ghidra pseudocode: 009953F0_ScriptCore_DownloadContent_DownloadContent_RefreshExportBin.c
Window: [0x009953f0, 0x00995440) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009953f0: 8b 0d a4 a6 1e 01 e9 65 06 01 00 cc cc cc cc cc
00995400: 8b 44 24 04 81 78 08 64 89 f8 04 75 0e f6 40 0c
00995410: 01 75 08 b8 01 00 00 00 c2 04 00 33 c0 c2 04 00
00995420: 8b 44 24 04 81 78 08 64 89 f8 04 75 0e f6 40 0c
00995430: 01 74 08 b8 01 00 00 00 c2 04 00 33 c0 c2 04 00

LINEAR DISASSEMBLY
009953f0 <.text+0x5943f0>:
  9953f0:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  9953f6:	e9 65 06 01 00                                  	jmp    0x9a5a60
  9953fb:	cc                                              	int3
  9953fc:	cc                                              	int3
  9953fd:	cc                                              	int3
  9953fe:	cc                                              	int3
  9953ff:	cc                                              	int3
  995400:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  995404:	81 78 08 64 89 f8 04                            	cmp    DWORD PTR [eax+0x8],0x4f88964
  99540b:	75 0e                                           	jne    0x99541b
  99540d:	f6 40 0c 01                                     	test   BYTE PTR [eax+0xc],0x1
  995411:	75 08                                           	jne    0x99541b
  995413:	b8 01 00 00 00                                  	mov    eax,0x1
  995418:	c2 04 00                                        	ret    0x4
  99541b:	33 c0                                           	xor    eax,eax
  99541d:	c2 04 00                                        	ret    0x4
  995420:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  995424:	81 78 08 64 89 f8 04                            	cmp    DWORD PTR [eax+0x8],0x4f88964
  99542b:	75 0e                                           	jne    0x99543b
  99542d:	f6 40 0c 01                                     	test   BYTE PTR [eax+0xc],0x1
  995431:	74 08                                           	je     0x99543b
  995433:	b8 01 00 00 00                                  	mov    eax,0x1
  995438:	c2 04 00                                        	ret    0x4
  99543b:	33 c0                                           	xor    eax,eax
  99543d:	c2 04 00                                        	ret    0x4
