# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007707f0 (ScriptCore.SocialFeatures::SocialFeaturesHost_MarkGiftPostAsAccepted)
Paired Ghidra pseudocode: 007707F0_ScriptCore_SocialFeatures_SocialFeaturesHost_MarkGiftPostAsAccepted.c
Window: [0x007707f0, 0x00770810) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007707f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770800: 08 51 52 50 e8 f7 34 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
007707f0 <.text+0x36f7f0>:
  7707f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7707f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7707f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7707fc:	50                                              	push   eax
  7707fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770801:	51                                              	push   ecx
  770802:	52                                              	push   edx
  770803:	50                                              	push   eax
  770804:	e8 f7 34 2b 00                                  	call   0xa23d00
  770809:	83 c4 10                                        	add    esp,0x10
  77080c:	c3                                              	ret
  77080d:	cc                                              	int3
  77080e:	cc                                              	int3
  77080f:	cc                                              	int3
