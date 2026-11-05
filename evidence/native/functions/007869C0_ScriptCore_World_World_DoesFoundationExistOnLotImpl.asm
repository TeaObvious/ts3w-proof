# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007869c0 (ScriptCore.World::World_DoesFoundationExistOnLotImpl)
Paired Ghidra pseudocode: 007869C0_ScriptCore_World_World_DoesFoundationExistOnLotImpl.c
Window: [0x007869c0, 0x007869f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007869f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007869c0: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
007869d0: 24 04 6a 00 50 52 e8 35 be 4d 00 85 c0 74 07 8b
007869e0: c8 e9 da 00 33 00 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007869c0 <.text+0x3859c0>:
  7869c0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7869c6:	85 c9                                           	test   ecx,ecx
  7869c8:	74 1c                                           	je     0x7869e6
  7869ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7869ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7869d2:	6a 00                                           	push   0x0
  7869d4:	50                                              	push   eax
  7869d5:	52                                              	push   edx
  7869d6:	e8 35 be 4d 00                                  	call   0xc62810
  7869db:	85 c0                                           	test   eax,eax
  7869dd:	74 07                                           	je     0x7869e6
  7869df:	8b c8                                           	mov    ecx,eax
  7869e1:	e9 da 00 33 00                                  	jmp    0xab6ac0
  7869e6:	32 c0                                           	xor    al,al
  7869e8:	c3                                              	ret
  7869e9:	cc                                              	int3
  7869ea:	cc                                              	int3
  7869eb:	cc                                              	int3
  7869ec:	cc                                              	int3
  7869ed:	cc                                              	int3
  7869ee:	cc                                              	int3
  7869ef:	cc                                              	int3
