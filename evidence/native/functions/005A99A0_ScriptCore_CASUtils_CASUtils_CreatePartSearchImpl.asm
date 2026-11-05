# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a99a0 (ScriptCore.CASUtils::CASUtils_CreatePartSearchImpl)
Paired Ghidra pseudocode: 005A99A0_ScriptCore_CASUtils_CASUtils_CreatePartSearchImpl.c
Window: [0x005a99a0, 0x005a9a00) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a99a0: 56 e8 ea f9 1b 00 6a 00 6a 00 6a 00 6a 00 68 04
005a99b0: f8 fd 00 6a 18 8b f0 e8 44 ab f3 ff 83 c4 18 85
005a99c0: c0 74 1d 68 cb ee 4a 03 8b c8 e8 11 ff ff ff 8b
005a99d0: 16 6a 35 50 8b 82 c8 00 00 00 8b ce ff d0 5e c3
005a99e0: 8b 16 33 c0 6a 35 50 8b 82 c8 00 00 00 8b ce ff
005a99f0: d0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a99a0 <.text+0x1a89a0>:
  5a99a0:	56                                              	push   esi
  5a99a1:	e8 ea f9 1b 00                                  	call   0x769390
  5a99a6:	6a 00                                           	push   0x0
  5a99a8:	6a 00                                           	push   0x0
  5a99aa:	6a 00                                           	push   0x0
  5a99ac:	6a 00                                           	push   0x0
  5a99ae:	68 04 f8 fd 00                                  	push   0xfdf804
  5a99b3:	6a 18                                           	push   0x18
  5a99b5:	8b f0                                           	mov    esi,eax
  5a99b7:	e8 44 ab f3 ff                                  	call   0x4e4500
  5a99bc:	83 c4 18                                        	add    esp,0x18
  5a99bf:	85 c0                                           	test   eax,eax
  5a99c1:	74 1d                                           	je     0x5a99e0
  5a99c3:	68 cb ee 4a 03                                  	push   0x34aeecb
  5a99c8:	8b c8                                           	mov    ecx,eax
  5a99ca:	e8 11 ff ff ff                                  	call   0x5a98e0
  5a99cf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a99d1:	6a 35                                           	push   0x35
  5a99d3:	50                                              	push   eax
  5a99d4:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a99da:	8b ce                                           	mov    ecx,esi
  5a99dc:	ff d0                                           	call   eax
  5a99de:	5e                                              	pop    esi
  5a99df:	c3                                              	ret
  5a99e0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a99e2:	33 c0                                           	xor    eax,eax
  5a99e4:	6a 35                                           	push   0x35
  5a99e6:	50                                              	push   eax
  5a99e7:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a99ed:	8b ce                                           	mov    ecx,esi
  5a99ef:	ff d0                                           	call   eax
  5a99f1:	5e                                              	pop    esi
  5a99f2:	c3                                              	ret
  5a99f3:	cc                                              	int3
  5a99f4:	cc                                              	int3
  5a99f5:	cc                                              	int3
  5a99f6:	cc                                              	int3
  5a99f7:	cc                                              	int3
  5a99f8:	cc                                              	int3
  5a99f9:	cc                                              	int3
  5a99fa:	cc                                              	int3
  5a99fb:	cc                                              	int3
  5a99fc:	cc                                              	int3
  5a99fd:	cc                                              	int3
  5a99fe:	cc                                              	int3
  5a99ff:	cc                                              	int3
