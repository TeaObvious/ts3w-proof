# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25570 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_SendPassportMessage)
Paired Ghidra pseudocode: 00A25570_DirectTargetOf_SocialFeatures_SocialFeaturesHost_SendPassportMessage.c
Window: [0x00a25570, 0x00a255a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a255a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25570: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 8b 0d
00a25580: a0 bd 1e 01 52 e8 e6 6a b4 ff 8b c8 e8 5f 92 fb
00a25590: ff 8b c8 e8 98 80 01 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a25570 <.text+0x624570>:
  a25570:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  a25574:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  a25578:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  a2557c:	50                                              	push   eax
  a2557d:	51                                              	push   ecx
  a2557e:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a25584:	52                                              	push   edx
  a25585:	e8 e6 6a b4 ff                                  	call   0x56c070
  a2558a:	8b c8                                           	mov    ecx,eax
  a2558c:	e8 5f 92 fb ff                                  	call   0x9de7f0
  a25591:	8b c8                                           	mov    ecx,eax
  a25593:	e8 98 80 01 00                                  	call   0xa3d630
  a25598:	c3                                              	ret
  a25599:	cc                                              	int3
  a2559a:	cc                                              	int3
  a2559b:	cc                                              	int3
  a2559c:	cc                                              	int3
  a2559d:	cc                                              	int3
  a2559e:	cc                                              	int3
  a2559f:	cc                                              	int3
