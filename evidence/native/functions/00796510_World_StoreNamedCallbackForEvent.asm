# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00796510 (World_StoreNamedCallbackForEvent)
Paired Ghidra pseudocode: 00796510_World_StoreNamedCallbackForEvent.c
Window: [0x00796510, 0x00796550) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00796550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00796510: 8b 44 24 04 56 8d 34 c0 8b 44 24 0c 03 f6 50 03
00796520: f6 8d 8e 58 7a 1d 01 68 0c 0a 00 01 51 e8 2e a9
00796530: df ff 8b 54 24 1c 52 8d 86 68 7a 1d 01 68 0c 0a
00796540: 00 01 50 e8 18 a9 df ff 83 c4 18 5e c3 cc cc cc

LINEAR DISASSEMBLY
00796510 <.text+0x395510>:
  796510:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  796514:	56                                              	push   esi
  796515:	8d 34 c0                                        	lea    esi,[eax+eax*8]
  796518:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  79651c:	03 f6                                           	add    esi,esi
  79651e:	50                                              	push   eax
  79651f:	03 f6                                           	add    esi,esi
  796521:	8d 8e 58 7a 1d 01                               	lea    ecx,[esi+0x11d7a58]
  796527:	68 0c 0a 00 01                                  	push   0x1000a0c
  79652c:	51                                              	push   ecx
  79652d:	e8 2e a9 df ff                                  	call   0x590e60
  796532:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  796536:	52                                              	push   edx
  796537:	8d 86 68 7a 1d 01                               	lea    eax,[esi+0x11d7a68]
  79653d:	68 0c 0a 00 01                                  	push   0x1000a0c
  796542:	50                                              	push   eax
  796543:	e8 18 a9 df ff                                  	call   0x590e60
  796548:	83 c4 18                                        	add    esp,0x18
  79654b:	5e                                              	pop    esi
  79654c:	c3                                              	ret
  79654d:	cc                                              	int3
  79654e:	cc                                              	int3
  79654f:	cc                                              	int3
