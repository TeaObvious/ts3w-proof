# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00570250 (Animation_StopWrappedChild)
Paired Ghidra pseudocode: 00570250_Animation_StopWrappedChild.c
Window: [0x00570250, 0x00570270) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00570270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00570250: 8b 49 2c 85 c9 74 07 8b 01 8b 50 04 ff e2 c3 cc
00570260: 8b 49 2c 8b 01 8b 40 0c ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00570250 <.text+0x16f250>:
  570250:	8b 49 2c                                        	mov    ecx,DWORD PTR [ecx+0x2c]
  570253:	85 c9                                           	test   ecx,ecx
  570255:	74 07                                           	je     0x57025e
  570257:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  570259:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  57025c:	ff e2                                           	jmp    edx
  57025e:	c3                                              	ret
  57025f:	cc                                              	int3
  570260:	8b 49 2c                                        	mov    ecx,DWORD PTR [ecx+0x2c]
  570263:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  570265:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  570268:	ff e0                                           	jmp    eax
  57026a:	cc                                              	int3
  57026b:	cc                                              	int3
  57026c:	cc                                              	int3
  57026d:	cc                                              	int3
  57026e:	cc                                              	int3
  57026f:	cc                                              	int3
