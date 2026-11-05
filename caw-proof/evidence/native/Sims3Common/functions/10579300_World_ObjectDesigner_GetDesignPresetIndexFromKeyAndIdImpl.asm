# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579300 (World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl)
Paired Ghidra pseudocode: 10579300_World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl.c
Window: [0x10579300, 0x10579340) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579300: 83 ec 10 8b 4c 24 20 8b 54 24 14 8b 44 24 1c 89
10579310: 4c 24 04 8b 4c 24 24 89 54 24 08 89 04 24 8b 44
10579320: 24 18 51 8d 54 24 04 52 89 44 24 14 e8 2f f1 b7
10579330: ff 8b c8 e8 b8 1c b8 ff 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
10579300 <.text+0x578300>:
10579300:	83 ec 10                                        	sub    esp,0x10
10579303:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10579307:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057930b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1057930f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10579313:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10579317:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1057931b:	89 04 24                                        	mov    DWORD PTR [esp],eax
1057931e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10579322:	51                                              	push   ecx
10579323:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10579327:	52                                              	push   edx
10579328:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1057932c:	e8 2f f1 b7 ff                                  	call   0x100f8460
10579331:	8b c8                                           	mov    ecx,eax
10579333:	e8 b8 1c b8 ff                                  	call   0x100faff0
10579338:	83 c4 10                                        	add    esp,0x10
1057933b:	c3                                              	ret
1057933c:	cc                                              	int3
1057933d:	cc                                              	int3
1057933e:	cc                                              	int3
1057933f:	cc                                              	int3
