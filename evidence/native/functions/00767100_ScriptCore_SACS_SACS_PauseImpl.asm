# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767100 (ScriptCore.SACS::SACS_PauseImpl)
Paired Ghidra pseudocode: 00767100_ScriptCore_SACS_SACS_PauseImpl.c
Window: [0x00767100, 0x00767130) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767100: e8 8b 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
00767110: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
00767120: c8 e8 ba ce 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767100 <.text+0x366100>:
  767100:	e8 8b 22 00 00                                  	call   0x769390
  767105:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  767109:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76710b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  767111:	51                                              	push   ecx
  767112:	8b c8                                           	mov    ecx,eax
  767114:	ff d2                                           	call   edx
  767116:	85 c0                                           	test   eax,eax
  767118:	74 0d                                           	je     0x767127
  76711a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76711e:	51                                              	push   ecx
  76711f:	8b c8                                           	mov    ecx,eax
  767121:	e8 ba ce 09 00                                  	call   0x803fe0
  767126:	c3                                              	ret
  767127:	32 c0                                           	xor    al,al
  767129:	c3                                              	ret
  76712a:	cc                                              	int3
  76712b:	cc                                              	int3
  76712c:	cc                                              	int3
  76712d:	cc                                              	int3
  76712e:	cc                                              	int3
  76712f:	cc                                              	int3
