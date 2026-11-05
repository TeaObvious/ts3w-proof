# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745380 (ScriptCore.Objects::Objects_GetLotId)
Paired Ghidra pseudocode: 00745380_ScriptCore_Objects_Objects_GetLotId.c
Window: [0x00745380, 0x007453c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007453c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745380: e8 eb 21 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00745390: c8 e8 ea 2b 1f 00 85 c0 74 1b 8b 0d 08 df 1e 01
007453a0: 51 8b c8 e8 b8 ee 1e 00 8b c8 85 c9 74 07 8b 41
007453b0: 08 8b 51 0c c3 33 c0 33 d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745380 <.text+0x344380>:
  745380:	e8 eb 21 1f 00                                  	call   0x937570
  745385:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  745389:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74538d:	51                                              	push   ecx
  74538e:	52                                              	push   edx
  74538f:	8b c8                                           	mov    ecx,eax
  745391:	e8 ea 2b 1f 00                                  	call   0x937f80
  745396:	85 c0                                           	test   eax,eax
  745398:	74 1b                                           	je     0x7453b5
  74539a:	8b 0d 08 df 1e 01                               	mov    ecx,DWORD PTR ds:0x11edf08
  7453a0:	51                                              	push   ecx
  7453a1:	8b c8                                           	mov    ecx,eax
  7453a3:	e8 b8 ee 1e 00                                  	call   0x934260
  7453a8:	8b c8                                           	mov    ecx,eax
  7453aa:	85 c9                                           	test   ecx,ecx
  7453ac:	74 07                                           	je     0x7453b5
  7453ae:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  7453b1:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  7453b4:	c3                                              	ret
  7453b5:	33 c0                                           	xor    eax,eax
  7453b7:	33 d2                                           	xor    edx,edx
  7453b9:	c3                                              	ret
  7453ba:	cc                                              	int3
  7453bb:	cc                                              	int3
  7453bc:	cc                                              	int3
  7453bd:	cc                                              	int3
  7453be:	cc                                              	int3
  7453bf:	cc                                              	int3
