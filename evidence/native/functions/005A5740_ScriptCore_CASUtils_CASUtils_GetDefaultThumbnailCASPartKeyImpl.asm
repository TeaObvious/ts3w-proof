# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5740 (ScriptCore.CASUtils::CASUtils_GetDefaultThumbnailCASPartKeyImpl)
Paired Ghidra pseudocode: 005A5740_ScriptCore_CASUtils_CASUtils_GetDefaultThumbnailCASPartKeyImpl.c
Window: [0x005a5740, 0x005a57b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a57b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5740: 83 ec 10 8b 4c 24 20 8b 54 24 1c 33 c0 56 8b 74
005a5750: 24 18 89 06 89 46 04 89 46 08 89 46 0c 89 44 24
005a5760: 04 89 44 24 08 89 44 24 0c 89 44 24 10 8d 44 24
005a5770: 04 50 8b 44 24 20 51 52 50 e8 52 9d 03 00 8b c8
005a5780: e8 3b a5 03 00 84 c0 74 1b 8b 4c 24 0c 8b 54 24
005a5790: 04 8b 44 24 08 89 0e 8b 4c 24 10 89 56 08 89 46
005a57a0: 0c 89 4e 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a5740 <.text+0x1a4740>:
  5a5740:	83 ec 10                                        	sub    esp,0x10
  5a5743:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a5747:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a574b:	33 c0                                           	xor    eax,eax
  5a574d:	56                                              	push   esi
  5a574e:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a5752:	89 06                                           	mov    DWORD PTR [esi],eax
  5a5754:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a5757:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a575a:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a575d:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  5a5761:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  5a5765:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5a5769:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5a576d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  5a5771:	50                                              	push   eax
  5a5772:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5a5776:	51                                              	push   ecx
  5a5777:	52                                              	push   edx
  5a5778:	50                                              	push   eax
  5a5779:	e8 52 9d 03 00                                  	call   0x5df4d0
  5a577e:	8b c8                                           	mov    ecx,eax
  5a5780:	e8 3b a5 03 00                                  	call   0x5dfcc0
  5a5785:	84 c0                                           	test   al,al
  5a5787:	74 1b                                           	je     0x5a57a4
  5a5789:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a578d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  5a5791:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a5795:	89 0e                                           	mov    DWORD PTR [esi],ecx
  5a5797:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a579b:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a579e:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a57a1:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a57a4:	8b c6                                           	mov    eax,esi
  5a57a6:	5e                                              	pop    esi
  5a57a7:	83 c4 10                                        	add    esp,0x10
  5a57aa:	c3                                              	ret
  5a57ab:	cc                                              	int3
  5a57ac:	cc                                              	int3
  5a57ad:	cc                                              	int3
  5a57ae:	cc                                              	int3
  5a57af:	cc                                              	int3
