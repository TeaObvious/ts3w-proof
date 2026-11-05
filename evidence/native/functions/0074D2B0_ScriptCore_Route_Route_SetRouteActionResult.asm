# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d2b0 (ScriptCore.Route::Route_SetRouteActionResult)
Paired Ghidra pseudocode: 0074D2B0_ScriptCore_Route_Route_SetRouteActionResult.c
Window: [0x0074d2b0, 0x0074d2f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d2f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d2b0: 8b 0d c4 50 1d 01 85 c9 74 2f 8b 44 24 04 56 50
0074d2c0: e8 eb e1 ff ff 8b f0 85 f6 74 1d 8b 16 8b 42 10
0074d2d0: 8b ce ff d0 8b 4c 24 0c 89 8e ec 01 00 00 8b 16
0074d2e0: 8b 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d2b0 <.text+0x34c2b0>:
  74d2b0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d2b6:	85 c9                                           	test   ecx,ecx
  74d2b8:	74 2f                                           	je     0x74d2e9
  74d2ba:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  74d2be:	56                                              	push   esi
  74d2bf:	50                                              	push   eax
  74d2c0:	e8 eb e1 ff ff                                  	call   0x74b4b0
  74d2c5:	8b f0                                           	mov    esi,eax
  74d2c7:	85 f6                                           	test   esi,esi
  74d2c9:	74 1d                                           	je     0x74d2e8
  74d2cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d2cd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d2d0:	8b ce                                           	mov    ecx,esi
  74d2d2:	ff d0                                           	call   eax
  74d2d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  74d2d8:	89 8e ec 01 00 00                               	mov    DWORD PTR [esi+0x1ec],ecx
  74d2de:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d2e0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d2e3:	8b ce                                           	mov    ecx,esi
  74d2e5:	5e                                              	pop    esi
  74d2e6:	ff e0                                           	jmp    eax
  74d2e8:	5e                                              	pop    esi
  74d2e9:	c3                                              	ret
  74d2ea:	cc                                              	int3
  74d2eb:	cc                                              	int3
  74d2ec:	cc                                              	int3
  74d2ed:	cc                                              	int3
  74d2ee:	cc                                              	int3
  74d2ef:	cc                                              	int3
