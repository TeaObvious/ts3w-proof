# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a54f0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetNumCurlsImpl)
Paired Ghidra pseudocode: 005A54F0_ScriptCore_CASUtils_CASUtils_SimBuilderGetNumCurlsImpl.c
Window: [0x005a54f0, 0x005a5530) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a54f0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5500: 35 75 1e e8 88 3e 1c 00 8b 10 8b c8 8b 82 cc 00
005a5510: 00 00 56 ff d0 85 c0 74 08 d9 80 68 02 00 00 5e
005a5520: c3 d9 ee 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a54f0 <.text+0x1a44f0>:
  5a54f0:	56                                              	push   esi
  5a54f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a54f5:	8b c6                                           	mov    eax,esi
  5a54f7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a54fc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5501:	75 1e                                           	jne    0x5a5521
  5a5503:	e8 88 3e 1c 00                                  	call   0x769390
  5a5508:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a550a:	8b c8                                           	mov    ecx,eax
  5a550c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5512:	56                                              	push   esi
  5a5513:	ff d0                                           	call   eax
  5a5515:	85 c0                                           	test   eax,eax
  5a5517:	74 08                                           	je     0x5a5521
  5a5519:	d9 80 68 02 00 00                               	fld    DWORD PTR [eax+0x268]
  5a551f:	5e                                              	pop    esi
  5a5520:	c3                                              	ret
  5a5521:	d9 ee                                           	fldz
  5a5523:	5e                                              	pop    esi
  5a5524:	c3                                              	ret
  5a5525:	cc                                              	int3
  5a5526:	cc                                              	int3
  5a5527:	cc                                              	int3
  5a5528:	cc                                              	int3
  5a5529:	cc                                              	int3
  5a552a:	cc                                              	int3
  5a552b:	cc                                              	int3
  5a552c:	cc                                              	int3
  5a552d:	cc                                              	int3
  5a552e:	cc                                              	int3
  5a552f:	cc                                              	int3
