# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074db30 (ScriptCore.RouteManager::RouteManager_SetTravellingEventInterval)
Paired Ghidra pseudocode: 0074DB30_ScriptCore_RouteManager_RouteManager_SetTravellingEventInterval.c
Window: [0x0074db30, 0x0074db70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074db70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074db30: e8 3b 9a 1e 00 85 c0 74 36 8b 4c 24 08 8b 54 24
0074db40: 04 51 52 8b c8 e8 36 a4 1e 00 85 c0 74 21 8b 0d
0074db50: 38 a1 1e 01 51 8b c8 e8 04 67 1e 00 85 c0 74 0f
0074db60: d9 44 24 0c 51 8b c8 d9 1c 24 e8 d1 46 20 00 c3

LINEAR DISASSEMBLY
0074db30 <.text+0x34cb30>:
  74db30:	e8 3b 9a 1e 00                                  	call   0x937570
  74db35:	85 c0                                           	test   eax,eax
  74db37:	74 36                                           	je     0x74db6f
  74db39:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74db3d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74db41:	51                                              	push   ecx
  74db42:	52                                              	push   edx
  74db43:	8b c8                                           	mov    ecx,eax
  74db45:	e8 36 a4 1e 00                                  	call   0x937f80
  74db4a:	85 c0                                           	test   eax,eax
  74db4c:	74 21                                           	je     0x74db6f
  74db4e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74db54:	51                                              	push   ecx
  74db55:	8b c8                                           	mov    ecx,eax
  74db57:	e8 04 67 1e 00                                  	call   0x934260
  74db5c:	85 c0                                           	test   eax,eax
  74db5e:	74 0f                                           	je     0x74db6f
  74db60:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74db64:	51                                              	push   ecx
  74db65:	8b c8                                           	mov    ecx,eax
  74db67:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74db6a:	e8 d1 46 20 00                                  	call   0x952240
  74db6f:	c3                                              	ret
