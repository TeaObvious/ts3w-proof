# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6720 (ScriptCore.CASUtils::CASUtils_SimBuilderSetUseCompressionImpl)
Paired Ghidra pseudocode: 005A6720_ScriptCore_CASUtils_CASUtils_SimBuilderSetUseCompressionImpl.c
Window: [0x005a6720, 0x005a6770) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6720: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6730: 35 75 34 e8 58 2c 1c 00 8b 10 8b c8 8b 82 cc 00
005a6740: 00 00 56 ff d0 85 c0 74 1e 8a 4c 24 0c 3a 48 69
005a6750: 74 15 81 48 1c 00 4f 00 00 88 48 69 b9 1f 00 00
005a6760: 00 89 48 14 89 48 18 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6720 <.text+0x1a5720>:
  5a6720:	56                                              	push   esi
  5a6721:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6725:	8b c6                                           	mov    eax,esi
  5a6727:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a672c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6731:	75 34                                           	jne    0x5a6767
  5a6733:	e8 58 2c 1c 00                                  	call   0x769390
  5a6738:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a673a:	8b c8                                           	mov    ecx,eax
  5a673c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6742:	56                                              	push   esi
  5a6743:	ff d0                                           	call   eax
  5a6745:	85 c0                                           	test   eax,eax
  5a6747:	74 1e                                           	je     0x5a6767
  5a6749:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
  5a674d:	3a 48 69                                        	cmp    cl,BYTE PTR [eax+0x69]
  5a6750:	74 15                                           	je     0x5a6767
  5a6752:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
  5a6759:	88 48 69                                        	mov    BYTE PTR [eax+0x69],cl
  5a675c:	b9 1f 00 00 00                                  	mov    ecx,0x1f
  5a6761:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  5a6764:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
  5a6767:	5e                                              	pop    esi
  5a6768:	c3                                              	ret
  5a6769:	cc                                              	int3
  5a676a:	cc                                              	int3
  5a676b:	cc                                              	int3
  5a676c:	cc                                              	int3
  5a676d:	cc                                              	int3
  5a676e:	cc                                              	int3
  5a676f:	cc                                              	int3
