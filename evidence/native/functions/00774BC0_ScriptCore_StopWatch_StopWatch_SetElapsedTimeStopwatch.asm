# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774bc0 (ScriptCore.StopWatch::StopWatch_SetElapsedTimeStopwatch)
Paired Ghidra pseudocode: 00774BC0_ScriptCore_StopWatch_StopWatch_SetElapsedTimeStopwatch.c
Window: [0x00774bc0, 0x00774c00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774bc0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774bd0: 10 75 24 e8 b8 47 ff ff 8b 10 8b c8 8b 82 cc 00
00774be0: 00 00 56 ff d0 85 c0 74 0e 8b 4c 24 0c 6a 00 51
00774bf0: 8b c8 e8 79 eb d7 ff 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774bc0 <.text+0x373bc0>:
  774bc0:	56                                              	push   esi
  774bc1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774bc5:	8b c6                                           	mov    eax,esi
  774bc7:	25 00 00 00 ff                                  	and    eax,0xff000000
  774bcc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774bd1:	75 24                                           	jne    0x774bf7
  774bd3:	e8 b8 47 ff ff                                  	call   0x769390
  774bd8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774bda:	8b c8                                           	mov    ecx,eax
  774bdc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774be2:	56                                              	push   esi
  774be3:	ff d0                                           	call   eax
  774be5:	85 c0                                           	test   eax,eax
  774be7:	74 0e                                           	je     0x774bf7
  774be9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  774bed:	6a 00                                           	push   0x0
  774bef:	51                                              	push   ecx
  774bf0:	8b c8                                           	mov    ecx,eax
  774bf2:	e8 79 eb d7 ff                                  	call   0x4f3770
  774bf7:	5e                                              	pop    esi
  774bf8:	c3                                              	ret
  774bf9:	cc                                              	int3
  774bfa:	cc                                              	int3
  774bfb:	cc                                              	int3
  774bfc:	cc                                              	int3
  774bfd:	cc                                              	int3
  774bfe:	cc                                              	int3
  774bff:	cc                                              	int3
