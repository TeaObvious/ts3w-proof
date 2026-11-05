# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007439e0 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedStringByString)
Paired Ghidra pseudocode: 007439E0_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocalizedStringByString.c
Window: [0x007439e0, 0x00743a10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007439e0: e8 ab 59 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
007439f0: c8 ff d2 50 e8 b7 7d e5 ff 8b c8 e8 f0 97 e5 ff
00743a00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007439e0 <.text+0x3429e0>:
  7439e0:	e8 ab 59 02 00                                  	call   0x769390
  7439e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7439e9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7439eb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7439ee:	51                                              	push   ecx
  7439ef:	8b c8                                           	mov    ecx,eax
  7439f1:	ff d2                                           	call   edx
  7439f3:	50                                              	push   eax
  7439f4:	e8 b7 7d e5 ff                                  	call   0x59b7b0
  7439f9:	8b c8                                           	mov    ecx,eax
  7439fb:	e8 f0 97 e5 ff                                  	call   0x59d1f0
  743a00:	c3                                              	ret
  743a01:	cc                                              	int3
  743a02:	cc                                              	int3
  743a03:	cc                                              	int3
  743a04:	cc                                              	int3
  743a05:	cc                                              	int3
  743a06:	cc                                              	int3
  743a07:	cc                                              	int3
  743a08:	cc                                              	int3
  743a09:	cc                                              	int3
  743a0a:	cc                                              	int3
  743a0b:	cc                                              	int3
  743a0c:	cc                                              	int3
  743a0d:	cc                                              	int3
  743a0e:	cc                                              	int3
  743a0f:	cc                                              	int3
