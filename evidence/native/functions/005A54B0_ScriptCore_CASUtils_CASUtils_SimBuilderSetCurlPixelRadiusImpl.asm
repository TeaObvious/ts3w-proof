# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a54b0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 005A54B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetCurlPixelRadiusImpl.c
Window: [0x005a54b0, 0x005a54f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a54f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a54b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a54c0: 35 75 2b e8 c8 3e 1c 00 8b 10 8b c8 8b 82 cc 00
005a54d0: 00 00 56 ff d0 85 c0 74 15 f3 0f 10 44 24 0c 81
005a54e0: 48 1c 00 00 02 00 f3 0f 11 80 6c 02 00 00 5e c3

LINEAR DISASSEMBLY
005a54b0 <.text+0x1a44b0>:
  5a54b0:	56                                              	push   esi
  5a54b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a54b5:	8b c6                                           	mov    eax,esi
  5a54b7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a54bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a54c1:	75 2b                                           	jne    0x5a54ee
  5a54c3:	e8 c8 3e 1c 00                                  	call   0x769390
  5a54c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a54ca:	8b c8                                           	mov    ecx,eax
  5a54cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a54d2:	56                                              	push   esi
  5a54d3:	ff d0                                           	call   eax
  5a54d5:	85 c0                                           	test   eax,eax
  5a54d7:	74 15                                           	je     0x5a54ee
  5a54d9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a54df:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
  5a54e6:	f3 0f 11 80 6c 02 00 00                         	movss  DWORD PTR [eax+0x26c],xmm0
  5a54ee:	5e                                              	pop    esi
  5a54ef:	c3                                              	ret
