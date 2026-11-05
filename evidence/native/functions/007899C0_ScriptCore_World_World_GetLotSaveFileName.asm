# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007899c0 (ScriptCore.World::World_GetLotSaveFileName)
Paired Ghidra pseudocode: 007899C0_ScriptCore_World_World_GetLotSaveFileName.c
Window: [0x007899c0, 0x00789a00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007899c0: 8b 0d c4 db 1e 01 85 c9 74 32 8b 44 24 08 8b 54
007899d0: 24 04 6a 00 50 52 e8 35 8e 4d 00 85 c0 74 1d 56
007899e0: 8b 70 60 6a 5c 56 ff 15 8c 64 f9 00 83 c4 08 85
007899f0: c0 75 04 8b c6 5e c3 83 c0 02 5e c3 33 c0 c3 cc

LINEAR DISASSEMBLY
007899c0 <.text+0x3889c0>:
  7899c0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7899c6:	85 c9                                           	test   ecx,ecx
  7899c8:	74 32                                           	je     0x7899fc
  7899ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7899ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7899d2:	6a 00                                           	push   0x0
  7899d4:	50                                              	push   eax
  7899d5:	52                                              	push   edx
  7899d6:	e8 35 8e 4d 00                                  	call   0xc62810
  7899db:	85 c0                                           	test   eax,eax
  7899dd:	74 1d                                           	je     0x7899fc
  7899df:	56                                              	push   esi
  7899e0:	8b 70 60                                        	mov    esi,DWORD PTR [eax+0x60]
  7899e3:	6a 5c                                           	push   0x5c
  7899e5:	56                                              	push   esi
  7899e6:	ff 15 8c 64 f9 00                               	call   DWORD PTR ds:0xf9648c
  7899ec:	83 c4 08                                        	add    esp,0x8
  7899ef:	85 c0                                           	test   eax,eax
  7899f1:	75 04                                           	jne    0x7899f7
  7899f3:	8b c6                                           	mov    eax,esi
  7899f5:	5e                                              	pop    esi
  7899f6:	c3                                              	ret
  7899f7:	83 c0 02                                        	add    eax,0x2
  7899fa:	5e                                              	pop    esi
  7899fb:	c3                                              	ret
  7899fc:	33 c0                                           	xor    eax,eax
  7899fe:	c3                                              	ret
  7899ff:	cc                                              	int3
