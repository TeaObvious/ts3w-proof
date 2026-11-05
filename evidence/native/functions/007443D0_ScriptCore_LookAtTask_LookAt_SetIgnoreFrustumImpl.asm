# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007443d0 (ScriptCore.LookAtTask::LookAt_SetIgnoreFrustumImpl)
Paired Ghidra pseudocode: 007443D0_ScriptCore_LookAtTask_LookAt_SetIgnoreFrustumImpl.c
Window: [0x007443d0, 0x00744430) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007443d0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007443e0: 46 75 44 e8 a8 4f 02 00 8b 10 8b c8 8b 82 cc 00
007443f0: 00 00 56 ff d0 8b f0 85 f6 74 2c 8b 4c 24 0c 83
00744400: 46 04 01 51 8b ce e8 f5 bf e3 ff 8b 46 04 83 c0
00744410: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
00744420: 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007443d0 <.text+0x3433d0>:
  7443d0:	56                                              	push   esi
  7443d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7443d5:	8b c6                                           	mov    eax,esi
  7443d7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7443dc:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7443e1:	75 44                                           	jne    0x744427
  7443e3:	e8 a8 4f 02 00                                  	call   0x769390
  7443e8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7443ea:	8b c8                                           	mov    ecx,eax
  7443ec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7443f2:	56                                              	push   esi
  7443f3:	ff d0                                           	call   eax
  7443f5:	8b f0                                           	mov    esi,eax
  7443f7:	85 f6                                           	test   esi,esi
  7443f9:	74 2c                                           	je     0x744427
  7443fb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7443ff:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744403:	51                                              	push   ecx
  744404:	8b ce                                           	mov    ecx,esi
  744406:	e8 f5 bf e3 ff                                  	call   0x580400
  74440b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  74440e:	83 c0 ff                                        	add    eax,0xffffffff
  744411:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744414:	75 11                                           	jne    0x744427
  744416:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  74441d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74441f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744421:	6a 01                                           	push   0x1
  744423:	8b ce                                           	mov    ecx,esi
  744425:	ff d0                                           	call   eax
  744427:	5e                                              	pop    esi
  744428:	c3                                              	ret
  744429:	cc                                              	int3
  74442a:	cc                                              	int3
  74442b:	cc                                              	int3
  74442c:	cc                                              	int3
  74442d:	cc                                              	int3
  74442e:	cc                                              	int3
  74442f:	cc                                              	int3
