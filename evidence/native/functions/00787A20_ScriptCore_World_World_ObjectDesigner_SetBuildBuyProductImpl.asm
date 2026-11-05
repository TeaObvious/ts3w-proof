# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787a20 (ScriptCore.World::World_ObjectDesigner_SetBuildBuyProductImpl)
Paired Ghidra pseudocode: 00787A20_ScriptCore_World_World_ObjectDesigner_SetBuildBuyProductImpl.c
Window: [0x00787a20, 0x00787a80) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787a20: 83 ec 10 e8 78 88 3a 00 8b 4c 24 30 8b 54 24 34
00787a30: 89 0c 24 8b 4c 24 28 89 54 24 04 8b 54 24 2c 89
00787a40: 4c 24 08 8b 4c 24 20 89 54 24 0c 8b 54 24 24 89
00787a50: 4c 24 28 8b 4c 24 18 89 54 24 2c 8b 54 24 1c 89
00787a60: 4c 24 30 8d 0c 24 51 8b 4c 24 18 89 54 24 38 8d
00787a70: 54 24 2c 52 51 8b c8 e8 44 0f 3b 00 83 c4 10 c3

LINEAR DISASSEMBLY
00787a20 <.text+0x386a20>:
  787a20:	83 ec 10                                        	sub    esp,0x10
  787a23:	e8 78 88 3a 00                                  	call   0xb302a0
  787a28:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  787a2c:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  787a30:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  787a33:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  787a37:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  787a3b:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  787a3f:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  787a43:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  787a47:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  787a4b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  787a4f:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  787a53:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  787a57:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  787a5b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  787a5f:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  787a63:	8d 0c 24                                        	lea    ecx,[esp]
  787a66:	51                                              	push   ecx
  787a67:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  787a6b:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  787a6f:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  787a73:	52                                              	push   edx
  787a74:	51                                              	push   ecx
  787a75:	8b c8                                           	mov    ecx,eax
  787a77:	e8 44 0f 3b 00                                  	call   0xb389c0
  787a7c:	83 c4 10                                        	add    esp,0x10
  787a7f:	c3                                              	ret
