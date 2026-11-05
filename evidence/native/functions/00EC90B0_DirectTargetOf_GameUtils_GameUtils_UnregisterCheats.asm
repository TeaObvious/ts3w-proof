# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec90b0 (DirectTargetOf_GameUtils_GameUtils_UnregisterCheats)
Paired Ghidra pseudocode: 00EC90B0_DirectTargetOf_GameUtils_GameUtils_UnregisterCheats.c
Window: [0x00ec90b0, 0x00ec90e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec90e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec90b0: e8 db 6e b1 ff 8b 10 8b c8 8b 42 54 ff d0 e8 fd
00ec90c0: af 5e ff e8 38 9c 99 ff e8 13 42 5d ff 85 c0 74
00ec90d0: 0c 68 ac 0a 20 01 8b c8 e8 b3 46 5d ff c3 cc cc

LINEAR DISASSEMBLY
00ec90b0 <.text+0xac80b0>:
  ec90b0:	e8 db 6e b1 ff                                  	call   0x9dff90
  ec90b5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec90b7:	8b c8                                           	mov    ecx,eax
  ec90b9:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
  ec90bc:	ff d0                                           	call   eax
  ec90be:	e8 fd af 5e ff                                  	call   0x4b40c0
  ec90c3:	e8 38 9c 99 ff                                  	call   0x862d00
  ec90c8:	e8 13 42 5d ff                                  	call   0x49d2e0
  ec90cd:	85 c0                                           	test   eax,eax
  ec90cf:	74 0c                                           	je     0xec90dd
  ec90d1:	68 ac 0a 20 01                                  	push   0x1200aac
  ec90d6:	8b c8                                           	mov    ecx,eax
  ec90d8:	e8 b3 46 5d ff                                  	call   0x49d790
  ec90dd:	c3                                              	ret
  ec90de:	cc                                              	int3
  ec90df:	cc                                              	int3
