# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007691e0 (SACS_BridgeDestinationRelease_7691e0)
Paired Ghidra pseudocode: 007691E0_SACS_BridgeDestinationRelease_7691e0.c
Window: [0x007691e0, 0x00769220) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00769220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007691e0: 8b c1 8b 48 1c 85 c9 74 2f 8b 40 20 85 c0 74 28
007691f0: 56 50 e8 09 aa 09 00 8b f0 85 f6 74 1a 57 8b 7c
00769200: 24 0c 8b 4f 10 85 c9 74 05 e8 42 42 09 00 57 8b
00769210: ce e8 ba 89 09 00 5f 5e c2 08 00 cc cc cc cc cc

LINEAR DISASSEMBLY
007691e0 <.text+0x3681e0>:
  7691e0:	8b c1                                           	mov    eax,ecx
  7691e2:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  7691e5:	85 c9                                           	test   ecx,ecx
  7691e7:	74 2f                                           	je     0x769218
  7691e9:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
  7691ec:	85 c0                                           	test   eax,eax
  7691ee:	74 28                                           	je     0x769218
  7691f0:	56                                              	push   esi
  7691f1:	50                                              	push   eax
  7691f2:	e8 09 aa 09 00                                  	call   0x803c00
  7691f7:	8b f0                                           	mov    esi,eax
  7691f9:	85 f6                                           	test   esi,esi
  7691fb:	74 1a                                           	je     0x769217
  7691fd:	57                                              	push   edi
  7691fe:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  769202:	8b 4f 10                                        	mov    ecx,DWORD PTR [edi+0x10]
  769205:	85 c9                                           	test   ecx,ecx
  769207:	74 05                                           	je     0x76920e
  769209:	e8 42 42 09 00                                  	call   0x7fd450
  76920e:	57                                              	push   edi
  76920f:	8b ce                                           	mov    ecx,esi
  769211:	e8 ba 89 09 00                                  	call   0x801bd0
  769216:	5f                                              	pop    edi
  769217:	5e                                              	pop    esi
  769218:	c2 08 00                                        	ret    0x8
  76921b:	cc                                              	int3
  76921c:	cc                                              	int3
  76921d:	cc                                              	int3
  76921e:	cc                                              	int3
  76921f:	cc                                              	int3
