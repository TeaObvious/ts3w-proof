# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00766fd0 (ScriptCore.SACS::SACS_SetParamImpl)
Paired Ghidra pseudocode: 00766FD0_ScriptCore_SACS_SACS_SetParamImpl.c
Window: [0x00766fd0, 0x00767000) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00766fd0: e8 bb 23 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
00766fe0: 00 51 8b c8 ff d2 85 c0 74 11 8b 4c 24 0c 8b 54
00766ff0: 24 08 51 52 8b c8 e8 85 ab 09 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00766fd0 <.text+0x365fd0>:
  766fd0:	e8 bb 23 00 00                                  	call   0x769390
  766fd5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  766fd9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  766fdb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  766fe1:	51                                              	push   ecx
  766fe2:	8b c8                                           	mov    ecx,eax
  766fe4:	ff d2                                           	call   edx
  766fe6:	85 c0                                           	test   eax,eax
  766fe8:	74 11                                           	je     0x766ffb
  766fea:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  766fee:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  766ff2:	51                                              	push   ecx
  766ff3:	52                                              	push   edx
  766ff4:	8b c8                                           	mov    ecx,eax
  766ff6:	e8 85 ab 09 00                                  	call   0x801b80
  766ffb:	c3                                              	ret
  766ffc:	cc                                              	int3
  766ffd:	cc                                              	int3
  766ffe:	cc                                              	int3
  766fff:	cc                                              	int3
