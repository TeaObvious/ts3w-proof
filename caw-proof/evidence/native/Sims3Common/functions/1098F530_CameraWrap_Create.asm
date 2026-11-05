# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f530 (CameraWrap_Create)
Paired Ghidra pseudocode: 1098F530_CameraWrap_Create.c
Window: [0x1098f530, 0x1098f570) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f530: 6a 00 6a 00 6a 00 6a 00 68 10 72 b9 10 68 30 07
1098f540: 00 00 e8 69 99 f8 ff 83 c4 18 85 c0 74 09 8b c8
1098f550: e8 fb 4c dc ff eb 02 33 c0 8d 48 04 ba 01 00 00
1098f560: 00 f0 0f c1 11 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f530 <.text+0x98e530>:
1098f530:	6a 00                                           	push   0x0
1098f532:	6a 00                                           	push   0x0
1098f534:	6a 00                                           	push   0x0
1098f536:	6a 00                                           	push   0x0
1098f538:	68 10 72 b9 10                                  	push   0x10b97210
1098f53d:	68 30 07 00 00                                  	push   0x730
1098f542:	e8 69 99 f8 ff                                  	call   0x10918eb0
1098f547:	83 c4 18                                        	add    esp,0x18
1098f54a:	85 c0                                           	test   eax,eax
1098f54c:	74 09                                           	je     0x1098f557
1098f54e:	8b c8                                           	mov    ecx,eax
1098f550:	e8 fb 4c dc ff                                  	call   0x10754250
1098f555:	eb 02                                           	jmp    0x1098f559
1098f557:	33 c0                                           	xor    eax,eax
1098f559:	8d 48 04                                        	lea    ecx,[eax+0x4]
1098f55c:	ba 01 00 00 00                                  	mov    edx,0x1
1098f561:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1098f565:	c3                                              	ret
1098f566:	cc                                              	int3
1098f567:	cc                                              	int3
1098f568:	cc                                              	int3
1098f569:	cc                                              	int3
1098f56a:	cc                                              	int3
1098f56b:	cc                                              	int3
1098f56c:	cc                                              	int3
1098f56d:	cc                                              	int3
1098f56e:	cc                                              	int3
1098f56f:	cc                                              	int3
