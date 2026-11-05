# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767290 (SACS_BridgeWatchDestructor_767290)
Paired Ghidra pseudocode: 00767290_SACS_BridgeWatchDestructor_767290.c
Window: [0x00767290, 0x007672d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007672d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767290: 56 8b f1 c7 06 fc 7d 00 01 8b 46 1c 85 c0 74 0a
007672a0: 8d 48 08 8b 01 8b 50 04 ff d2 f6 44 24 08 01 c7
007672b0: 06 54 b4 f9 00 74 09 56 e8 b3 3b 00 00 83 c4 04
007672c0: 8b c6 5e c2 04 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767290 <.text+0x366290>:
  767290:	56                                              	push   esi
  767291:	8b f1                                           	mov    esi,ecx
  767293:	c7 06 fc 7d 00 01                               	mov    DWORD PTR [esi],0x1007dfc
  767299:	8b 46 1c                                        	mov    eax,DWORD PTR [esi+0x1c]
  76729c:	85 c0                                           	test   eax,eax
  76729e:	74 0a                                           	je     0x7672aa
  7672a0:	8d 48 08                                        	lea    ecx,[eax+0x8]
  7672a3:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7672a5:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7672a8:	ff d2                                           	call   edx
  7672aa:	f6 44 24 08 01                                  	test   BYTE PTR [esp+0x8],0x1
  7672af:	c7 06 54 b4 f9 00                               	mov    DWORD PTR [esi],0xf9b454
  7672b5:	74 09                                           	je     0x7672c0
  7672b7:	56                                              	push   esi
  7672b8:	e8 b3 3b 00 00                                  	call   0x76ae70
  7672bd:	83 c4 04                                        	add    esp,0x4
  7672c0:	8b c6                                           	mov    eax,esi
  7672c2:	5e                                              	pop    esi
  7672c3:	c2 04 00                                        	ret    0x4
  7672c6:	cc                                              	int3
  7672c7:	cc                                              	int3
  7672c8:	cc                                              	int3
  7672c9:	cc                                              	int3
  7672ca:	cc                                              	int3
  7672cb:	cc                                              	int3
  7672cc:	cc                                              	int3
  7672cd:	cc                                              	int3
  7672ce:	cc                                              	int3
  7672cf:	cc                                              	int3
