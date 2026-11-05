# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b060 (ScriptCore.UIManager::UIManager_GetCursorPositionImpl)
Paired Ghidra pseudocode: 0077B060_ScriptCore_UIManager_UIManager_GetCursorPositionImpl.c
Window: [0x0077b060, 0x0077b090) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b060: 83 ec 08 e8 28 ff d8 ff 8b 10 8b 52 48 8d 0c 24
0077b070: 51 8b c8 ff d2 d9 00 8b 4c 24 0c d9 19 d9 40 04
0077b080: d9 59 04 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b060 <.text+0x37a060>:
  77b060:	83 ec 08                                        	sub    esp,0x8
  77b063:	e8 28 ff d8 ff                                  	call   0x50af90
  77b068:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b06a:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
  77b06d:	8d 0c 24                                        	lea    ecx,[esp]
  77b070:	51                                              	push   ecx
  77b071:	8b c8                                           	mov    ecx,eax
  77b073:	ff d2                                           	call   edx
  77b075:	d9 00                                           	fld    DWORD PTR [eax]
  77b077:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77b07b:	d9 19                                           	fstp   DWORD PTR [ecx]
  77b07d:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77b080:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77b083:	83 c4 08                                        	add    esp,0x8
  77b086:	c3                                              	ret
  77b087:	cc                                              	int3
  77b088:	cc                                              	int3
  77b089:	cc                                              	int3
  77b08a:	cc                                              	int3
  77b08b:	cc                                              	int3
  77b08c:	cc                                              	int3
  77b08d:	cc                                              	int3
  77b08e:	cc                                              	int3
  77b08f:	cc                                              	int3
