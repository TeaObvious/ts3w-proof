# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a85b0 (ScriptCore.CASUtils::CASUtils_SetCameraOffsetImpl)
Paired Ghidra pseudocode: 005A85B0_ScriptCore_CASUtils_CASUtils_SetCameraOffsetImpl.c
Window: [0x005a85b0, 0x005a8600) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a85b0: e8 1b 16 3c 00 8b c8 e8 34 9a 97 00 8b c8 e8 1d
005a85c0: b8 f6 ff 85 c0 74 35 8b 10 8b c8 8b 42 0c 68 53
005a85d0: 5c b5 e5 ff d0 85 c0 74 23 d9 44 24 0c 8b 10 83
005a85e0: ec 0c d9 5c 24 08 8b c8 d9 44 24 14 8b 42 68 d9
005a85f0: 5c 24 04 d9 44 24 10 d9 1c 24 ff d0 c3 cc cc cc

LINEAR DISASSEMBLY
005a85b0 <.text+0x1a75b0>:
  5a85b0:	e8 1b 16 3c 00                                  	call   0x969bd0
  5a85b5:	8b c8                                           	mov    ecx,eax
  5a85b7:	e8 34 9a 97 00                                  	call   0xf21ff0
  5a85bc:	8b c8                                           	mov    ecx,eax
  5a85be:	e8 1d b8 f6 ff                                  	call   0x513de0
  5a85c3:	85 c0                                           	test   eax,eax
  5a85c5:	74 35                                           	je     0x5a85fc
  5a85c7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a85c9:	8b c8                                           	mov    ecx,eax
  5a85cb:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a85ce:	68 53 5c b5 e5                                  	push   0xe5b55c53
  5a85d3:	ff d0                                           	call   eax
  5a85d5:	85 c0                                           	test   eax,eax
  5a85d7:	74 23                                           	je     0x5a85fc
  5a85d9:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  5a85dd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a85df:	83 ec 0c                                        	sub    esp,0xc
  5a85e2:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5a85e6:	8b c8                                           	mov    ecx,eax
  5a85e8:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5a85ec:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  5a85ef:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5a85f3:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  5a85f7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a85fa:	ff d0                                           	call   eax
  5a85fc:	c3                                              	ret
  5a85fd:	cc                                              	int3
  5a85fe:	cc                                              	int3
  5a85ff:	cc                                              	int3
