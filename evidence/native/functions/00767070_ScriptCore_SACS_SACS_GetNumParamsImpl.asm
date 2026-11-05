# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767070 (ScriptCore.SACS::SACS_GetNumParamsImpl)
Paired Ghidra pseudocode: 00767070_ScriptCore_SACS_SACS_GetNumParamsImpl.c
Window: [0x00767070, 0x007670a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007670a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767070: e8 1b 23 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
00767080: 00 51 8b c8 ff d2 85 c0 74 07 8b c8 e9 ef 8f 09
00767090: 00 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767070 <.text+0x366070>:
  767070:	e8 1b 23 00 00                                  	call   0x769390
  767075:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  767079:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76707b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  767081:	51                                              	push   ecx
  767082:	8b c8                                           	mov    ecx,eax
  767084:	ff d2                                           	call   edx
  767086:	85 c0                                           	test   eax,eax
  767088:	74 07                                           	je     0x767091
  76708a:	8b c8                                           	mov    ecx,eax
  76708c:	e9 ef 8f 09 00                                  	jmp    0x800080
  767091:	33 c0                                           	xor    eax,eax
  767093:	c3                                              	ret
  767094:	cc                                              	int3
  767095:	cc                                              	int3
  767096:	cc                                              	int3
  767097:	cc                                              	int3
  767098:	cc                                              	int3
  767099:	cc                                              	int3
  76709a:	cc                                              	int3
  76709b:	cc                                              	int3
  76709c:	cc                                              	int3
  76709d:	cc                                              	int3
  76709e:	cc                                              	int3
  76709f:	cc                                              	int3
