# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005adca0 (GetNativeRegistrationTable_CASUtils)
Paired Ghidra pseudocode: 005ADCA0_GetNativeRegistrationTable_CASUtils.c
Window: [0x005adca0, 0x005adce0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005adce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005adca0: 8b 44 24 04 c7 00 f8 61 15 01 c2 04 00 cc cc cc
005adcb0: 8b 4c 24 04 8b 41 28 83 e8 01 8b 49 18 74 0a 6a
005adcc0: 03 e8 5a d8 23 00 b0 01 c3 6a 02 e8 50 d8 23 00
005adcd0: b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005adca0 <.text+0x1acca0>:
  5adca0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  5adca4:	c7 00 f8 61 15 01                               	mov    DWORD PTR [eax],0x11561f8
  5adcaa:	c2 04 00                                        	ret    0x4
  5adcad:	cc                                              	int3
  5adcae:	cc                                              	int3
  5adcaf:	cc                                              	int3
  5adcb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5adcb4:	8b 41 28                                        	mov    eax,DWORD PTR [ecx+0x28]
  5adcb7:	83 e8 01                                        	sub    eax,0x1
  5adcba:	8b 49 18                                        	mov    ecx,DWORD PTR [ecx+0x18]
  5adcbd:	74 0a                                           	je     0x5adcc9
  5adcbf:	6a 03                                           	push   0x3
  5adcc1:	e8 5a d8 23 00                                  	call   0x7eb520
  5adcc6:	b0 01                                           	mov    al,0x1
  5adcc8:	c3                                              	ret
  5adcc9:	6a 02                                           	push   0x2
  5adccb:	e8 50 d8 23 00                                  	call   0x7eb520
  5adcd0:	b0 01                                           	mov    al,0x1
  5adcd2:	c3                                              	ret
  5adcd3:	cc                                              	int3
  5adcd4:	cc                                              	int3
  5adcd5:	cc                                              	int3
  5adcd6:	cc                                              	int3
  5adcd7:	cc                                              	int3
  5adcd8:	cc                                              	int3
  5adcd9:	cc                                              	int3
  5adcda:	cc                                              	int3
  5adcdb:	cc                                              	int3
  5adcdc:	cc                                              	int3
  5adcdd:	cc                                              	int3
  5adcde:	cc                                              	int3
  5adcdf:	cc                                              	int3
