# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788610 (ScriptCore.World::World_GetCatalogRefundRateImpl)
Paired Ghidra pseudocode: 00788610_ScriptCore_World_World_GetCatalogRefundRateImpl.c
Window: [0x00788610, 0x00788640) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788610: 51 83 3d 34 e0 1e 01 00 74 12 f3 0f 10 05 1c e5
00788620: f9 00 f3 0f 11 04 24 d9 04 24 59 c3 f3 0f 10 05
00788630: f8 98 f9 00 f3 0f 11 04 24 d9 04 24 59 c3 cc cc

LINEAR DISASSEMBLY
00788610 <.text+0x387610>:
  788610:	51                                              	push   ecx
  788611:	83 3d 34 e0 1e 01 00                            	cmp    DWORD PTR ds:0x11ee034,0x0
  788618:	74 12                                           	je     0x78862c
  78861a:	f3 0f 10 05 1c e5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9e51c
  788622:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788627:	d9 04 24                                        	fld    DWORD PTR [esp]
  78862a:	59                                              	pop    ecx
  78862b:	c3                                              	ret
  78862c:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  788634:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  788639:	d9 04 24                                        	fld    DWORD PTR [esp]
  78863c:	59                                              	pop    ecx
  78863d:	c3                                              	ret
  78863e:	cc                                              	int3
  78863f:	cc                                              	int3
