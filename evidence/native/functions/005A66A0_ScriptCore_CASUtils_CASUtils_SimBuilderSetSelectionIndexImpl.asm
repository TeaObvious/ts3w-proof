# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a66a0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetSelectionIndexImpl)
Paired Ghidra pseudocode: 005A66A0_ScriptCore_CASUtils_CASUtils_SimBuilderSetSelectionIndexImpl.c
Window: [0x005a66a0, 0x005a66e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a66e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a66a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a66b0: 35 75 22 e8 d8 2c 1c 00 8b 10 8b c8 8b 82 cc 00
005a66c0: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
005a66d0: e8 eb ae 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a66a0 <.text+0x1a56a0>:
  5a66a0:	56                                              	push   esi
  5a66a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a66a5:	8b c6                                           	mov    eax,esi
  5a66a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a66ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a66b1:	75 22                                           	jne    0x5a66d5
  5a66b3:	e8 d8 2c 1c 00                                  	call   0x769390
  5a66b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a66ba:	8b c8                                           	mov    ecx,eax
  5a66bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a66c2:	56                                              	push   esi
  5a66c3:	ff d0                                           	call   eax
  5a66c5:	85 c0                                           	test   eax,eax
  5a66c7:	74 0c                                           	je     0x5a66d5
  5a66c9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a66cd:	51                                              	push   ecx
  5a66ce:	8b c8                                           	mov    ecx,eax
  5a66d0:	e8 eb ae 03 00                                  	call   0x5e15c0
  5a66d5:	5e                                              	pop    esi
  5a66d6:	c3                                              	ret
  5a66d7:	cc                                              	int3
  5a66d8:	cc                                              	int3
  5a66d9:	cc                                              	int3
  5a66da:	cc                                              	int3
  5a66db:	cc                                              	int3
  5a66dc:	cc                                              	int3
  5a66dd:	cc                                              	int3
  5a66de:	cc                                              	int3
  5a66df:	cc                                              	int3
