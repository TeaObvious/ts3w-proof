# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5660 (ScriptCore.CASUtils::CASUtils_SimOutfitSetNumCurlsImpl)
Paired Ghidra pseudocode: 005A5660_ScriptCore_CASUtils_CASUtils_SimOutfitSetNumCurlsImpl.c
Window: [0x005a5660, 0x005a56a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a56a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5660: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5670: 35 75 21 e8 18 3d 1c 00 8b 10 8b c8 8b 82 cc 00
005a5680: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
005a5690: 0f 11 40 7c 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5660 <.text+0x1a4660>:
  5a5660:	56                                              	push   esi
  5a5661:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5665:	8b c6                                           	mov    eax,esi
  5a5667:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a566c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5671:	75 21                                           	jne    0x5a5694
  5a5673:	e8 18 3d 1c 00                                  	call   0x769390
  5a5678:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a567a:	8b c8                                           	mov    ecx,eax
  5a567c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5682:	56                                              	push   esi
  5a5683:	ff d0                                           	call   eax
  5a5685:	85 c0                                           	test   eax,eax
  5a5687:	74 0b                                           	je     0x5a5694
  5a5689:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a568f:	f3 0f 11 40 7c                                  	movss  DWORD PTR [eax+0x7c],xmm0
  5a5694:	5e                                              	pop    esi
  5a5695:	c3                                              	ret
  5a5696:	cc                                              	int3
  5a5697:	cc                                              	int3
  5a5698:	cc                                              	int3
  5a5699:	cc                                              	int3
  5a569a:	cc                                              	int3
  5a569b:	cc                                              	int3
  5a569c:	cc                                              	int3
  5a569d:	cc                                              	int3
  5a569e:	cc                                              	int3
  5a569f:	cc                                              	int3
