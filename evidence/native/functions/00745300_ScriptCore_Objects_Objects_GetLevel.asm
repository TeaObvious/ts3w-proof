# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745300 (ScriptCore.Objects::Objects_GetLevel)
Paired Ghidra pseudocode: 00745300_ScriptCore_Objects_Objects_GetLevel.c
Window: [0x00745300, 0x00745340) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745300: e8 6b 22 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00745310: c8 e8 6a 2c 1f 00 85 c0 74 16 8b 0d 08 df 1e 01
00745320: 51 8b c8 e8 38 ef 1e 00 85 c0 74 04 8b 40 18 c3
00745330: b8 ff ff ff 7f c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745300 <.text+0x344300>:
  745300:	e8 6b 22 1f 00                                  	call   0x937570
  745305:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  745309:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74530d:	51                                              	push   ecx
  74530e:	52                                              	push   edx
  74530f:	8b c8                                           	mov    ecx,eax
  745311:	e8 6a 2c 1f 00                                  	call   0x937f80
  745316:	85 c0                                           	test   eax,eax
  745318:	74 16                                           	je     0x745330
  74531a:	8b 0d 08 df 1e 01                               	mov    ecx,DWORD PTR ds:0x11edf08
  745320:	51                                              	push   ecx
  745321:	8b c8                                           	mov    ecx,eax
  745323:	e8 38 ef 1e 00                                  	call   0x934260
  745328:	85 c0                                           	test   eax,eax
  74532a:	74 04                                           	je     0x745330
  74532c:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  74532f:	c3                                              	ret
  745330:	b8 ff ff ff 7f                                  	mov    eax,0x7fffffff
  745335:	c3                                              	ret
  745336:	cc                                              	int3
  745337:	cc                                              	int3
  745338:	cc                                              	int3
  745339:	cc                                              	int3
  74533a:	cc                                              	int3
  74533b:	cc                                              	int3
  74533c:	cc                                              	int3
  74533d:	cc                                              	int3
  74533e:	cc                                              	int3
  74533f:	cc                                              	int3
