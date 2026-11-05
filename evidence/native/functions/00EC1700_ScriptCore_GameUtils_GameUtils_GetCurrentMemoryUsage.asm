# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1700 (ScriptCore.GameUtils::GameUtils_GetCurrentMemoryUsage)
Paired Ghidra pseudocode: 00EC1700_ScriptCore_GameUtils_GameUtils_GetCurrentMemoryUsage.c
Window: [0x00ec1700, 0x00ec1740) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1700: 51 0f 57 c0 f3 0f 11 04 24 e8 12 e3 a6 ff 8b 00
00ec1710: 85 c0 74 27 83 3d 8c d1 1d 01 02 75 1e 8b 80 2c
00ec1720: 08 00 00 85 c0 89 04 24 db 04 24 7d 06 d8 05 48
00ec1730: 99 f9 00 d8 0d 84 ba fb 00 59 c3 d9 04 24 59 c3

LINEAR DISASSEMBLY
00ec1700 <.text+0xac0700>:
  ec1700:	51                                              	push   ecx
  ec1701:	0f 57 c0                                        	xorps  xmm0,xmm0
  ec1704:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  ec1709:	e8 12 e3 a6 ff                                  	call   0x92fa20
  ec170e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  ec1710:	85 c0                                           	test   eax,eax
  ec1712:	74 27                                           	je     0xec173b
  ec1714:	83 3d 8c d1 1d 01 02                            	cmp    DWORD PTR ds:0x11dd18c,0x2
  ec171b:	75 1e                                           	jne    0xec173b
  ec171d:	8b 80 2c 08 00 00                               	mov    eax,DWORD PTR [eax+0x82c]
  ec1723:	85 c0                                           	test   eax,eax
  ec1725:	89 04 24                                        	mov    DWORD PTR [esp],eax
  ec1728:	db 04 24                                        	fild   DWORD PTR [esp]
  ec172b:	7d 06                                           	jge    0xec1733
  ec172d:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  ec1733:	d8 0d 84 ba fb 00                               	fmul   DWORD PTR ds:0xfbba84
  ec1739:	59                                              	pop    ecx
  ec173a:	c3                                              	ret
  ec173b:	d9 04 24                                        	fld    DWORD PTR [esp]
  ec173e:	59                                              	pop    ecx
  ec173f:	c3                                              	ret
