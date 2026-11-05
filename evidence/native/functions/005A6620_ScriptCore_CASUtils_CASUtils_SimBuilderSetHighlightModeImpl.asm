# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6620 (ScriptCore.CASUtils::CASUtils_SimBuilderSetHighlightModeImpl)
Paired Ghidra pseudocode: 005A6620_ScriptCore_CASUtils_CASUtils_SimBuilderSetHighlightModeImpl.c
Window: [0x005a6620, 0x005a6660) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6620: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6630: 35 75 22 e8 58 2d 1c 00 8b 10 8b c8 8b 82 cc 00
005a6640: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
005a6650: e8 6b a3 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6620 <.text+0x1a5620>:
  5a6620:	56                                              	push   esi
  5a6621:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6625:	8b c6                                           	mov    eax,esi
  5a6627:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a662c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6631:	75 22                                           	jne    0x5a6655
  5a6633:	e8 58 2d 1c 00                                  	call   0x769390
  5a6638:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a663a:	8b c8                                           	mov    ecx,eax
  5a663c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6642:	56                                              	push   esi
  5a6643:	ff d0                                           	call   eax
  5a6645:	85 c0                                           	test   eax,eax
  5a6647:	74 0c                                           	je     0x5a6655
  5a6649:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a664d:	51                                              	push   ecx
  5a664e:	8b c8                                           	mov    ecx,eax
  5a6650:	e8 6b a3 03 00                                  	call   0x5e09c0
  5a6655:	5e                                              	pop    esi
  5a6656:	c3                                              	ret
  5a6657:	cc                                              	int3
  5a6658:	cc                                              	int3
  5a6659:	cc                                              	int3
  5a665a:	cc                                              	int3
  5a665b:	cc                                              	int3
  5a665c:	cc                                              	int3
  5a665d:	cc                                              	int3
  5a665e:	cc                                              	int3
  5a665f:	cc                                              	int3
