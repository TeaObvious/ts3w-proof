# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7170 (ScriptCore.CASUtils::CASUtils_SimOutfitGetAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 005A7170_ScriptCore_CASUtils_CASUtils_SimOutfitGetAgeGenderSpeciesImpl.c
Window: [0x005a7170, 0x005a71b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a71b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7170: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7180: 35 74 04 33 c0 5e c3 e8 04 22 1c 00 8b 10 8b c8
005a7190: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 38
005a71a0: 25 7f ff 00 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7170 <.text+0x1a6170>:
  5a7170:	56                                              	push   esi
  5a7171:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7175:	8b c6                                           	mov    eax,esi
  5a7177:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a717c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7181:	74 04                                           	je     0x5a7187
  5a7183:	33 c0                                           	xor    eax,eax
  5a7185:	5e                                              	pop    esi
  5a7186:	c3                                              	ret
  5a7187:	e8 04 22 1c 00                                  	call   0x769390
  5a718c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a718e:	8b c8                                           	mov    ecx,eax
  5a7190:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7196:	56                                              	push   esi
  5a7197:	ff d0                                           	call   eax
  5a7199:	85 c0                                           	test   eax,eax
  5a719b:	74 e6                                           	je     0x5a7183
  5a719d:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
  5a71a0:	25 7f ff 00 00                                  	and    eax,0xff7f
  5a71a5:	5e                                              	pop    esi
  5a71a6:	c3                                              	ret
  5a71a7:	cc                                              	int3
  5a71a8:	cc                                              	int3
  5a71a9:	cc                                              	int3
  5a71aa:	cc                                              	int3
  5a71ab:	cc                                              	int3
  5a71ac:	cc                                              	int3
  5a71ad:	cc                                              	int3
  5a71ae:	cc                                              	int3
  5a71af:	cc                                              	int3
