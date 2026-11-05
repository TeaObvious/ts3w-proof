# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5470 (ScriptCore.CASUtils::CASUtils_SimBuilderSetNumCurlsImpl)
Paired Ghidra pseudocode: 005A5470_ScriptCore_CASUtils_CASUtils_SimBuilderSetNumCurlsImpl.c
Window: [0x005a5470, 0x005a54b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a54b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5470: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5480: 35 75 2b e8 08 3f 1c 00 8b 10 8b c8 8b 82 cc 00
005a5490: 00 00 56 ff d0 85 c0 74 15 f3 0f 10 44 24 0c 81
005a54a0: 48 1c 00 00 02 00 f3 0f 11 80 68 02 00 00 5e c3

LINEAR DISASSEMBLY
005a5470 <.text+0x1a4470>:
  5a5470:	56                                              	push   esi
  5a5471:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5475:	8b c6                                           	mov    eax,esi
  5a5477:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a547c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5481:	75 2b                                           	jne    0x5a54ae
  5a5483:	e8 08 3f 1c 00                                  	call   0x769390
  5a5488:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a548a:	8b c8                                           	mov    ecx,eax
  5a548c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5492:	56                                              	push   esi
  5a5493:	ff d0                                           	call   eax
  5a5495:	85 c0                                           	test   eax,eax
  5a5497:	74 15                                           	je     0x5a54ae
  5a5499:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a549f:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
  5a54a6:	f3 0f 11 80 68 02 00 00                         	movss  DWORD PTR [eax+0x268],xmm0
  5a54ae:	5e                                              	pop    esi
  5a54af:	c3                                              	ret
