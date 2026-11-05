# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0096ff80 (MainCamera_EnableSkyPitchImmediate)
Paired Ghidra pseudocode: 0096FF80_MainCamera_EnableSkyPitchImmediate.c
Window: [0x0096ff80, 0x0096ffc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0096ffc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0096ff80: 55 8b ec 83 e4 f0 83 ec 10 f3 0f 10 45 08 f3 0f
0096ff90: 11 81 0c 08 00 00 c6 81 09 08 00 00 01 0f 28 89
0096ffa0: d0 07 00 00 0f 29 0c 24 f3 0f 11 04 24 0f 28 04
0096ffb0: 24 0f 29 81 d0 07 00 00 8b e5 5d c2 04 00 cc cc

LINEAR DISASSEMBLY
0096ff80 <.text+0x56ef80>:
  96ff80:	55                                              	push   ebp
  96ff81:	8b ec                                           	mov    ebp,esp
  96ff83:	83 e4 f0                                        	and    esp,0xfffffff0
  96ff86:	83 ec 10                                        	sub    esp,0x10
  96ff89:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  96ff8e:	f3 0f 11 81 0c 08 00 00                         	movss  DWORD PTR [ecx+0x80c],xmm0
  96ff96:	c6 81 09 08 00 00 01                            	mov    BYTE PTR [ecx+0x809],0x1
  96ff9d:	0f 28 89 d0 07 00 00                            	movaps xmm1,XMMWORD PTR [ecx+0x7d0]
  96ffa4:	0f 29 0c 24                                     	movaps XMMWORD PTR [esp],xmm1
  96ffa8:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  96ffad:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  96ffb1:	0f 29 81 d0 07 00 00                            	movaps XMMWORD PTR [ecx+0x7d0],xmm0
  96ffb8:	8b e5                                           	mov    esp,ebp
  96ffba:	5d                                              	pop    ebp
  96ffbb:	c2 04 00                                        	ret    0x4
  96ffbe:	cc                                              	int3
  96ffbf:	cc                                              	int3
