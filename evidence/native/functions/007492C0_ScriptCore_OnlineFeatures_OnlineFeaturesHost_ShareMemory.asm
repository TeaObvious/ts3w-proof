# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007492c0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_ShareMemory)
Paired Ghidra pseudocode: 007492C0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_ShareMemory.c
Window: [0x007492c0, 0x00749310) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007492c0: 8b 44 24 2c 8b 4c 24 28 8b 54 24 24 6a 00 50 8b
007492d0: 44 24 28 51 8b 4c 24 28 52 8b 54 24 1c 50 51 8b
007492e0: 4c 24 28 83 ec 10 8b c4 89 10 8b 54 24 3c 89 48
007492f0: 04 8b 4c 24 40 89 50 08 8b 54 24 30 89 48 0c 8b
00749300: 44 24 2c 52 50 6a 00 e8 04 f9 ff ff 83 c4 34 c3

LINEAR DISASSEMBLY
007492c0 <.text+0x3482c0>:
  7492c0:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  7492c4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7492c8:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  7492cc:	6a 00                                           	push   0x0
  7492ce:	50                                              	push   eax
  7492cf:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  7492d3:	51                                              	push   ecx
  7492d4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7492d8:	52                                              	push   edx
  7492d9:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7492dd:	50                                              	push   eax
  7492de:	51                                              	push   ecx
  7492df:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7492e3:	83 ec 10                                        	sub    esp,0x10
  7492e6:	8b c4                                           	mov    eax,esp
  7492e8:	89 10                                           	mov    DWORD PTR [eax],edx
  7492ea:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7492ee:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  7492f1:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7492f5:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  7492f8:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7492fc:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  7492ff:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  749303:	52                                              	push   edx
  749304:	50                                              	push   eax
  749305:	6a 00                                           	push   0x0
  749307:	e8 04 f9 ff ff                                  	call   0x748c10
  74930c:	83 c4 34                                        	add    esp,0x34
  74930f:	c3                                              	ret
