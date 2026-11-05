# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d6f0 (ScriptCore.UIManager::UIManager_SendBrowserCommandImpl)
Paired Ghidra pseudocode: 0077D6F0_ScriptCore_UIManager_UIManager_SendBrowserCommandImpl.c
Window: [0x0077d6f0, 0x0077d730) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d6f0: 8b 44 24 04 3d 2a 23 f5 0f 75 2c a1 68 50 1d 01
0077d700: 85 c0 74 12 83 c0 f8 8b 80 f8 00 00 00 89 44 24
0077d710: 04 e9 4a 9b fc ff 33 c0 8b 80 f8 00 00 00 89 44
0077d720: 24 04 e9 39 9b fc ff 89 44 24 04 e9 f0 ad 26 00

LINEAR DISASSEMBLY
0077d6f0 <.text+0x37c6f0>:
  77d6f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  77d6f4:	3d 2a 23 f5 0f                                  	cmp    eax,0xff5232a
  77d6f9:	75 2c                                           	jne    0x77d727
  77d6fb:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  77d700:	85 c0                                           	test   eax,eax
  77d702:	74 12                                           	je     0x77d716
  77d704:	83 c0 f8                                        	add    eax,0xfffffff8
  77d707:	8b 80 f8 00 00 00                               	mov    eax,DWORD PTR [eax+0xf8]
  77d70d:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  77d711:	e9 4a 9b fc ff                                  	jmp    0x747260
  77d716:	33 c0                                           	xor    eax,eax
  77d718:	8b 80 f8 00 00 00                               	mov    eax,DWORD PTR [eax+0xf8]
  77d71e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  77d722:	e9 39 9b fc ff                                  	jmp    0x747260
  77d727:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  77d72b:	e9 f0 ad 26 00                                  	jmp    0x9e8520
