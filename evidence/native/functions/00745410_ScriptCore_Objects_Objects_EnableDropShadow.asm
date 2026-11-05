# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745410 (ScriptCore.Objects::Objects_EnableDropShadow)
Paired Ghidra pseudocode: 00745410_ScriptCore_Objects_Objects_EnableDropShadow.c
Window: [0x00745410, 0x00745450) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745410: e8 5b 21 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00745420: c8 e8 5a 2b 1f 00 85 c0 74 1e 8b 0d c4 9f 1e 01
00745430: 51 8b c8 e8 28 ee 1e 00 85 c0 74 0c 8b 54 24 0c
00745440: 52 8b c8 e8 98 37 20 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745410 <.text+0x344410>:
  745410:	e8 5b 21 1f 00                                  	call   0x937570
  745415:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  745419:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74541d:	51                                              	push   ecx
  74541e:	52                                              	push   edx
  74541f:	8b c8                                           	mov    ecx,eax
  745421:	e8 5a 2b 1f 00                                  	call   0x937f80
  745426:	85 c0                                           	test   eax,eax
  745428:	74 1e                                           	je     0x745448
  74542a:	8b 0d c4 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc4
  745430:	51                                              	push   ecx
  745431:	8b c8                                           	mov    ecx,eax
  745433:	e8 28 ee 1e 00                                  	call   0x934260
  745438:	85 c0                                           	test   eax,eax
  74543a:	74 0c                                           	je     0x745448
  74543c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  745440:	52                                              	push   edx
  745441:	8b c8                                           	mov    ecx,eax
  745443:	e8 98 37 20 00                                  	call   0x948be0
  745448:	c3                                              	ret
  745449:	cc                                              	int3
  74544a:	cc                                              	int3
  74544b:	cc                                              	int3
  74544c:	cc                                              	int3
  74544d:	cc                                              	int3
  74544e:	cc                                              	int3
  74544f:	cc                                              	int3
