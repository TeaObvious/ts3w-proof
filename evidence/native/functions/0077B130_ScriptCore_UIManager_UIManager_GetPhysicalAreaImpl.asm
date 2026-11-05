# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b130 (ScriptCore.UIManager::UIManager_GetPhysicalAreaImpl)
Paired Ghidra pseudocode: 0077B130_ScriptCore_UIManager_UIManager_GetPhysicalAreaImpl.c
Window: [0x0077b130, 0x0077b190) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b130: e8 5b e2 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077b140: ff 81 fa 00 00 00 30 75 46 8b 10 51 8b c8 8b 82
0077b150: cc 00 00 00 ff d0 85 c0 74 35 8b 10 8b c8 8b 42
0077b160: 0c 68 18 82 ee ee ff d0 85 c0 74 23 8b 10 8b c8
0077b170: 8b 42 38 ff d0 d9 00 8b 4c 24 08 d9 19 d9 40 04
0077b180: d9 59 04 d9 40 08 d9 59 08 d9 40 0c d9 59 0c c3

LINEAR DISASSEMBLY
0077b130 <.text+0x37a130>:
  77b130:	e8 5b e2 fe ff                                  	call   0x769390
  77b135:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77b139:	8b d1                                           	mov    edx,ecx
  77b13b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b141:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b147:	75 46                                           	jne    0x77b18f
  77b149:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b14b:	51                                              	push   ecx
  77b14c:	8b c8                                           	mov    ecx,eax
  77b14e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b154:	ff d0                                           	call   eax
  77b156:	85 c0                                           	test   eax,eax
  77b158:	74 35                                           	je     0x77b18f
  77b15a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b15c:	8b c8                                           	mov    ecx,eax
  77b15e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b161:	68 18 82 ee ee                                  	push   0xeeee8218
  77b166:	ff d0                                           	call   eax
  77b168:	85 c0                                           	test   eax,eax
  77b16a:	74 23                                           	je     0x77b18f
  77b16c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b16e:	8b c8                                           	mov    ecx,eax
  77b170:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  77b173:	ff d0                                           	call   eax
  77b175:	d9 00                                           	fld    DWORD PTR [eax]
  77b177:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b17b:	d9 19                                           	fstp   DWORD PTR [ecx]
  77b17d:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77b180:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77b183:	d9 40 08                                        	fld    DWORD PTR [eax+0x8]
  77b186:	d9 59 08                                        	fstp   DWORD PTR [ecx+0x8]
  77b189:	d9 40 0c                                        	fld    DWORD PTR [eax+0xc]
  77b18c:	d9 59 0c                                        	fstp   DWORD PTR [ecx+0xc]
  77b18f:	c3                                              	ret
