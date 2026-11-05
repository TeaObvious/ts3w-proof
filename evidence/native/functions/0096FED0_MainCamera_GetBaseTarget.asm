# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0096fed0 (MainCamera_GetBaseTarget)
Paired Ghidra pseudocode: 0096FED0_MainCamera_GetBaseTarget.c
Window: [0x0096fed0, 0x0096fef0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0096fef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0096fed0: 55 8b ec 83 e4 f0 8b 45 08 0f 28 81 80 07 00 00
0096fee0: 0f 29 00 8b e5 5d c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0096fed0 <.text+0x56eed0>:
  96fed0:	55                                              	push   ebp
  96fed1:	8b ec                                           	mov    ebp,esp
  96fed3:	83 e4 f0                                        	and    esp,0xfffffff0
  96fed6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  96fed9:	0f 28 81 80 07 00 00                            	movaps xmm0,XMMWORD PTR [ecx+0x780]
  96fee0:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  96fee3:	8b e5                                           	mov    esp,ebp
  96fee5:	5d                                              	pop    ebp
  96fee6:	c2 04 00                                        	ret    0x4
  96fee9:	cc                                              	int3
  96feea:	cc                                              	int3
  96feeb:	cc                                              	int3
  96feec:	cc                                              	int3
  96feed:	cc                                              	int3
  96feee:	cc                                              	int3
  96feef:	cc                                              	int3
