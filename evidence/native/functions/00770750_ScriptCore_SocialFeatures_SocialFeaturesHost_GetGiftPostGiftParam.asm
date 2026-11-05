# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770750 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostGiftParam)
Paired Ghidra pseudocode: 00770750_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostGiftParam.c
Window: [0x00770750, 0x00770770) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770750: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770760: 08 51 52 50 e8 57 34 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770750 <.text+0x36f750>:
  770750:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770754:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770758:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77075c:	50                                              	push   eax
  77075d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770761:	51                                              	push   ecx
  770762:	52                                              	push   edx
  770763:	50                                              	push   eax
  770764:	e8 57 34 2b 00                                  	call   0xa23bc0
  770769:	83 c4 10                                        	add    esp,0x10
  77076c:	c3                                              	ret
  77076d:	cc                                              	int3
  77076e:	cc                                              	int3
  77076f:	cc                                              	int3
