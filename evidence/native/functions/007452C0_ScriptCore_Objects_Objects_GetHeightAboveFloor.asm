# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007452c0 (ScriptCore.Objects::Objects_GetHeightAboveFloor)
Paired Ghidra pseudocode: 007452C0_ScriptCore_Objects_Objects_GetHeightAboveFloor.c
Window: [0x007452c0, 0x00745300) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007452c0: e8 ab 22 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
007452d0: c8 e8 aa 2c 1f 00 85 c0 74 16 8b 0d 08 df 1e 01
007452e0: 51 8b c8 e8 78 ef 1e 00 85 c0 74 04 d9 40 24 c3
007452f0: d9 ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007452c0 <.text+0x3442c0>:
  7452c0:	e8 ab 22 1f 00                                  	call   0x937570
  7452c5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7452c9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7452cd:	51                                              	push   ecx
  7452ce:	52                                              	push   edx
  7452cf:	8b c8                                           	mov    ecx,eax
  7452d1:	e8 aa 2c 1f 00                                  	call   0x937f80
  7452d6:	85 c0                                           	test   eax,eax
  7452d8:	74 16                                           	je     0x7452f0
  7452da:	8b 0d 08 df 1e 01                               	mov    ecx,DWORD PTR ds:0x11edf08
  7452e0:	51                                              	push   ecx
  7452e1:	8b c8                                           	mov    ecx,eax
  7452e3:	e8 78 ef 1e 00                                  	call   0x934260
  7452e8:	85 c0                                           	test   eax,eax
  7452ea:	74 04                                           	je     0x7452f0
  7452ec:	d9 40 24                                        	fld    DWORD PTR [eax+0x24]
  7452ef:	c3                                              	ret
  7452f0:	d9 ee                                           	fldz
  7452f2:	c3                                              	ret
  7452f3:	cc                                              	int3
  7452f4:	cc                                              	int3
  7452f5:	cc                                              	int3
  7452f6:	cc                                              	int3
  7452f7:	cc                                              	int3
  7452f8:	cc                                              	int3
  7452f9:	cc                                              	int3
  7452fa:	cc                                              	int3
  7452fb:	cc                                              	int3
  7452fc:	cc                                              	int3
  7452fd:	cc                                              	int3
  7452fe:	cc                                              	int3
  7452ff:	cc                                              	int3
