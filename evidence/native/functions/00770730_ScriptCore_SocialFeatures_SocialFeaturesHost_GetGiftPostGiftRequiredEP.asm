# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770730 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostGiftRequiredEP)
Paired Ghidra pseudocode: 00770730_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostGiftRequiredEP.c
Window: [0x00770730, 0x00770750) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770730: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770740: 08 51 52 50 e8 27 34 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770730 <.text+0x36f730>:
  770730:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770734:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770738:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77073c:	50                                              	push   eax
  77073d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770741:	51                                              	push   ecx
  770742:	52                                              	push   edx
  770743:	50                                              	push   eax
  770744:	e8 27 34 2b 00                                  	call   0xa23b70
  770749:	83 c4 10                                        	add    esp,0x10
  77074c:	c3                                              	ret
  77074d:	cc                                              	int3
  77074e:	cc                                              	int3
  77074f:	cc                                              	int3
