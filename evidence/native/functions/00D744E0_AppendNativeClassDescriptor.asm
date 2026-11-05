# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d744e0 (AppendNativeClassDescriptor)
Paired Ghidra pseudocode: 00D744E0_AppendNativeClassDescriptor.c
Window: [0x00d744e0, 0x00d74520) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d74520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d744e0: 56 8d b1 00 16 00 00 6a 00 6a 0c 8d 4e 08 e8 ad
00d744f0: 4f 9f ff 8d 48 08 85 c9 74 06 8b 54 24 08 89 11
00d74500: 89 30 8b 4e 04 89 48 04 8b 56 04 89 02 89 46 04
00d74510: 5e c2 04 00 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d744e0 <.text+0x9734e0>:
  d744e0:	56                                              	push   esi
  d744e1:	8d b1 00 16 00 00                               	lea    esi,[ecx+0x1600]
  d744e7:	6a 00                                           	push   0x0
  d744e9:	6a 0c                                           	push   0xc
  d744eb:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  d744ee:	e8 ad 4f 9f ff                                  	call   0x7694a0
  d744f3:	8d 48 08                                        	lea    ecx,[eax+0x8]
  d744f6:	85 c9                                           	test   ecx,ecx
  d744f8:	74 06                                           	je     0xd74500
  d744fa:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  d744fe:	89 11                                           	mov    DWORD PTR [ecx],edx
  d74500:	89 30                                           	mov    DWORD PTR [eax],esi
  d74502:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  d74505:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  d74508:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  d7450b:	89 02                                           	mov    DWORD PTR [edx],eax
  d7450d:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  d74510:	5e                                              	pop    esi
  d74511:	c2 04 00                                        	ret    0x4
  d74514:	cc                                              	int3
  d74515:	cc                                              	int3
  d74516:	cc                                              	int3
  d74517:	cc                                              	int3
  d74518:	cc                                              	int3
  d74519:	cc                                              	int3
  d7451a:	cc                                              	int3
  d7451b:	cc                                              	int3
  d7451c:	cc                                              	int3
  d7451d:	cc                                              	int3
  d7451e:	cc                                              	int3
  d7451f:	cc                                              	int3
