# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740100 (ScriptCore.DataFactory::DataFactory_GetXMLStringFromPrototypeResourceImpl)
Paired Ghidra pseudocode: 00740100_ScriptCore_DataFactory_DataFactory_GetXMLStringFromPrototypeResourceImpl.c
Window: [0x00740100, 0x00740120) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740100: e8 8b 92 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
00740110: d0 8b 4c 24 04 8b 10 8b 52 4c 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
00740100 <.text+0x33f100>:
  740100:	e8 8b 92 02 00                                  	call   0x769390
  740105:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740107:	8b c8                                           	mov    ecx,eax
  740109:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  74010f:	ff d0                                           	call   eax
  740111:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  740115:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740117:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
  74011a:	51                                              	push   ecx
  74011b:	8b c8                                           	mov    ecx,eax
  74011d:	ff d2                                           	call   edx
  74011f:	c3                                              	ret
