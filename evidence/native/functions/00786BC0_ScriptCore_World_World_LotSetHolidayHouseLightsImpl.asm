# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786bc0 (ScriptCore.World::World_LotSetHolidayHouseLightsImpl)
Paired Ghidra pseudocode: 00786BC0_ScriptCore_World_World_LotSetHolidayHouseLightsImpl.c
Window: [0x00786bc0, 0x00786c20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786bc0: 8b 0d c4 db 1e 01 85 c9 74 4f 8b 44 24 08 8b 54
00786bd0: 24 04 6a 00 50 52 e8 35 bc 4d 00 85 c0 74 3a 8b
00786be0: 80 ac 02 00 00 85 c0 74 30 d9 44 24 20 8b 4c 24
00786bf0: 14 8b 54 24 10 83 ec 0c d9 5c 24 08 d9 44 24 28
00786c00: d9 5c 24 04 d9 44 24 24 d9 1c 24 51 8b 4c 24 1c
00786c10: 52 51 8b c8 e8 37 e5 40 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786bc0 <.text+0x385bc0>:
  786bc0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786bc6:	85 c9                                           	test   ecx,ecx
  786bc8:	74 4f                                           	je     0x786c19
  786bca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786bce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786bd2:	6a 00                                           	push   0x0
  786bd4:	50                                              	push   eax
  786bd5:	52                                              	push   edx
  786bd6:	e8 35 bc 4d 00                                  	call   0xc62810
  786bdb:	85 c0                                           	test   eax,eax
  786bdd:	74 3a                                           	je     0x786c19
  786bdf:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786be5:	85 c0                                           	test   eax,eax
  786be7:	74 30                                           	je     0x786c19
  786be9:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  786bed:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  786bf1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  786bf5:	83 ec 0c                                        	sub    esp,0xc
  786bf8:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  786bfc:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  786c00:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  786c04:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  786c08:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  786c0b:	51                                              	push   ecx
  786c0c:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  786c10:	52                                              	push   edx
  786c11:	51                                              	push   ecx
  786c12:	8b c8                                           	mov    ecx,eax
  786c14:	e8 37 e5 40 00                                  	call   0xb95150
  786c19:	c3                                              	ret
  786c1a:	cc                                              	int3
  786c1b:	cc                                              	int3
  786c1c:	cc                                              	int3
  786c1d:	cc                                              	int3
  786c1e:	cc                                              	int3
  786c1f:	cc                                              	int3
