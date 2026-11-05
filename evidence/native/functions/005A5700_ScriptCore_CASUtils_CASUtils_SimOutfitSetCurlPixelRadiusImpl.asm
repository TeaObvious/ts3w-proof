# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5700 (ScriptCore.CASUtils::CASUtils_SimOutfitSetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 005A5700_ScriptCore_CASUtils_CASUtils_SimOutfitSetCurlPixelRadiusImpl.c
Window: [0x005a5700, 0x005a5740) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5700: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5710: 35 75 24 e8 78 3c 1c 00 8b 10 8b c8 8b 82 cc 00
005a5720: 00 00 56 ff d0 85 c0 74 0e f3 0f 10 44 24 0c f3
005a5730: 0f 11 80 80 00 00 00 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5700 <.text+0x1a4700>:
  5a5700:	56                                              	push   esi
  5a5701:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5705:	8b c6                                           	mov    eax,esi
  5a5707:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a570c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5711:	75 24                                           	jne    0x5a5737
  5a5713:	e8 78 3c 1c 00                                  	call   0x769390
  5a5718:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a571a:	8b c8                                           	mov    ecx,eax
  5a571c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5722:	56                                              	push   esi
  5a5723:	ff d0                                           	call   eax
  5a5725:	85 c0                                           	test   eax,eax
  5a5727:	74 0e                                           	je     0x5a5737
  5a5729:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a572f:	f3 0f 11 80 80 00 00 00                         	movss  DWORD PTR [eax+0x80],xmm0
  5a5737:	5e                                              	pop    esi
  5a5738:	c3                                              	ret
  5a5739:	cc                                              	int3
  5a573a:	cc                                              	int3
  5a573b:	cc                                              	int3
  5a573c:	cc                                              	int3
  5a573d:	cc                                              	int3
  5a573e:	cc                                              	int3
  5a573f:	cc                                              	int3
