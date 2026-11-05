# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537530 (OnlineFeaturesHost_LogTelemetryEvent)
Paired Ghidra pseudocode: 10537530_OnlineFeaturesHost_LogTelemetryEvent.c
Window: [0x10537530, 0x10537570) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537530: 8b 44 24 08 8b 4c 24 04 89 44 24 08 89 4c 24 04
10537540: e8 db 3b 02 00 85 c0 74 21 8b 4c 24 0c 8b 10 8b
10537550: 52 58 51 8b c8 ff d2 50 8d 44 24 0c 50 8d 4c 24
10537560: 0c 51 e8 d9 e9 14 00 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10537530 <.text+0x536530>:
10537530:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10537534:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10537538:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1053753c:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10537540:	e8 db 3b 02 00                                  	call   0x1055b120
10537545:	85 c0                                           	test   eax,eax
10537547:	74 21                                           	je     0x1053756a
10537549:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053754d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053754f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10537552:	51                                              	push   ecx
10537553:	8b c8                                           	mov    ecx,eax
10537555:	ff d2                                           	call   edx
10537557:	50                                              	push   eax
10537558:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1053755c:	50                                              	push   eax
1053755d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10537561:	51                                              	push   ecx
10537562:	e8 d9 e9 14 00                                  	call   0x10685f40
10537567:	83 c4 0c                                        	add    esp,0xc
1053756a:	c3                                              	ret
1053756b:	cc                                              	int3
1053756c:	cc                                              	int3
1053756d:	cc                                              	int3
1053756e:	cc                                              	int3
1053756f:	cc                                              	int3
