# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6e50 (ScriptCore.CASUtils::CASUtils_SimOutfitAddRefImpl)
Paired Ghidra pseudocode: 005A6E50_ScriptCore_CASUtils_CASUtils_SimOutfitAddRefImpl.c
Window: [0x005a6e50, 0x005a6e90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6e50: 83 ec 10 e8 68 4c 04 00 8b 4c 24 1c 8b 54 24 20
005a6e60: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
005a6e70: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 be 75
005a6e80: 04 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6e50 <.text+0x1a5e50>:
  5a6e50:	83 ec 10                                        	sub    esp,0x10
  5a6e53:	e8 68 4c 04 00                                  	call   0x5ebac0
  5a6e58:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a6e5c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a6e60:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  5a6e63:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a6e67:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a6e6b:	8d 0c 24                                        	lea    ecx,[esp]
  5a6e6e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  5a6e72:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a6e76:	51                                              	push   ecx
  5a6e77:	8b c8                                           	mov    ecx,eax
  5a6e79:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a6e7d:	e8 be 75 04 00                                  	call   0x5ee440
  5a6e82:	83 c4 10                                        	add    esp,0x10
  5a6e85:	c3                                              	ret
  5a6e86:	cc                                              	int3
  5a6e87:	cc                                              	int3
  5a6e88:	cc                                              	int3
  5a6e89:	cc                                              	int3
  5a6e8a:	cc                                              	int3
  5a6e8b:	cc                                              	int3
  5a6e8c:	cc                                              	int3
  5a6e8d:	cc                                              	int3
  5a6e8e:	cc                                              	int3
  5a6e8f:	cc                                              	int3
