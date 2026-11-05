# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00e82820 (BindManagedNameToNativeAddress)
Paired Ghidra pseudocode: 00E82820_BindManagedNameToNativeAddress.c
Window: [0x00e82820, 0x00e82850) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00e82850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00e82820: e8 eb 2a 00 00 8b 44 24 08 8b 4c 24 04 6a 00 50
00e82830: 51 e8 4a 5b fc ff 8b 15 6c 53 1f 01 83 c4 04 50
00e82840: 52 e8 8a 33 fc ff 83 c4 10 e9 d2 2a 00 00 cc cc

LINEAR DISASSEMBLY
00e82820 <.text+0xa81820>:
  e82820:	e8 eb 2a 00 00                                  	call   0xe85310
  e82825:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  e82829:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  e8282d:	6a 00                                           	push   0x0
  e8282f:	50                                              	push   eax
  e82830:	51                                              	push   ecx
  e82831:	e8 4a 5b fc ff                                  	call   0xe48380
  e82836:	8b 15 6c 53 1f 01                               	mov    edx,DWORD PTR ds:0x11f536c
  e8283c:	83 c4 04                                        	add    esp,0x4
  e8283f:	50                                              	push   eax
  e82840:	52                                              	push   edx
  e82841:	e8 8a 33 fc ff                                  	call   0xe45bd0
  e82846:	83 c4 10                                        	add    esp,0x10
  e82849:	e9 d2 2a 00 00                                  	jmp    0xe85320
  e8284e:	cc                                              	int3
  e8284f:	cc                                              	int3
