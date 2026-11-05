# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785270 (ScriptCore.World::World_GetManagerIdForObject)
Paired Ghidra pseudocode: 00785270_ScriptCore_World_World_GetManagerIdForObject.c
Window: [0x00785270, 0x007852b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007852b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785270: e8 fb 22 1b 00 85 c0 75 05 33 c0 33 d2 c3 8b 4c
00785280: 24 08 8b 54 24 04 51 52 8b c8 e8 f1 2c 1b 00 85
00785290: c0 74 e6 8b c8 e8 96 9e f0 ff 85 c0 74 09 8b 48
007852a0: 48 8b 50 4c 8b c1 c3 33 c9 33 d2 8b c1 c3 cc cc

LINEAR DISASSEMBLY
00785270 <.text+0x384270>:
  785270:	e8 fb 22 1b 00                                  	call   0x937570
  785275:	85 c0                                           	test   eax,eax
  785277:	75 05                                           	jne    0x78527e
  785279:	33 c0                                           	xor    eax,eax
  78527b:	33 d2                                           	xor    edx,edx
  78527d:	c3                                              	ret
  78527e:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  785282:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785286:	51                                              	push   ecx
  785287:	52                                              	push   edx
  785288:	8b c8                                           	mov    ecx,eax
  78528a:	e8 f1 2c 1b 00                                  	call   0x937f80
  78528f:	85 c0                                           	test   eax,eax
  785291:	74 e6                                           	je     0x785279
  785293:	8b c8                                           	mov    ecx,eax
  785295:	e8 96 9e f0 ff                                  	call   0x68f130
  78529a:	85 c0                                           	test   eax,eax
  78529c:	74 09                                           	je     0x7852a7
  78529e:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  7852a1:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  7852a4:	8b c1                                           	mov    eax,ecx
  7852a6:	c3                                              	ret
  7852a7:	33 c9                                           	xor    ecx,ecx
  7852a9:	33 d2                                           	xor    edx,edx
  7852ab:	8b c1                                           	mov    eax,ecx
  7852ad:	c3                                              	ret
  7852ae:	cc                                              	int3
  7852af:	cc                                              	int3
