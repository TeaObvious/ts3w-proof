# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00afc930 (DirectTargetOf_World_World_GetPagodaRoofCurveChoiceImpl)
Paired Ghidra pseudocode: 00AFC930_DirectTargetOf_World_World_GetPagodaRoofCurveChoiceImpl.c
Window: [0x00afc930, 0x00afc970) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00afc970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00afc930: 56 8b 35 c4 db 1e 01 85 f6 74 28 6a 00 8b ce e8
00afc940: 1c 2c 16 00 52 50 8b ce e8 c3 5e 16 00 85 c0 74
00afc950: 12 8b 80 ac 02 00 00 85 c0 74 08 8b 80 8c 00 00
00afc960: 00 5e c3 b8 02 00 00 00 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00afc930 <.text+0x6fb930>:
  afc930:	56                                              	push   esi
  afc931:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  afc937:	85 f6                                           	test   esi,esi
  afc939:	74 28                                           	je     0xafc963
  afc93b:	6a 00                                           	push   0x0
  afc93d:	8b ce                                           	mov    ecx,esi
  afc93f:	e8 1c 2c 16 00                                  	call   0xc5f560
  afc944:	52                                              	push   edx
  afc945:	50                                              	push   eax
  afc946:	8b ce                                           	mov    ecx,esi
  afc948:	e8 c3 5e 16 00                                  	call   0xc62810
  afc94d:	85 c0                                           	test   eax,eax
  afc94f:	74 12                                           	je     0xafc963
  afc951:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  afc957:	85 c0                                           	test   eax,eax
  afc959:	74 08                                           	je     0xafc963
  afc95b:	8b 80 8c 00 00 00                               	mov    eax,DWORD PTR [eax+0x8c]
  afc961:	5e                                              	pop    esi
  afc962:	c3                                              	ret
  afc963:	b8 02 00 00 00                                  	mov    eax,0x2
  afc968:	5e                                              	pop    esi
  afc969:	c3                                              	ret
  afc96a:	cc                                              	int3
  afc96b:	cc                                              	int3
  afc96c:	cc                                              	int3
  afc96d:	cc                                              	int3
  afc96e:	cc                                              	int3
  afc96f:	cc                                              	int3
