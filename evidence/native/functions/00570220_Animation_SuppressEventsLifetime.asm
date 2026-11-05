# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00570220 (Animation_SuppressEventsLifetime)
Paired Ghidra pseudocode: 00570220_Animation_SuppressEventsLifetime.c
Window: [0x00570220, 0x00570250) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00570250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00570220: 8b 49 2c 8b 01 8b 50 1c ff e2 cc cc cc cc cc cc
00570230: 8b 49 2c 85 c9 74 0e 8b 01 8b 50 2c ff d2 84 c0
00570240: 74 03 b0 01 c3 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00570220 <.text+0x16f220>:
  570220:	8b 49 2c                                        	mov    ecx,DWORD PTR [ecx+0x2c]
  570223:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  570225:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  570228:	ff e2                                           	jmp    edx
  57022a:	cc                                              	int3
  57022b:	cc                                              	int3
  57022c:	cc                                              	int3
  57022d:	cc                                              	int3
  57022e:	cc                                              	int3
  57022f:	cc                                              	int3
  570230:	8b 49 2c                                        	mov    ecx,DWORD PTR [ecx+0x2c]
  570233:	85 c9                                           	test   ecx,ecx
  570235:	74 0e                                           	je     0x570245
  570237:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  570239:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  57023c:	ff d2                                           	call   edx
  57023e:	84 c0                                           	test   al,al
  570240:	74 03                                           	je     0x570245
  570242:	b0 01                                           	mov    al,0x1
  570244:	c3                                              	ret
  570245:	32 c0                                           	xor    al,al
  570247:	c3                                              	ret
  570248:	cc                                              	int3
  570249:	cc                                              	int3
  57024a:	cc                                              	int3
  57024b:	cc                                              	int3
  57024c:	cc                                              	int3
  57024d:	cc                                              	int3
  57024e:	cc                                              	int3
  57024f:	cc                                              	int3
