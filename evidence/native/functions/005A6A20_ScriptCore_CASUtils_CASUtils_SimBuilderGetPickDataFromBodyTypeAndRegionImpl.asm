# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6a20 (ScriptCore.CASUtils::CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl)
Paired Ghidra pseudocode: 005A6A20_ScriptCore_CASUtils_CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl.c
Window: [0x005a6a20, 0x005a6a60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6a20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6a30: 35 75 29 e8 58 29 1c 00 8b 10 8b c8 8b 82 cc 00
005a6a40: 00 00 56 ff d0 85 c0 74 13 8b 4c 24 10 8b 54 24
005a6a50: 0c 51 52 8b c8 e8 36 a0 03 00 5e c3 33 c0 5e c3

LINEAR DISASSEMBLY
005a6a20 <.text+0x1a5a20>:
  5a6a20:	56                                              	push   esi
  5a6a21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6a25:	8b c6                                           	mov    eax,esi
  5a6a27:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6a2c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6a31:	75 29                                           	jne    0x5a6a5c
  5a6a33:	e8 58 29 1c 00                                  	call   0x769390
  5a6a38:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6a3a:	8b c8                                           	mov    ecx,eax
  5a6a3c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6a42:	56                                              	push   esi
  5a6a43:	ff d0                                           	call   eax
  5a6a45:	85 c0                                           	test   eax,eax
  5a6a47:	74 13                                           	je     0x5a6a5c
  5a6a49:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a6a4d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a6a51:	51                                              	push   ecx
  5a6a52:	52                                              	push   edx
  5a6a53:	8b c8                                           	mov    ecx,eax
  5a6a55:	e8 36 a0 03 00                                  	call   0x5e0a90
  5a6a5a:	5e                                              	pop    esi
  5a6a5b:	c3                                              	ret
  5a6a5c:	33 c0                                           	xor    eax,eax
  5a6a5e:	5e                                              	pop    esi
  5a6a5f:	c3                                              	ret
