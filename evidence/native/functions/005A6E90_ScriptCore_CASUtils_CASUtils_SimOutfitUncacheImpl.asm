# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6e90 (ScriptCore.CASUtils::CASUtils_SimOutfitUncacheImpl)
Paired Ghidra pseudocode: 005A6E90_ScriptCore_CASUtils_CASUtils_SimOutfitUncacheImpl.c
Window: [0x005a6e90, 0x005a6ed0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6e90: 83 ec 10 e8 28 4c 04 00 8b 4c 24 1c 8b 54 24 20
005a6ea0: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
005a6eb0: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 8e 7a
005a6ec0: 04 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6e90 <.text+0x1a5e90>:
  5a6e90:	83 ec 10                                        	sub    esp,0x10
  5a6e93:	e8 28 4c 04 00                                  	call   0x5ebac0
  5a6e98:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a6e9c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a6ea0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  5a6ea3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a6ea7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a6eab:	8d 0c 24                                        	lea    ecx,[esp]
  5a6eae:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  5a6eb2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a6eb6:	51                                              	push   ecx
  5a6eb7:	8b c8                                           	mov    ecx,eax
  5a6eb9:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a6ebd:	e8 8e 7a 04 00                                  	call   0x5ee950
  5a6ec2:	83 c4 10                                        	add    esp,0x10
  5a6ec5:	c3                                              	ret
  5a6ec6:	cc                                              	int3
  5a6ec7:	cc                                              	int3
  5a6ec8:	cc                                              	int3
  5a6ec9:	cc                                              	int3
  5a6eca:	cc                                              	int3
  5a6ecb:	cc                                              	int3
  5a6ecc:	cc                                              	int3
  5a6ecd:	cc                                              	int3
  5a6ece:	cc                                              	int3
  5a6ecf:	cc                                              	int3
