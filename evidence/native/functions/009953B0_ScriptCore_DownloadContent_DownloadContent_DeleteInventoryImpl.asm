# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009953b0 (ScriptCore.DownloadContent::DownloadContent_DeleteInventoryImpl)
Paired Ghidra pseudocode: 009953B0_ScriptCore_DownloadContent_DownloadContent_DeleteInventoryImpl.c
Window: [0x009953b0, 0x009953d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x009953d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009953b0: e8 ab da fe ff 8b c8 e8 84 d8 fe ff 8b 4c 24 08
009953c0: 8b 54 24 04 51 52 8b c8 e8 73 b0 01 00 c3 cc cc

LINEAR DISASSEMBLY
009953b0 <.text+0x5943b0>:
  9953b0:	e8 ab da fe ff                                  	call   0x982e60
  9953b5:	8b c8                                           	mov    ecx,eax
  9953b7:	e8 84 d8 fe ff                                  	call   0x982c40
  9953bc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  9953c0:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  9953c4:	51                                              	push   ecx
  9953c5:	52                                              	push   edx
  9953c6:	8b c8                                           	mov    ecx,eax
  9953c8:	e8 73 b0 01 00                                  	call   0x9b0440
  9953cd:	c3                                              	ret
  9953ce:	cc                                              	int3
  9953cf:	cc                                              	int3
