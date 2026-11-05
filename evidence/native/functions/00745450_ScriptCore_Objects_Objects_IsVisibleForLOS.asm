# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745450 (ScriptCore.Objects::Objects_IsVisibleForLOS)
Paired Ghidra pseudocode: 00745450_ScriptCore_Objects_Objects_IsVisibleForLOS.c
Window: [0x00745450, 0x00745490) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745450: e8 1b 21 1f 00 85 c0 75 03 32 c0 c3 8b 4c 24 08
00745460: 8b 54 24 04 51 52 8b c8 e8 13 2b 1f 00 85 c0 74
00745470: e8 8b 0d c8 9f 1e 01 51 8b c8 e8 e1 ed 1e 00 85
00745480: c0 74 d6 8b c8 e9 26 0e 16 00 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745450 <.text+0x344450>:
  745450:	e8 1b 21 1f 00                                  	call   0x937570
  745455:	85 c0                                           	test   eax,eax
  745457:	75 03                                           	jne    0x74545c
  745459:	32 c0                                           	xor    al,al
  74545b:	c3                                              	ret
  74545c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  745460:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  745464:	51                                              	push   ecx
  745465:	52                                              	push   edx
  745466:	8b c8                                           	mov    ecx,eax
  745468:	e8 13 2b 1f 00                                  	call   0x937f80
  74546d:	85 c0                                           	test   eax,eax
  74546f:	74 e8                                           	je     0x745459
  745471:	8b 0d c8 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc8
  745477:	51                                              	push   ecx
  745478:	8b c8                                           	mov    ecx,eax
  74547a:	e8 e1 ed 1e 00                                  	call   0x934260
  74547f:	85 c0                                           	test   eax,eax
  745481:	74 d6                                           	je     0x745459
  745483:	8b c8                                           	mov    ecx,eax
  745485:	e9 26 0e 16 00                                  	jmp    0x8a62b0
  74548a:	cc                                              	int3
  74548b:	cc                                              	int3
  74548c:	cc                                              	int3
  74548d:	cc                                              	int3
  74548e:	cc                                              	int3
  74548f:	cc                                              	int3
