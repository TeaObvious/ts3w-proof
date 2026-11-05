# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d350 (SacsWrap_SlotSetupBuilder_AddSlotAssignment)
Paired Ghidra pseudocode: 1098D350_SacsWrap_SlotSetupBuilder_AddSlotAssignment.c
Window: [0x1098d350, 0x1098d390) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d350: 8b 44 24 04 85 c0 74 34 8b 10 8b 0a 56 8b 74 24
1098d360: 0c c1 e1 04 89 74 0a 10 8b 10 8b 74 24 10 89 74
1098d370: 0a 14 8b 10 8b 74 24 14 89 74 0a 18 8b 10 8b 74
1098d380: 24 18 89 74 0a 1c 8b 00 83 00 01 5e c3 cc cc cc

LINEAR DISASSEMBLY
1098d350 <.text+0x98c350>:
1098d350:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d354:	85 c0                                           	test   eax,eax
1098d356:	74 34                                           	je     0x1098d38c
1098d358:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d35a:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098d35c:	56                                              	push   esi
1098d35d:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098d361:	c1 e1 04                                        	shl    ecx,0x4
1098d364:	89 74 0a 10                                     	mov    DWORD PTR [edx+ecx*1+0x10],esi
1098d368:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d36a:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1098d36e:	89 74 0a 14                                     	mov    DWORD PTR [edx+ecx*1+0x14],esi
1098d372:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d374:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098d378:	89 74 0a 18                                     	mov    DWORD PTR [edx+ecx*1+0x18],esi
1098d37c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d37e:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098d382:	89 74 0a 1c                                     	mov    DWORD PTR [edx+ecx*1+0x1c],esi
1098d386:	8b 00                                           	mov    eax,DWORD PTR [eax]
1098d388:	83 00 01                                        	add    DWORD PTR [eax],0x1
1098d38b:	5e                                              	pop    esi
1098d38c:	c3                                              	ret
1098d38d:	cc                                              	int3
1098d38e:	cc                                              	int3
1098d38f:	cc                                              	int3
