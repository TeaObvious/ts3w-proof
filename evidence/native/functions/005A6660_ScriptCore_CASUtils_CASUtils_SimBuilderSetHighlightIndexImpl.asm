# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6660 (ScriptCore.CASUtils::CASUtils_SimBuilderSetHighlightIndexImpl)
Paired Ghidra pseudocode: 005A6660_ScriptCore_CASUtils_CASUtils_SimBuilderSetHighlightIndexImpl.c
Window: [0x005a6660, 0x005a66a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a66a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6660: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6670: 35 75 22 e8 18 2d 1c 00 8b 10 8b c8 8b 82 cc 00
005a6680: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
005a6690: e8 fb ae 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6660 <.text+0x1a5660>:
  5a6660:	56                                              	push   esi
  5a6661:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6665:	8b c6                                           	mov    eax,esi
  5a6667:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a666c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6671:	75 22                                           	jne    0x5a6695
  5a6673:	e8 18 2d 1c 00                                  	call   0x769390
  5a6678:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a667a:	8b c8                                           	mov    ecx,eax
  5a667c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6682:	56                                              	push   esi
  5a6683:	ff d0                                           	call   eax
  5a6685:	85 c0                                           	test   eax,eax
  5a6687:	74 0c                                           	je     0x5a6695
  5a6689:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a668d:	51                                              	push   ecx
  5a668e:	8b c8                                           	mov    ecx,eax
  5a6690:	e8 fb ae 03 00                                  	call   0x5e1590
  5a6695:	5e                                              	pop    esi
  5a6696:	c3                                              	ret
  5a6697:	cc                                              	int3
  5a6698:	cc                                              	int3
  5a6699:	cc                                              	int3
  5a669a:	cc                                              	int3
  5a669b:	cc                                              	int3
  5a669c:	cc                                              	int3
  5a669d:	cc                                              	int3
  5a669e:	cc                                              	int3
  5a669f:	cc                                              	int3
