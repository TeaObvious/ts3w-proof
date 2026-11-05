# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007843c0 (ScriptCore.VideoRecorder::VideoRecorder_GetLastVideoKey)
Paired Ghidra pseudocode: 007843C0_ScriptCore_VideoRecorder_VideoRecorder_GetLastVideoKey.c
Window: [0x007843c0, 0x00784420) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007843c0: 83 ec 10 56 8b 74 24 18 c7 06 00 00 00 00 c7 46
007843d0: 04 00 00 00 00 c7 46 08 00 00 00 00 c7 46 0c 00
007843e0: 00 00 00 e8 a8 bb 25 00 85 c0 74 29 8b 10 8b 52
007843f0: 24 8d 4c 24 04 51 8b c8 ff d2 8b 44 24 0c 8b 4c
00784400: 24 10 8b 54 24 04 89 06 8b 44 24 08 89 4e 04 89
00784410: 56 08 89 46 0c 8b c6 5e 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
007843c0 <.text+0x3833c0>:
  7843c0:	83 ec 10                                        	sub    esp,0x10
  7843c3:	56                                              	push   esi
  7843c4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  7843c8:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  7843ce:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  7843d5:	c7 46 08 00 00 00 00                            	mov    DWORD PTR [esi+0x8],0x0
  7843dc:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
  7843e3:	e8 a8 bb 25 00                                  	call   0x9dff90
  7843e8:	85 c0                                           	test   eax,eax
  7843ea:	74 29                                           	je     0x784415
  7843ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7843ee:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  7843f1:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  7843f5:	51                                              	push   ecx
  7843f6:	8b c8                                           	mov    ecx,eax
  7843f8:	ff d2                                           	call   edx
  7843fa:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7843fe:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  784402:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  784406:	89 06                                           	mov    DWORD PTR [esi],eax
  784408:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78440c:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  78440f:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  784412:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  784415:	8b c6                                           	mov    eax,esi
  784417:	5e                                              	pop    esi
  784418:	83 c4 10                                        	add    esp,0x10
  78441b:	c3                                              	ret
  78441c:	cc                                              	int3
  78441d:	cc                                              	int3
  78441e:	cc                                              	int3
  78441f:	cc                                              	int3
