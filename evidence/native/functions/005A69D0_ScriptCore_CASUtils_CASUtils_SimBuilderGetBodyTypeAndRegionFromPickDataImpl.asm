# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a69d0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl)
Paired Ghidra pseudocode: 005A69D0_ScriptCore_CASUtils_CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl.c
Window: [0x005a69d0, 0x005a6a20) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a69d0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a69e0: 35 75 2c e8 a8 29 1c 00 8b 10 8b c8 8b 82 cc 00
005a69f0: 00 00 56 ff d0 85 c0 74 16 8b 4c 24 14 8b 54 24
005a6a00: 10 51 8b 4c 24 10 52 51 8b c8 e8 71 a0 03 00 5e
005a6a10: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a69d0 <.text+0x1a59d0>:
  5a69d0:	56                                              	push   esi
  5a69d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a69d5:	8b c6                                           	mov    eax,esi
  5a69d7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a69dc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a69e1:	75 2c                                           	jne    0x5a6a0f
  5a69e3:	e8 a8 29 1c 00                                  	call   0x769390
  5a69e8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a69ea:	8b c8                                           	mov    ecx,eax
  5a69ec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a69f2:	56                                              	push   esi
  5a69f3:	ff d0                                           	call   eax
  5a69f5:	85 c0                                           	test   eax,eax
  5a69f7:	74 16                                           	je     0x5a6a0f
  5a69f9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a69fd:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5a6a01:	51                                              	push   ecx
  5a6a02:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a6a06:	52                                              	push   edx
  5a6a07:	51                                              	push   ecx
  5a6a08:	8b c8                                           	mov    ecx,eax
  5a6a0a:	e8 71 a0 03 00                                  	call   0x5e0a80
  5a6a0f:	5e                                              	pop    esi
  5a6a10:	c3                                              	ret
  5a6a11:	cc                                              	int3
  5a6a12:	cc                                              	int3
  5a6a13:	cc                                              	int3
  5a6a14:	cc                                              	int3
  5a6a15:	cc                                              	int3
  5a6a16:	cc                                              	int3
  5a6a17:	cc                                              	int3
  5a6a18:	cc                                              	int3
  5a6a19:	cc                                              	int3
  5a6a1a:	cc                                              	int3
  5a6a1b:	cc                                              	int3
  5a6a1c:	cc                                              	int3
  5a6a1d:	cc                                              	int3
  5a6a1e:	cc                                              	int3
  5a6a1f:	cc                                              	int3
