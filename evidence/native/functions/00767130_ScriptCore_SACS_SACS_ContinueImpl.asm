# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767130 (ScriptCore.SACS::SACS_ContinueImpl)
Paired Ghidra pseudocode: 00767130_ScriptCore_SACS_SACS_ContinueImpl.c
Window: [0x00767130, 0x00767160) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767130: e8 5b 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
00767140: 00 51 8b c8 ff d2 85 c0 74 0c 8b 4c 24 08 51 8b
00767150: c8 e8 2a cf 09 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767130 <.text+0x366130>:
  767130:	e8 5b 22 00 00                                  	call   0x769390
  767135:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  767139:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76713b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  767141:	51                                              	push   ecx
  767142:	8b c8                                           	mov    ecx,eax
  767144:	ff d2                                           	call   edx
  767146:	85 c0                                           	test   eax,eax
  767148:	74 0c                                           	je     0x767156
  76714a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76714e:	51                                              	push   ecx
  76714f:	8b c8                                           	mov    ecx,eax
  767151:	e8 2a cf 09 00                                  	call   0x804080
  767156:	c3                                              	ret
  767157:	cc                                              	int3
  767158:	cc                                              	int3
  767159:	cc                                              	int3
  76715a:	cc                                              	int3
  76715b:	cc                                              	int3
  76715c:	cc                                              	int3
  76715d:	cc                                              	int3
  76715e:	cc                                              	int3
  76715f:	cc                                              	int3
