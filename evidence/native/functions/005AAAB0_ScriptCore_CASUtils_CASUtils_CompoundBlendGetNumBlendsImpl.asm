# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aaab0 (ScriptCore.CASUtils::CASUtils_CompoundBlendGetNumBlendsImpl)
Paired Ghidra pseudocode: 005AAAB0_ScriptCore_CASUtils_CASUtils_CompoundBlendGetNumBlendsImpl.c
Window: [0x005aaab0, 0x005aab00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aab00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aaab0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005aaac0: 35 74 04 33 c0 5e c3 e8 c4 e8 1b 00 8b 10 8b c8
005aaad0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 48 40
005aaae0: 8d 50 40 33 c0 3b ca 74 10 8d a4 24 00 00 00 00
005aaaf0: 8b 09 83 c0 01 3b ca 75 f7 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005aaab0 <.text+0x1a9ab0>:
  5aaab0:	56                                              	push   esi
  5aaab1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5aaab5:	8b c6                                           	mov    eax,esi
  5aaab7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aaabc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aaac1:	74 04                                           	je     0x5aaac7
  5aaac3:	33 c0                                           	xor    eax,eax
  5aaac5:	5e                                              	pop    esi
  5aaac6:	c3                                              	ret
  5aaac7:	e8 c4 e8 1b 00                                  	call   0x769390
  5aaacc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aaace:	8b c8                                           	mov    ecx,eax
  5aaad0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aaad6:	56                                              	push   esi
  5aaad7:	ff d0                                           	call   eax
  5aaad9:	85 c0                                           	test   eax,eax
  5aaadb:	74 e6                                           	je     0x5aaac3
  5aaadd:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
  5aaae0:	8d 50 40                                        	lea    edx,[eax+0x40]
  5aaae3:	33 c0                                           	xor    eax,eax
  5aaae5:	3b ca                                           	cmp    ecx,edx
  5aaae7:	74 10                                           	je     0x5aaaf9
  5aaae9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  5aaaf0:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  5aaaf2:	83 c0 01                                        	add    eax,0x1
  5aaaf5:	3b ca                                           	cmp    ecx,edx
  5aaaf7:	75 f7                                           	jne    0x5aaaf0
  5aaaf9:	5e                                              	pop    esi
  5aaafa:	c3                                              	ret
  5aaafb:	cc                                              	int3
  5aaafc:	cc                                              	int3
  5aaafd:	cc                                              	int3
  5aaafe:	cc                                              	int3
  5aaaff:	cc                                              	int3
