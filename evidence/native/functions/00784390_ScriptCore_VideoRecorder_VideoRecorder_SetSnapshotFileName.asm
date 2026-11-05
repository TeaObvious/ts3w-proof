# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784390 (ScriptCore.VideoRecorder::VideoRecorder_SetSnapshotFileName)
Paired Ghidra pseudocode: 00784390_ScriptCore_VideoRecorder_VideoRecorder_SetSnapshotFileName.c
Window: [0x00784390, 0x007843c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007843c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784390: 56 e8 fa bb 25 00 8b f0 85 f6 74 21 57 e8 ee 4f
007843a0: fe ff 8b 4c 24 0c 8b 10 8b 52 58 8b 3e 6a 00 51
007843b0: 8b c8 ff d2 50 8b 47 14 8b ce ff d0 5f 5e c3 cc

LINEAR DISASSEMBLY
00784390 <.text+0x383390>:
  784390:	56                                              	push   esi
  784391:	e8 fa bb 25 00                                  	call   0x9dff90
  784396:	8b f0                                           	mov    esi,eax
  784398:	85 f6                                           	test   esi,esi
  78439a:	74 21                                           	je     0x7843bd
  78439c:	57                                              	push   edi
  78439d:	e8 ee 4f fe ff                                  	call   0x769390
  7843a2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7843a6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7843a8:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7843ab:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  7843ad:	6a 00                                           	push   0x0
  7843af:	51                                              	push   ecx
  7843b0:	8b c8                                           	mov    ecx,eax
  7843b2:	ff d2                                           	call   edx
  7843b4:	50                                              	push   eax
  7843b5:	8b 47 14                                        	mov    eax,DWORD PTR [edi+0x14]
  7843b8:	8b ce                                           	mov    ecx,esi
  7843ba:	ff d0                                           	call   eax
  7843bc:	5f                                              	pop    edi
  7843bd:	5e                                              	pop    esi
  7843be:	c3                                              	ret
  7843bf:	cc                                              	int3
