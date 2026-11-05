# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007675e0 (EnqueueSACSNativeDescriptor)
Paired Ghidra pseudocode: 007675E0_EnqueueSACSNativeDescriptor.c
Window: [0x007675e0, 0x00767620) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007675e0: 6a 00 6a 00 6a 00 6a 00 68 2c f7 fd 00 6a 04 e8
007675f0: 0c cf d7 ff 83 c4 18 85 c0 74 14 8b c8 e8 ce fc
00767600: ff ff 8b 4c 24 04 8b 11 50 8b 42 48 ff d0 c3 8b
00767610: 4c 24 04 8b 11 33 c0 50 8b 42 48 ff d0 c3 cc cc

LINEAR DISASSEMBLY
007675e0 <.text+0x3665e0>:
  7675e0:	6a 00                                           	push   0x0
  7675e2:	6a 00                                           	push   0x0
  7675e4:	6a 00                                           	push   0x0
  7675e6:	6a 00                                           	push   0x0
  7675e8:	68 2c f7 fd 00                                  	push   0xfdf72c
  7675ed:	6a 04                                           	push   0x4
  7675ef:	e8 0c cf d7 ff                                  	call   0x4e4500
  7675f4:	83 c4 18                                        	add    esp,0x18
  7675f7:	85 c0                                           	test   eax,eax
  7675f9:	74 14                                           	je     0x76760f
  7675fb:	8b c8                                           	mov    ecx,eax
  7675fd:	e8 ce fc ff ff                                  	call   0x7672d0
  767602:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  767606:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  767608:	50                                              	push   eax
  767609:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  76760c:	ff d0                                           	call   eax
  76760e:	c3                                              	ret
  76760f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  767613:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  767615:	33 c0                                           	xor    eax,eax
  767617:	50                                              	push   eax
  767618:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  76761b:	ff d0                                           	call   eax
  76761d:	c3                                              	ret
  76761e:	cc                                              	int3
  76761f:	cc                                              	int3
