# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788440 (ScriptCore.World::World_GetLotIsPartiallyInSea)
Paired Ghidra pseudocode: 00788440_ScriptCore_World_World_GetLotIsPartiallyInSea.c
Window: [0x00788440, 0x00788470) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788440: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788450: 24 04 6a 00 50 52 e8 b5 a3 4d 00 85 c0 74 07 8a
00788460: 80 b0 04 00 00 c3 b0 01 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788440 <.text+0x387440>:
  788440:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788446:	85 c9                                           	test   ecx,ecx
  788448:	74 1c                                           	je     0x788466
  78844a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78844e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788452:	6a 00                                           	push   0x0
  788454:	50                                              	push   eax
  788455:	52                                              	push   edx
  788456:	e8 b5 a3 4d 00                                  	call   0xc62810
  78845b:	85 c0                                           	test   eax,eax
  78845d:	74 07                                           	je     0x788466
  78845f:	8a 80 b0 04 00 00                               	mov    al,BYTE PTR [eax+0x4b0]
  788465:	c3                                              	ret
  788466:	b0 01                                           	mov    al,0x1
  788468:	c3                                              	ret
  788469:	cc                                              	int3
  78846a:	cc                                              	int3
  78846b:	cc                                              	int3
  78846c:	cc                                              	int3
  78846d:	cc                                              	int3
  78846e:	cc                                              	int3
  78846f:	cc                                              	int3
