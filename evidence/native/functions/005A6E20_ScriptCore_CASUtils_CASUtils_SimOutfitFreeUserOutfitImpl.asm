# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6e20 (ScriptCore.CASUtils::CASUtils_SimOutfitFreeUserOutfitImpl)
Paired Ghidra pseudocode: 005A6E20_ScriptCore_CASUtils_CASUtils_SimOutfitFreeUserOutfitImpl.c
Window: [0x005a6e20, 0x005a6e50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6e20: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 14 89
005a6e30: 4c 24 04 89 04 24 8b 44 24 18 8d 0c 24 51 89 54
005a6e40: 24 0c 89 44 24 10 e8 45 0c 04 00 83 c4 14 c3 cc

LINEAR DISASSEMBLY
005a6e20 <.text+0x1a5e20>:
  5a6e20:	83 ec 10                                        	sub    esp,0x10
  5a6e23:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a6e27:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  5a6e2b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a6e2f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5a6e33:	89 04 24                                        	mov    DWORD PTR [esp],eax
  5a6e36:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5a6e3a:	8d 0c 24                                        	lea    ecx,[esp]
  5a6e3d:	51                                              	push   ecx
  5a6e3e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  5a6e42:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5a6e46:	e8 45 0c 04 00                                  	call   0x5e7a90
  5a6e4b:	83 c4 14                                        	add    esp,0x14
  5a6e4e:	c3                                              	ret
  5a6e4f:	cc                                              	int3
