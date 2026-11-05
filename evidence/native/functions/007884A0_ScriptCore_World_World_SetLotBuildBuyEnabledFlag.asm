# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007884a0 (ScriptCore.World::World_SetLotBuildBuyEnabledFlag)
Paired Ghidra pseudocode: 007884A0_ScriptCore_World_World_SetLotBuildBuyEnabledFlag.c
Window: [0x007884a0, 0x007884d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007884d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007884a0: 8b 0d c4 db 1e 01 85 c9 74 21 8b 44 24 08 8b 54
007884b0: 24 04 6a 00 50 52 e8 55 a3 4d 00 85 c0 74 0c 8b
007884c0: 4c 24 0c 51 8b c8 e8 75 95 32 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
007884a0 <.text+0x3874a0>:
  7884a0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7884a6:	85 c9                                           	test   ecx,ecx
  7884a8:	74 21                                           	je     0x7884cb
  7884aa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7884ae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7884b2:	6a 00                                           	push   0x0
  7884b4:	50                                              	push   eax
  7884b5:	52                                              	push   edx
  7884b6:	e8 55 a3 4d 00                                  	call   0xc62810
  7884bb:	85 c0                                           	test   eax,eax
  7884bd:	74 0c                                           	je     0x7884cb
  7884bf:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7884c3:	51                                              	push   ecx
  7884c4:	8b c8                                           	mov    ecx,eax
  7884c6:	e8 75 95 32 00                                  	call   0xab1a40
  7884cb:	c3                                              	ret
  7884cc:	cc                                              	int3
  7884cd:	cc                                              	int3
  7884ce:	cc                                              	int3
  7884cf:	cc                                              	int3
