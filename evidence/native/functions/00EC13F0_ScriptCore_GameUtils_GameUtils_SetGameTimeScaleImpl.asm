# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec13f0 (ScriptCore.GameUtils::GameUtils_SetGameTimeScaleImpl)
Paired Ghidra pseudocode: 00EC13F0_ScriptCore_GameUtils_GameUtils_SetGameTimeScaleImpl.c
Window: [0x00ec13f0, 0x00ec1410) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec13f0: d9 44 24 04 51 b9 48 ed 1c 01 d9 1c 24 e8 6e 3a
00ec1400: 6d ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec13f0 <.text+0xac03f0>:
  ec13f0:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  ec13f4:	51                                              	push   ecx
  ec13f5:	b9 48 ed 1c 01                                  	mov    ecx,0x11ced48
  ec13fa:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ec13fd:	e8 6e 3a 6d ff                                  	call   0x594e70
  ec1402:	c3                                              	ret
  ec1403:	cc                                              	int3
  ec1404:	cc                                              	int3
  ec1405:	cc                                              	int3
  ec1406:	cc                                              	int3
  ec1407:	cc                                              	int3
  ec1408:	cc                                              	int3
  ec1409:	cc                                              	int3
  ec140a:	cc                                              	int3
  ec140b:	cc                                              	int3
  ec140c:	cc                                              	int3
  ec140d:	cc                                              	int3
  ec140e:	cc                                              	int3
  ec140f:	cc                                              	int3
