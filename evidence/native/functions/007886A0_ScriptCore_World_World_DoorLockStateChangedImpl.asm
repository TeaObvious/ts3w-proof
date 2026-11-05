# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007886a0 (ScriptCore.World::World_DoorLockStateChangedImpl)
Paired Ghidra pseudocode: 007886A0_ScriptCore_World_World_DoorLockStateChangedImpl.c
Window: [0x007886a0, 0x007886d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007886d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007886a0: e8 cb ee 1a 00 8b 4c 24 08 8b 54 24 04 51 52 8b
007886b0: c8 e8 ca f8 1a 00 85 c0 74 14 80 7c 24 0c 00 74
007886c0: 0d 6a 01 50 6a 0d e8 f5 cf 1a 00 83 c4 0c c3 cc

LINEAR DISASSEMBLY
007886a0 <.text+0x3876a0>:
  7886a0:	e8 cb ee 1a 00                                  	call   0x937570
  7886a5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7886a9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7886ad:	51                                              	push   ecx
  7886ae:	52                                              	push   edx
  7886af:	8b c8                                           	mov    ecx,eax
  7886b1:	e8 ca f8 1a 00                                  	call   0x937f80
  7886b6:	85 c0                                           	test   eax,eax
  7886b8:	74 14                                           	je     0x7886ce
  7886ba:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  7886bf:	74 0d                                           	je     0x7886ce
  7886c1:	6a 01                                           	push   0x1
  7886c3:	50                                              	push   eax
  7886c4:	6a 0d                                           	push   0xd
  7886c6:	e8 f5 cf 1a 00                                  	call   0x9356c0
  7886cb:	83 c4 0c                                        	add    esp,0xc
  7886ce:	c3                                              	ret
  7886cf:	cc                                              	int3
