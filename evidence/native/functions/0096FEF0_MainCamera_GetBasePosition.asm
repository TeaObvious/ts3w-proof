# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0096fef0 (MainCamera_GetBasePosition)
Paired Ghidra pseudocode: 0096FEF0_MainCamera_GetBasePosition.c
Window: [0x0096fef0, 0x0096ff40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0096ff40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0096fef0: 55 8b ec 83 e4 f0 8b 45 08 0f 28 81 70 07 00 00
0096ff00: 0f 29 00 8b e5 5d c2 04 00 cc cc cc cc cc cc cc
0096ff10: 80 7c 24 08 00 74 0d 8b 44 24 04 09 81 80 08 00
0096ff20: 00 c2 08 00 8b 54 24 04 f7 d2 21 91 80 08 00 00
0096ff30: c2 08 00 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0096fef0 <.text+0x56eef0>:
  96fef0:	55                                              	push   ebp
  96fef1:	8b ec                                           	mov    ebp,esp
  96fef3:	83 e4 f0                                        	and    esp,0xfffffff0
  96fef6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  96fef9:	0f 28 81 70 07 00 00                            	movaps xmm0,XMMWORD PTR [ecx+0x770]
  96ff00:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  96ff03:	8b e5                                           	mov    esp,ebp
  96ff05:	5d                                              	pop    ebp
  96ff06:	c2 04 00                                        	ret    0x4
  96ff09:	cc                                              	int3
  96ff0a:	cc                                              	int3
  96ff0b:	cc                                              	int3
  96ff0c:	cc                                              	int3
  96ff0d:	cc                                              	int3
  96ff0e:	cc                                              	int3
  96ff0f:	cc                                              	int3
  96ff10:	80 7c 24 08 00                                  	cmp    BYTE PTR [esp+0x8],0x0
  96ff15:	74 0d                                           	je     0x96ff24
  96ff17:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  96ff1b:	09 81 80 08 00 00                               	or     DWORD PTR [ecx+0x880],eax
  96ff21:	c2 08 00                                        	ret    0x8
  96ff24:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  96ff28:	f7 d2                                           	not    edx
  96ff2a:	21 91 80 08 00 00                               	and    DWORD PTR [ecx+0x880],edx
  96ff30:	c2 08 00                                        	ret    0x8
  96ff33:	cc                                              	int3
  96ff34:	cc                                              	int3
  96ff35:	cc                                              	int3
  96ff36:	cc                                              	int3
  96ff37:	cc                                              	int3
  96ff38:	cc                                              	int3
  96ff39:	cc                                              	int3
  96ff3a:	cc                                              	int3
  96ff3b:	cc                                              	int3
  96ff3c:	cc                                              	int3
  96ff3d:	cc                                              	int3
  96ff3e:	cc                                              	int3
  96ff3f:	cc                                              	int3
