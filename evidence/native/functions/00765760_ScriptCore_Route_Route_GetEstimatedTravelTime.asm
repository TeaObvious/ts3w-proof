# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00765760 (ScriptCore.Route::Route_GetEstimatedTravelTime)
Paired Ghidra pseudocode: 00765760_ScriptCore_Route_Route_GetEstimatedTravelTime.c
Window: [0x00765760, 0x00766db0) (5712 bytes; stop exclusive)
Next defined Ghidra entry: 0x00766db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00765760: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 81 ec 64 04
00765770: 00 00 85 c9 53 56 57 0f 84 2a 16 00 00 8b 45 08
00765780: 50 e8 2a 5d fe ff 8b f8 85 ff 89 7c 24 7c 0f 84
00765790: 13 16 00 00 8b 17 8b 42 10 8b cf ff d0 8b 87 e0
007657a0: 00 00 00 8b 55 0c 8d 8f e0 00 00 00 3b c1 0f 84
007657b0: ea 15 00 00 85 d2 74 09 8b 00 83 ea 01 3b c1 75
007657c0: f3 3b c1 0f 84 d5 15 00 00 8b 70 08 85 f6 89 74
007657d0: 24 2c 0f 84 c6 15 00 00 8d 46 04 b9 01 00 00 00
007657e0: f0 0f c1 08 e8 87 1d 1d 00 85 c0 0f 84 8d 15 00
007657f0: 00 8b 4d 14 8b 55 10 51 52 8b c8 e8 80 27 1d 00
00765800: 85 c0 89 44 24 18 74 14 8b 0d 84 d4 1d 01 51 8b
00765810: c8 e8 4a ea 1c 00 89 44 24 24 eb 08 c7 44 24 24
00765820: 00 00 00 00 8b 15 40 a1 1d 01 f3 0f 10 05 28 06
00765830: 15 01 8d 8c 24 80 01 00 00 89 54 24 28 f3 0f 11
00765840: 44 24 30 e8 78 bd fe ff 8b 7d 24 8b 4d 20 8b 75
00765850: 1c 8b 5d 18 8d 84 24 80 01 00 00 50 57 51 8b 4c
00765860: 24 34 56 53 e8 87 eb 0d 00 84 c0 0f 84 f9 14 00
00765870: 00 83 7c 24 24 00 0f 84 ee 14 00 00 8d 94 24 28
00765880: 02 00 00 8b c2 89 84 24 18 02 00 00 8d 84 24 14
00765890: 02 00 00 8b ca 50 0b f7 89 94 24 28 02 00 00 56
007658a0: 89 8c 24 1c 02 00 00 8b 4c 24 30 8d 94 24 d8 02
007658b0: 00 00 53 c7 84 24 2c 02 00 00 c8 aa f9 00 89 94
007658c0: 24 28 02 00 00 e8 76 e8 0d 00 80 bc 24 e5 01 00
007658d0: 00 00 89 44 24 20 74 0e f3 0f 10 05 b4 35 fb 00
007658e0: f3 0f 11 44 24 30 0f 57 c0 8b 74 24 20 33 db 3b
007658f0: f3 b8 5c 5a 00 01 f3 0f 11 44 24 64 f3 0f 11 44
00765900: 24 5c f3 0f 11 44 24 1c f3 0f 11 44 24 3c f3 0f
00765910: 11 44 24 38 f3 0f 11 44 24 74 f3 0f 11 84 24 80
00765920: 00 00 00 f3 0f 11 84 24 88 00 00 00 f3 0f 11 44
00765930: 24 14 f3 0f 11 44 24 10 f3 0f 11 44 24 78 f3 0f
00765940: 11 44 24 70 f3 0f 11 44 24 68 89 9c 24 a0 00 00
00765950: 00 89 9c 24 a4 00 00 00 89 9c 24 a8 00 00 00 89
00765960: 84 24 ac 00 00 00 89 9c 24 b0 00 00 00 89 9c 24
00765970: b4 00 00 00 89 9c 24 b8 00 00 00 89 84 24 bc 00
00765980: 00 00 89 9c 24 d4 00 00 00 89 9c 24 d8 00 00 00
00765990: 89 9c 24 dc 00 00 00 89 84 24 e0 00 00 00 89 9c
007659a0: 24 10 01 00 00 89 9c 24 14 01 00 00 89 9c 24 18
007659b0: 01 00 00 89 84 24 1c 01 00 00 89 9c 24 90 00 00
007659c0: 00 89 9c 24 94 00 00 00 89 9c 24 98 00 00 00 89
007659d0: 84 24 9c 00 00 00 0f 8e 98 03 00 00 8b 8c 24 18
007659e0: 02 00 00 2b 8c 24 14 02 00 00 b8 93 24 49 92 f7
007659f0: e9 03 d1 c1 fa 04 8b c2 c1 e8 1f 03 c2 0f 84 71
00765a00: 03 00 00 3b f0 0f 8d 69 03 00 00 8d 8c 24 e4 00
00765a10: 00 00 51 50 8d 8c 24 a8 00 00 00 f3 0f 11 84 24
00765a20: ec 00 00 00 e8 67 71 e1 ff 8b 8c 24 18 02 00 00
00765a30: 2b 8c 24 14 02 00 00 0f 57 c0 8d 94 24 08 01 00
00765a40: 00 52 b8 93 24 49 92 f7 e9 03 d1 c1 fa 04 8b c2
00765a50: c1 e8 1f 03 c2 50 8d 8c 24 b8 00 00 00 f3 0f 11
00765a60: 84 24 10 01 00 00 e8 25 71 e1 ff 0f 57 c0 8d 8c
00765a70: 24 e8 00 00 00 51 8b 8c 24 1c 02 00 00 2b 8c 24
00765a80: 18 02 00 00 b8 93 24 49 92 f7 e9 03 d1 c1 fa 04
00765a90: 8b c2 c1 e8 1f 03 c2 50 8d 8c 24 dc 00 00 00 f3
00765aa0: 0f 11 84 24 f0 00 00 00 e8 e3 70 e1 ff 0f 57 c0
00765ab0: 8d 8c 24 0c 01 00 00 51 8b 8c 24 1c 02 00 00 2b
00765ac0: 8c 24 18 02 00 00 b8 93 24 49 92 f7 e9 03 d1 c1
00765ad0: fa 04 8b c2 c1 e8 1f 03 c2 50 8d 8c 24 18 01 00
00765ae0: 00 f3 0f 11 84 24 14 01 00 00 e8 a1 70 e1 ff 8b
00765af0: 8c 24 18 02 00 00 2b 8c 24 14 02 00 00 b8 93 24
00765b00: 49 92 f7 e9 03 d1 c1 fa 04 8b ca c1 e9 1f 03 ca
00765b10: 51 8d 8c 24 94 00 00 00 e8 b3 fb ff ff 8d 94 24
00765b20: 80 01 00 00 52 8d 8c 24 c4 03 00 00 e8 8f 1c ff
00765b30: ff 8b 8c 24 18 02 00 00 8b bc 24 14 02 00 00 2b
00765b40: cf b8 93 24 49 92 f7 e9 03 d1 c1 fa 04 8b c2 c1
00765b50: e8 1f 33 f6 03 c2 85 c0 0f 8e 0a 02 00 00 8b ff
00765b60: 6a 01 8d 0c f5 00 00 00 00 2b ce 8d 04 8f 8b 8c
00765b70: 24 e4 01 00 00 8b 40 18 8d 94 24 c4 03 00 00 52
00765b80: 8b 94 24 e4 01 00 00 51 8b 8c 24 e4 01 00 00 52
00765b90: 8b 94 24 e4 01 00 00 51 8b 4c 24 3c 52 50 e8 0d
00765ba0: e3 0d 00 84 c0 0f 84 46 01 00 00 3b f3 75 14 8d
00765bb0: 8c 24 c0 03 00 00 51 8d 8c 24 84 01 00 00 e8 1d
00765bc0: 1e ff ff 8b 8c 24 e8 03 00 00 3b cb 0f 84 88 00
00765bd0: 00 00 8b 11 8b 42 10 ff d0 84 c0 75 7d d9 05 88
00765be0: f4 fd 00 8b 94 24 e8 03 00 00 8b 84 24 dc 01 00
00765bf0: 00 8d 8c 24 8c 00 00 00 51 53 51 8b 4c 24 30 d9
00765c00: 1c 24 52 50 83 c1 08 51 e8 83 33 0e 00 d9 5c 24
00765c10: 4c 8b 94 24 b8 00 00 00 f3 0f 10 84 24 a4 00 00
00765c20: 00 83 c4 18 3b f3 f3 0f 11 04 b2 7e 2d 3b 74 24
00765c30: 20 7f 27 f3 0f 10 44 24 34 f3 0f 58 44 24 14 f3
00765c40: 0f 11 44 24 14 f3 0f 10 84 24 8c 00 00 00 f3 0f
00765c50: 58 44 24 1c f3 0f 11 44 24 1c 8b 8c 24 ec 03 00
00765c60: 00 3b cb 0f 84 88 00 00 00 8b 01 8b 50 10 ff d2
00765c70: 84 c0 75 7d d9 05 88 f4 fd 00 8b 94 24 dc 01 00
00765c80: 00 8d 84 24 84 00 00 00 50 8b 44 24 28 53 51 8b
00765c90: 8c 24 f8 03 00 00 d9 1c 24 51 52 83 c0 08 50 e8
00765ca0: ec 32 0e 00 d9 5c 24 4c 8b 8c 24 c8 00 00 00 f3
00765cb0: 0f 10 84 24 9c 00 00 00 83 c4 18 3b f3 f3 0f 11
00765cc0: 04 b1 7e 2d 3b 74 24 20 7f 27 f3 0f 10 44 24 34
00765cd0: f3 0f 58 44 24 10 f3 0f 11 44 24 10 f3 0f 10 84
00765ce0: 24 84 00 00 00 f3 0f 58 44 24 3c f3 0f 11 44 24
00765cf0: 3c 8b ce 6b c9 7c 03 8c 24 90 00 00 00 8d 94 24
00765d00: c0 03 00 00 52 e8 d6 1c ff ff 8b 84 24 d4 00 00
00765d10: 00 f3 0f 10 44 24 3c f3 0f 58 44 24 1c 8b 8c 24
00765d20: 10 01 00 00 f3 0f 11 04 b0 f3 0f 10 44 24 10 f3
00765d30: 0f 58 44 24 14 f3 0f 11 04 b1 8b 8c 24 18 02 00
00765d40: 00 8b bc 24 14 02 00 00 2b cf b8 93 24 49 92 f7
00765d50: e9 03 d1 c1 fa 04 8b c2 c1 e8 1f 83 c6 01 03 c2
00765d60: 3b f0 0f 8c f8 fd ff ff 8d 8c 24 c0 03 00 00 e8
00765d70: bc e4 fe ff 39 9c 24 9c 01 00 00 0f 84 31 06 00
00765d80: 00 8b 7c 24 18 57 e8 c5 82 df ff 8b f0 83 c4 04
00765d90: 3b f3 74 21 8d 8c 24 40 04 00 00 51 8b ce e8 8d
00765da0: 1c 1f 00 8b ce e8 e6 d9 d4 ff 0f 28 00 0f 29 84
00765db0: 24 20 01 00 00 8b 5c 24 2c 8b 13 8b 82 2c 01 00
00765dc0: 00 0f 57 c0 8b cb 0f 29 84 24 c0 00 00 00 0f 29
00765dd0: 84 24 f0 00 00 00 ff d0 d9 5c 24 34 8b 4f 0c 8b
00765de0: 47 08 8b 13 51 50 8b 82 a4 00 00 00 8b cb ff d0
00765df0: d9 5c 24 18 8b 13 8b 42 48 8b cb ff d0 8b f8 85
00765e00: ff 0f 8e 0b 01 00 00 d9 44 24 18 8b 13 8b 92 1c
00765e10: 01 00 00 8d 44 24 14 50 6a 00 51 8d 8c 24 6c 04
00765e20: 00 00 d9 1c 24 51 8b cb c7 44 24 24 ff ff ff ff
00765e30: ff d2 8b 74 24 14 85 f6 7d 06 33 f6 89 74 24 14
00765e40: 3b f7 0f 8d ca 00 00 00 0f 57 db eb 03 8d 49 00
00765e50: 85 f6 0f 8c ad 00 00 00 8b 03 8b 90 d0 00 00 00
00765e60: 56 8b cb ff d2 0f 28 40 10 8b 03 8b 90 d0 00 00
00765e70: 00 56 8b cb 0f 29 84 24 f4 00 00 00 ff d2 f3 0f
00765e80: 10 40 20 0f 2f 05 fc 24 fc 00 73 21 8b 03 8b 90
00765e90: d0 00 00 00 56 8b cb ff d2 f3 0f 10 44 24 34 f3
00765ea0: 0f 5c 40 24 0f 2f 05 e4 c4 06 01 72 55 0f 28 8c
00765eb0: 24 f0 00 00 00 0f 57 db 0f 59 c9 0f 28 c1 0f c6
00765ec0: c1 02 0f 28 d1 0f c6 d1 01 0f 58 c2 0f 58 c1 0f
00765ed0: c6 c0 00 f3 0f 11 84 24 70 03 00 00 f3 0f 10 c3
00765ee0: 0f c6 c0 00 f3 0f 11 84 24 00 03 00 00 f3 0f 10
00765ef0: 84 24 70 03 00 00 0f 2f 84 24 00 03 00 00 77 15
00765f00: eb 03 0f 57 db 83 c6 01 3b f7 0f 8c 40 ff ff ff
00765f10: eb 03 0f 57 db 0f 28 a4 24 20 01 00 00 f3 0f 10
00765f20: 05 f8 98 f9 00 0f 28 ec 0f c6 ec 12 0f 28 f4 0f
00765f30: c6 f4 09 f3 0f 11 5c 24 4c f3 0f 11 5c 24 44 f3
00765f40: 0f 11 5c 24 40 f3 0f 11 44 24 48 0f 28 54 24 40
00765f50: 0f 28 ca 0f c6 ca 12 0f 59 ce 0f 28 fa 0f c6 fa
00765f60: 09 0f 59 fd 0f 5c cf 0f 28 fc 0f c6 fc ff 0f 59
00765f70: fa 0f 58 cf 0f 28 e1 0f c6 e1 12 0f 59 e6 0f 28
00765f80: f1 0f c6 f1 09 f3 0f 10 0d 88 fd 03 01 0f c6 c9
00765f90: 00 0f 59 f5 0f 5c e6 0f 59 e1 0f 28 8c 24 f0 00
00765fa0: 00 00 0f 58 e2 0f 29 a4 24 00 02 00 00 0f 29 8c
00765fb0: 24 f0 00 00 00 f3 0f 11 9c 24 04 02 00 00 0f 28
00765fc0: b4 24 00 02 00 00 0f 28 d6 0f 59 d6 0f 28 ca 0f
00765fd0: c6 ca 02 0f 28 e2 0f 28 eb 0f c6 e2 01 0f 58 cc
00765fe0: f3 0f 11 9c 24 f4 00 00 00 0f 58 ca 0f c6 c9 00
00765ff0: f3 0f 10 db f3 0f 11 8c 24 30 03 00 00 f3 0f 10
00766000: 8c 24 30 03 00 00 0f c6 db 00 f3 0f 11 9c 24 a0
00766010: 03 00 00 0f 2f 8c 24 a0 03 00 00 f3 0f 11 6c 24
00766020: 1c 0f 86 13 03 00 00 0f 28 a4 24 f0 00 00 00 0f
00766030: 59 e4 0f 28 cc 0f c6 cc 02 0f 28 fc 0f c6 fc 01
00766040: 0f 58 cf 0f 58 cc 0f c6 c9 00 f3 0f 11 8c 24 80
00766050: 03 00 00 f3 0f 10 8c 24 80 03 00 00 f3 0f 11 9c
00766060: 24 90 03 00 00 0f 2f 8c 24 90 03 00 00 0f 86 c7
00766070: 02 00 00 0f 28 ca 0f c6 ca 02 0f 28 da 0f c6 da
00766080: 01 0f 58 cb 0f 58 ca f3 0f 10 15 b4 b5 f9 00 0f
00766090: c6 c9 00 0f 52 e9 0f 28 fd 0f 59 fd 0f 59 f9 f3
007660a0: 0f 10 c0 0f c6 c0 00 0f c6 d2 00 0f 28 d8 0f 5c
007660b0: df 0f 28 fd 0f 59 fa 0f 59 df 0f 58 dd 0f 28 eb
007660c0: 0f 59 eb 0f 59 e9 0f 28 c8 0f 5c cd 0f 28 eb 0f
007660d0: 59 ea 0f 59 cd 0f 28 ec 0f c6 ec 01 0f 58 cb 0f
007660e0: 28 dc 0f c6 dc 02 0f 58 dd 0f 58 dc 0f 59 ce 0f
007660f0: c6 db 00 0f 52 eb 0f 28 f5 0f 59 f5 0f 59 f3 0f
00766100: 28 e0 0f 5c e6 0f 28 f5 0f 59 f2 0f 59 e6 0f 58
00766110: e5 0f 28 ec 0f 59 ec 0f 59 eb 0f 28 d8 0f 5c dd
00766120: 0f 28 ec 0f 59 ea 0f 59 dd 0f 58 dc 0f 59 9c 24
00766130: f0 00 00 00 0f 28 e9 0f 59 e9 0f 28 e5 0f c6 e5
00766140: 02 0f 28 f5 0f c6 f5 01 0f 58 e6 0f 58 e5 0f c6
00766150: e4 00 0f 52 f4 0f 28 fe 0f 59 fe 0f 59 fc 0f 28
00766160: e8 0f 5c ef 0f 28 e6 0f 59 e2 0f 59 ec 0f 58 ee
00766170: 0f 59 e9 0f 28 e3 0f 29 ac 24 60 01 00 00 0f 59
00766180: e3 0f 28 cc 0f c6 cc 02 0f 28 f4 0f c6 f4 01 0f
00766190: 58 ce 0f 58 cc 0f c6 c9 00 0f 52 e1 0f 28 f4 0f
007661a0: 59 f4 0f 59 f1 0f 28 c8 0f 5c ce 0f 28 f4 0f 59
007661b0: f2 0f 59 ce 0f 58 cc 0f 59 cb 0f 29 4c 24 40 0f
007661c0: 59 cd 0f 28 d1 0f c6 d1 02 0f 28 d9 0f c6 d9 01
007661d0: 0f 58 d3 0f 58 d1 f3 0f 10 0d 18 b2 fa 00 0f 28
007661e0: da 0f c6 da 00 0f c6 c9 00 0f 5f d9 0f 5d d8 0f
007661f0: 29 9c 24 20 01 00 00 d9 84 24 20 01 00 00 e8 bb
00766200: 95 81 00 d9 5c 24 18 0f 28 44 24 40 0f 28 8c 24
00766210: 60 01 00 00 f3 0f 10 54 24 18 0f 28 e1 0f c6 e1
00766220: 12 0f 28 d8 0f c6 d8 09 0f c6 c9 09 0f c6 c0 12
00766230: 0f 59 c1 0f 57 c9 0f 59 dc 0f 5c c3 f3 0f 10 1d
00766240: f8 98 f9 00 f3 0f 11 4c 24 4c f3 0f 11 4c 24 48
00766250: f3 0f 11 4c 24 40 f3 0f 11 5c 24 44 0f 28 4c 24
00766260: 40 0f 59 c1 0f 28 c8 0f c6 c8 02 0f 28 d8 0f c6
00766270: d8 01 0f 58 cb 0f 58 c8 f3 0f 10 84 24 c0 00 00
00766280: 00 0f c6 c9 00 f3 0f 11 84 24 b0 03 00 00 f3 0f
00766290: 10 84 24 b0 03 00 00 f3 0f 11 8c 24 20 03 00 00
007662a0: 0f 2f 84 24 20 03 00 00 0f c6 d2 00 76 11 f3 0f
007662b0: 10 05 a8 51 00 01 0f c6 c0 00 0f 5c c2 eb 03 0f
007662c0: 28 c2 0f 29 84 24 c0 00 00 00 d9 84 24 c0 00 00
007662d0: 00 83 ec 08 d8 0d 20 24 fc 00 0f 29 84 24 58 03
007662e0: 00 00 d9 54 24 30 dd 1c 24 e8 e2 94 81 00 d8 6c
007662f0: 24 30 83 c4 08 d9 54 24 28 d9 05 b4 b5 f9 00 f3
00766300: 0f 10 6c 24 28 d9 c9 df f1 dd d8 76 08 f3 0f 5c
00766310: 2d f8 98 f9 00 f3 0f 10 05 a8 51 00 01 f3 0f 59
00766320: e8 0f 2f 2d a4 51 00 01 f3 0f 11 6c 24 1c 76 0a
00766330: f3 0f 5c e8 f3 0f 11 6c 24 1c f6 05 b0 5b 1d 01
00766340: 01 75 17 f3 0f 10 05 58 5a 00 01 83 0d b0 5b 1d
00766350: 01 01 f3 0f 11 05 ac 5b 1d 01 f3 0f 11 6c 24 10
00766360: 81 64 24 10 ff ff ff 7f f3 0f 10 44 24 10 0f 2f
00766370: 05 ac 5b 1d 01 76 3f d9 44 24 1c 8b 94 24 dc 01
00766380: 00 00 8d 84 24 78 01 00 00 50 8b 44 24 28 6a 01
00766390: 51 8b 8c 24 a8 01 00 00 d9 1c 24 51 52 83 c0 08
007663a0: 50 e8 ea 2b 0e 00 d9 9c 24 8c 00 00 00 83 c4 18
007663b0: eb 04 8b 5c 24 2c 8b 13 8b 82 2c 01 00 00 8b cb
007663c0: ff d0 d9 5c 24 18 8b 13 0f 57 c0 8b 42 0c 6a 00
007663d0: 68 00 20 00 00 6a 00 8b cb f3 0f 11 44 24 1c ff
007663e0: d0 8b c8 e8 f8 60 0b 00 84 c0 74 1c 8b 8c 24 dc
007663f0: 01 00 00 8b 94 24 d4 01 00 00 51 52 e8 4f 16 0e
00766400: 00 d9 5c 24 18 83 c4 08 f3 0f 10 44 24 18 f3 0f
00766410: 5c 44 24 10 0f 57 c9 0f 2f c1 f3 0f 11 44 24 34
00766420: f3 0f 11 8c 24 ec 00 00 00 8d 44 24 34 77 07 8d
00766430: 84 24 ec 00 00 00 f3 0f 10 00 8b 84 24 84 01 00
00766440: 00 85 c0 8b 74 24 24 f3 0f 11 44 24 1c 74 2d d9
00766450: 05 88 f4 fd 00 8b 94 24 dc 01 00 00 8d 4c 24 64
00766460: 51 6a 00 51 d9 1c 24 50 52 8d 46 08 50 e8 1e 2b
00766470: 0e 00 d9 9c 24 98 00 00 00 83 c4 18 8b 84 24 8c
00766480: 01 00 00 85 c0 74 2d d9 05 88 f4 fd 00 8b 94 24
00766490: dc 01 00 00 8d 4c 24 5c 51 6a 00 51 d9 1c 24 50
007664a0: 52 8d 46 08 50 e8 e6 2a 0e 00 d9 9c 24 a0 00 00
007664b0: 00 83 c4 18 8b 84 24 98 01 00 00 85 c0 74 36 6a
007664c0: 00 8d 8c 24 40 01 00 00 51 50 83 c6 08 56 e8 bd
007664d0: 44 0e 00 d9 54 24 48 d9 05 98 51 00 01 83 c4 10
007664e0: d9 c9 df e9 dd d8 9f f6 c4 44 7a 09 0f 57 c0 f3
007664f0: 0f 11 44 24 38 8b 94 24 14 02 00 00 8b 84 24 18
00766500: 02 00 00 33 c9 3b d0 0f 95 c1 2b c2 8b f8 b8 93
00766510: 24 49 92 f7 ef 03 d7 c1 fa 04 83 e9 01 8b c2 c1
00766520: e8 1f 8b f1 b9 01 00 00 00 03 c2 3b c1 7e 5f f3
00766530: 0f 10 4c 24 64 f3 0f 10 54 24 5c f3 0f 10 5c 24
00766540: 30 f3 0f 10 6c 24 1c f3 0f 10 64 24 38 8b 7c 24
00766550: 20 3b cf 7f 39 8b 94 24 d4 00 00 00 f3 0f 10 04
00766560: 8a f3 0f 58 c2 f3 0f 58 c1 f3 0f 59 c3 0f 2f e0
00766570: f3 0f 11 44 24 60 8d 54 24 38 77 04 8d 54 24 60
00766580: 0f 2f 2a 76 09 8b f1 83 c1 01 3b c8 7c c3 85 f6
00766590: 7c 40 8b 84 24 10 01 00 00 f3 0f 10 04 b0 8b 8c
007665a0: 24 94 00 00 00 8b 9c 24 90 00 00 00 2b cb b8 43
007665b0: 08 21 84 f7 e9 03 d1 c1 fa 06 8b ca c1 e9 1f 03
007665c0: ca f3 0f 11 44 24 70 74 09 8b fe 6b ff 7c 03 fb
007665d0: eb 07 8d bc 24 80 01 00 00 83 bc 24 88 01 00 00
007665e0: 00 0f 84 2d 01 00 00 8b 47 08 8b 5c 24 24 6a 01
007665f0: 8d 94 24 80 01 00 00 52 50 83 c3 08 53 e8 8e 43
00766600: 0e 00 d9 54 24 28 f3 0f 10 05 f8 98 f9 00 83 c4
00766610: 10 80 bc 24 e5 01 00 00 00 f3 0f 11 44 24 3c 75
00766620: 18 f3 0f 10 05 28 06 15 01 f3 0f 11 44 24 10 f3
00766630: 0f 10 05 2c 06 15 01 eb 16 f3 0f 10 05 b4 35 fb
00766640: 00 f3 0f 11 44 24 10 f3 0f 10 05 88 fd 03 01 8b
00766650: 8c 24 b0 00 00 00 8b 94 24 a0 00 00 00 8b c1 2b
00766660: 84 24 b4 00 00 00 6a 01 f7 d8 1b c0 23 c1 8b ca
00766670: 2b 8c 24 a8 00 00 00 f3 0f 11 44 24 34 d9 44 24
00766680: 34 f7 d9 1b c9 83 ec 08 d9 5c 24 04 23 ca d9 44
00766690: 24 1c 8d 54 24 48 d9 1c 24 52 d9 44 24 6c 6a 00
007666a0: 56 50 8b 44 24 48 51 83 ec 10 d9 5c 24 0c d9 84
007666b0: 24 94 00 00 00 d9 5c 24 08 d9 5c 24 04 d9 44 24
007666c0: 4c d9 1c 24 50 6a 02 e8 b4 1b 0e 00 f3 0f 10 44
007666d0: 24 74 f3 0f 59 44 24 50 83 c4 38 85 c0 89 44 24
007666e0: 30 f3 0f 11 44 24 38 7e 2b 8b 47 08 d9 44 24 38
007666f0: 8b 57 5c 8d 8c 24 38 01 00 00 51 6a 00 51 d9 1c
00766700: 24 50 52 53 e8 87 28 0e 00 da 4c 24 48 83 c4 18
00766710: d9 5c 24 78 8b 5c 24 2c 8b 03 8b 90 3c 01 00 00
00766720: 8b cb ff d2 84 c0 0f 84 f0 04 00 00 0f 57 c0 f3
00766730: 0f 10 0d f8 98 f9 00 8b 03 8b 90 40 01 00 00 f3
00766740: 0f 11 44 24 4c f3 0f 11 4c 24 48 f3 0f 11 44 24
00766750: 44 f3 0f 11 44 24 40 0f 28 44 24 40 8d 8c 24 50
00766760: 04 00 00 51 8b cb 0f 29 44 24 44 ff d2 0f 28 08
00766770: 0f 28 64 24 40 8b 03 8b 50 4c 0f 28 d1 0f c6 d1
00766780: 09 0f 28 d9 0f c6 d9 12 0f 28 ec 0f c6 ec 09 0f
00766790: 59 eb 0f 28 c4 0f c6 c4 12 0f 59 c2 0f 5c c5 0f
007667a0: 28 e9 0f c6 e9 ff 0f 59 ec 0f 58 c5 0f 28 c8 0f
007667b0: c6 c8 09 0f c6 c0 12 0f 59 cb 0f 59 c2 0f 5c c1
007667c0: f3 0f 10 0d 88 fd 03 01 0f c6 c9 00 0f 59 c1 8b
007667d0: cb 0f 29 84 24 c0 00 00 00 ff d2 85 c0 0f 86 39
007667e0: 04 00 00 8b 13 8b 52 68 8d 8c 24 40 03 00 00 51
007667f0: 83 c0 ff 50 8b cb ff d2 84 c0 0f 84 1c 04 00 00
00766800: 0f 57 d2 0f 28 84 24 40 03 00 00 0f 29 84 24 20
00766810: 01 00 00 0f 28 84 24 c0 00 00 00 0f 58 44 24 40
00766820: 0f 29 84 24 40 01 00 00 f3 0f 11 94 24 24 01 00
00766830: 00 0f 28 b4 24 20 01 00 00 0f 28 ce 0f 59 ce 0f
00766840: 28 c1 0f c6 c1 02 0f 28 e1 0f 28 da 0f c6 e1 01
00766850: 0f 58 c4 f3 0f 11 94 24 44 01 00 00 0f 58 c1 0f
00766860: c6 c0 00 f3 0f 10 d2 f3 0f 11 84 24 60 03 00 00
00766870: f3 0f 10 84 24 60 03 00 00 0f c6 d2 00 f3 0f 11
00766880: 94 24 d0 02 00 00 0f 2f 84 24 d0 02 00 00 f3 0f
00766890: 11 5c 24 10 0f 86 0f 03 00 00 0f 28 a4 24 40 01
007668a0: 00 00 0f 59 e4 0f 28 c4 0f c6 c4 02 0f 28 ec 0f
007668b0: c6 ec 01 0f 58 c5 0f 58 c4 0f c6 c0 00 f3 0f 11
007668c0: 84 24 e0 02 00 00 f3 0f 10 84 24 e0 02 00 00 f3
007668d0: 0f 11 94 24 f0 02 00 00 0f 2f 84 24 f0 02 00 00
007668e0: 0f 86 c3 02 00 00 0f 28 c1 0f c6 c1 02 0f 28 d1
007668f0: 0f c6 d1 01 0f 58 c2 0f 58 c1 f3 0f 10 0d b4 b5
00766900: f9 00 0f c6 c0 00 0f 28 e8 f3 0f 10 05 f8 98 f9
00766910: 00 0f 52 dd 0f 28 fb 0f 59 fb 0f 59 fd 0f c6 c0
00766920: 00 0f c6 c9 00 0f 28 d0 0f 5c d7 0f 28 f9 0f 59
00766930: fb 0f 59 d7 0f 58 d3 0f 28 fa 0f 59 fa 0f 59 fd
00766940: 0f 28 d8 0f 5c df 0f 28 e9 0f 59 ea 0f 59 dd 0f
00766950: 28 ec 0f c6 ec 01 0f 58 da 0f 28 d4 0f c6 d4 02
00766960: 0f 58 d5 0f 58 d4 0f 59 de 0f c6 d2 00 0f 52 ea
00766970: 0f 28 f5 0f 59 f5 0f 59 f2 0f 28 e0 0f 5c e6 0f
00766980: 28 f1 0f 59 f5 0f 59 e6 0f 58 e5 0f 28 ec 0f 59
00766990: ec 0f 59 ea 0f 28 d0 0f 5c d5 0f 28 e9 0f 59 ec
007669a0: 0f 59 d5 0f 58 d4 0f 59 94 24 40 01 00 00 0f 28
007669b0: eb 0f 59 eb 0f 28 e5 0f c6 e5 02 0f 28 f5 0f c6
007669c0: f5 01 0f 58 e6 0f 58 e5 0f c6 e4 00 0f 52 f4 0f
007669d0: 28 fe 0f 59 fe 0f 59 fc 0f 28 e8 0f 5c ef 0f 28
007669e0: e6 0f 59 e1 0f 59 ec 0f 58 ee 0f 59 eb 0f 29 6c
007669f0: 24 40 0f 28 e2 0f 59 e2 0f 28 dc 0f c6 dc 02 0f
00766a00: 28 f4 0f c6 f4 01 0f 58 de 0f 58 dc 0f c6 db 00
00766a10: 0f 52 e3 0f 28 f4 0f 59 f4 0f 59 f3 0f 28 d8 0f
00766a20: 5c de 0f 28 f4 0f 59 f1 0f 59 de 0f 58 dc 0f 59
00766a30: da 0f 28 cb 0f 59 cd 0f 29 9c 24 60 01 00 00 0f
00766a40: 28 d1 0f c6 d1 02 0f 28 d9 0f c6 d9 01 0f 58 d3
00766a50: 0f 58 d1 f3 0f 10 0d 18 b2 fa 00 0f 28 da 0f c6
00766a60: da 00 0f c6 c9 00 0f 5f d9 0f 5d d8 0f 29 9c 24
00766a70: c0 00 00 00 d9 84 24 c0 00 00 00 e8 3e 8d 81 00
00766a80: d9 5c 24 18 0f 28 4c 24 40 0f 28 84 24 60 01 00
00766a90: 00 f3 0f 10 54 24 18 0f 28 e1 0f c6 e1 12 0f 28
00766aa0: d8 0f c6 d8 09 0f c6 c9 09 0f c6 c0 12 0f 59 c1
00766ab0: 0f 57 c9 0f 59 dc 0f 5c c3 f3 0f 10 1d f8 98 f9
00766ac0: 00 f3 0f 11 4c 24 4c f3 0f 11 4c 24 48 f3 0f 11
00766ad0: 4c 24 40 f3 0f 11 5c 24 44 0f 28 4c 24 40 0f 59
00766ae0: c1 0f 28 c8 0f c6 c8 02 0f 28 d8 0f c6 d8 01 0f
00766af0: 58 cb 0f 58 c8 0f 57 c0 0f c6 c9 00 f3 0f 11 84
00766b00: 24 10 03 00 00 f3 0f 10 84 24 10 03 00 00 f3 0f
00766b10: 11 8c 24 50 01 00 00 0f 2f 84 24 50 01 00 00 0f
00766b20: c6 d2 00 76 11 f3 0f 10 05 a8 51 00 01 0f c6 c0
00766b30: 00 0f 5c c2 eb 03 0f 28 c2 0f 29 84 24 50 01 00
00766b40: 00 d9 84 24 50 01 00 00 d8 0d 20 24 fc 00 83 ec
00766b50: 08 d9 54 24 28 dd 1c 24 e8 73 8c 81 00 d8 6c 24
00766b60: 28 83 c4 08 d9 54 24 20 d9 05 b4 b5 f9 00 f3 0f
00766b70: 10 5c 24 20 d9 c9 df f1 dd d8 76 08 f3 0f 5c 1d
00766b80: f8 98 f9 00 f3 0f 10 05 a8 51 00 01 f3 0f 59 d8
00766b90: 0f 2f 1d a4 51 00 01 f3 0f 11 5c 24 10 76 0a f3
00766ba0: 0f 5c d8 f3 0f 11 5c 24 10 f6 05 b0 5b 1d 01 02
00766bb0: 75 17 f3 0f 10 05 58 5a 00 01 83 0d b0 5b 1d 01
00766bc0: 02 f3 0f 11 05 a8 5b 1d 01 f3 0f 11 5c 24 14 81
00766bd0: 64 24 14 ff ff ff 7f f3 0f 10 44 24 14 0f 2f 05
00766be0: a8 5b 1d 01 76 36 d9 44 24 10 8b 94 24 dc 01 00
00766bf0: 00 8d 44 24 6c 50 8b 44 24 28 6a 03 51 8b 8c 24
00766c00: a8 01 00 00 d9 1c 24 51 52 83 c0 08 50 e8 7e 23
00766c10: 0e 00 d9 9c 24 80 00 00 00 83 c4 18 f3 0f 10 44
00766c20: 24 68 f3 0f 58 44 24 70 f3 0f 58 44 24 78 f3 0f
00766c30: 58 84 24 88 00 00 00 f3 0f 58 84 24 80 00 00 00
00766c40: 8b b4 24 90 00 00 00 8b bc 24 94 00 00 00 3b f7
00766c50: f3 0f 58 44 24 74 f3 0f 59 05 54 5a 00 01 f3 0f
00766c60: 11 44 24 60 73 15 8b ce e8 c3 d5 fe ff 83 c6 7c
00766c70: 3b f7 72 f2 8b b4 24 90 00 00 00 85 f6 74 09 56
00766c80: e8 5b d8 d7 ff 83 c4 04 8b 84 24 10 01 00 00 85
00766c90: c0 74 09 50 e8 47 d8 d7 ff 83 c4 04 8b 84 24 d4
00766ca0: 00 00 00 85 c0 74 09 50 e8 33 d8 d7 ff 83 c4 04
00766cb0: 8b 84 24 b0 00 00 00 85 c0 74 09 50 e8 1f d8 d7
00766cc0: ff 83 c4 04 8b 84 24 a0 00 00 00 85 c0 74 09 50
00766cd0: e8 0b d8 d7 ff 83 c4 04 8b 84 24 18 02 00 00 8b
00766ce0: b4 24 14 02 00 00 3b f0 8b f8 73 26 8d 64 24 00
00766cf0: 8b 06 85 c0 74 0e 3b 46 10 74 09 50 e8 df d7 d7
00766d00: ff 83 c4 04 83 c6 1c 3b f7 72 e5 8b b4 24 14 02
00766d10: 00 00 85 f6 74 12 3b b4 24 24 02 00 00 74 09 56
00766d20: e8 bb d7 d7 ff 83 c4 04 8d 8c 24 80 01 00 00 e8
00766d30: fc d4 fe ff 8d 43 04 8b c8 83 ca ff f0 0f c1 11
00766d40: 4a 75 11 b9 01 00 00 00 87 08 8b 13 8b 02 6a 01
00766d50: 8b cb ff d0 8b 4c 24 7c 8b 11 8b 42 14 ff d0 d9
00766d60: 44 24 60 5f 5e 5b 8b e5 5d c3 8d 8c 24 80 01 00
00766d70: 00 e8 ba d4 fe ff 8b 7c 24 7c 8b 74 24 2c 8d 46
00766d80: 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00
00766d90: 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 8b 17
00766da0: 8b 42 14 8b cf ff d0 d9 ee 5f 5e 5b 8b e5 5d c3

LINEAR DISASSEMBLY
00765760 <.text+0x364760>:
  765760:	55                                              	push   ebp
  765761:	8b ec                                           	mov    ebp,esp
  765763:	83 e4 f0                                        	and    esp,0xfffffff0
  765766:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  76576c:	81 ec 64 04 00 00                               	sub    esp,0x464
  765772:	85 c9                                           	test   ecx,ecx
  765774:	53                                              	push   ebx
  765775:	56                                              	push   esi
  765776:	57                                              	push   edi
  765777:	0f 84 2a 16 00 00                               	je     0x766da7
  76577d:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  765780:	50                                              	push   eax
  765781:	e8 2a 5d fe ff                                  	call   0x74b4b0
  765786:	8b f8                                           	mov    edi,eax
  765788:	85 ff                                           	test   edi,edi
  76578a:	89 7c 24 7c                                     	mov    DWORD PTR [esp+0x7c],edi
  76578e:	0f 84 13 16 00 00                               	je     0x766da7
  765794:	8b 17                                           	mov    edx,DWORD PTR [edi]
  765796:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  765799:	8b cf                                           	mov    ecx,edi
  76579b:	ff d0                                           	call   eax
  76579d:	8b 87 e0 00 00 00                               	mov    eax,DWORD PTR [edi+0xe0]
  7657a3:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  7657a6:	8d 8f e0 00 00 00                               	lea    ecx,[edi+0xe0]
  7657ac:	3b c1                                           	cmp    eax,ecx
  7657ae:	0f 84 ea 15 00 00                               	je     0x766d9e
  7657b4:	85 d2                                           	test   edx,edx
  7657b6:	74 09                                           	je     0x7657c1
  7657b8:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7657ba:	83 ea 01                                        	sub    edx,0x1
  7657bd:	3b c1                                           	cmp    eax,ecx
  7657bf:	75 f3                                           	jne    0x7657b4
  7657c1:	3b c1                                           	cmp    eax,ecx
  7657c3:	0f 84 d5 15 00 00                               	je     0x766d9e
  7657c9:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  7657cc:	85 f6                                           	test   esi,esi
  7657ce:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  7657d2:	0f 84 c6 15 00 00                               	je     0x766d9e
  7657d8:	8d 46 04                                        	lea    eax,[esi+0x4]
  7657db:	b9 01 00 00 00                                  	mov    ecx,0x1
  7657e0:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7657e4:	e8 87 1d 1d 00                                  	call   0x937570
  7657e9:	85 c0                                           	test   eax,eax
  7657eb:	0f 84 8d 15 00 00                               	je     0x766d7e
  7657f1:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  7657f4:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  7657f7:	51                                              	push   ecx
  7657f8:	52                                              	push   edx
  7657f9:	8b c8                                           	mov    ecx,eax
  7657fb:	e8 80 27 1d 00                                  	call   0x937f80
  765800:	85 c0                                           	test   eax,eax
  765802:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  765806:	74 14                                           	je     0x76581c
  765808:	8b 0d 84 d4 1d 01                               	mov    ecx,DWORD PTR ds:0x11dd484
  76580e:	51                                              	push   ecx
  76580f:	8b c8                                           	mov    ecx,eax
  765811:	e8 4a ea 1c 00                                  	call   0x934260
  765816:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  76581a:	eb 08                                           	jmp    0x765824
  76581c:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  765824:	8b 15 40 a1 1d 01                               	mov    edx,DWORD PTR ds:0x11da140
  76582a:	f3 0f 10 05 28 06 15 01                         	movss  xmm0,DWORD PTR ds:0x1150628
  765832:	8d 8c 24 80 01 00 00                            	lea    ecx,[esp+0x180]
  765839:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  76583d:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  765843:	e8 78 bd fe ff                                  	call   0x7515c0
  765848:	8b 7d 24                                        	mov    edi,DWORD PTR [ebp+0x24]
  76584b:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
  76584e:	8b 75 1c                                        	mov    esi,DWORD PTR [ebp+0x1c]
  765851:	8b 5d 18                                        	mov    ebx,DWORD PTR [ebp+0x18]
  765854:	8d 84 24 80 01 00 00                            	lea    eax,[esp+0x180]
  76585b:	50                                              	push   eax
  76585c:	57                                              	push   edi
  76585d:	51                                              	push   ecx
  76585e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  765862:	56                                              	push   esi
  765863:	53                                              	push   ebx
  765864:	e8 87 eb 0d 00                                  	call   0x8443f0
  765869:	84 c0                                           	test   al,al
  76586b:	0f 84 f9 14 00 00                               	je     0x766d6a
  765871:	83 7c 24 24 00                                  	cmp    DWORD PTR [esp+0x24],0x0
  765876:	0f 84 ee 14 00 00                               	je     0x766d6a
  76587c:	8d 94 24 28 02 00 00                            	lea    edx,[esp+0x228]
  765883:	8b c2                                           	mov    eax,edx
  765885:	89 84 24 18 02 00 00                            	mov    DWORD PTR [esp+0x218],eax
  76588c:	8d 84 24 14 02 00 00                            	lea    eax,[esp+0x214]
  765893:	8b ca                                           	mov    ecx,edx
  765895:	50                                              	push   eax
  765896:	0b f7                                           	or     esi,edi
  765898:	89 94 24 28 02 00 00                            	mov    DWORD PTR [esp+0x228],edx
  76589f:	56                                              	push   esi
  7658a0:	89 8c 24 1c 02 00 00                            	mov    DWORD PTR [esp+0x21c],ecx
  7658a7:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7658ab:	8d 94 24 d8 02 00 00                            	lea    edx,[esp+0x2d8]
  7658b2:	53                                              	push   ebx
  7658b3:	c7 84 24 2c 02 00 00 c8 aa f9 00                	mov    DWORD PTR [esp+0x22c],0xf9aac8
  7658be:	89 94 24 28 02 00 00                            	mov    DWORD PTR [esp+0x228],edx
  7658c5:	e8 76 e8 0d 00                                  	call   0x844140
  7658ca:	80 bc 24 e5 01 00 00 00                         	cmp    BYTE PTR [esp+0x1e5],0x0
  7658d2:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7658d6:	74 0e                                           	je     0x7658e6
  7658d8:	f3 0f 10 05 b4 35 fb 00                         	movss  xmm0,DWORD PTR ds:0xfb35b4
  7658e0:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  7658e6:	0f 57 c0                                        	xorps  xmm0,xmm0
  7658e9:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  7658ed:	33 db                                           	xor    ebx,ebx
  7658ef:	3b f3                                           	cmp    esi,ebx
  7658f1:	b8 5c 5a 00 01                                  	mov    eax,0x1005a5c
  7658f6:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
  7658fc:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  765902:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  765908:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  76590e:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  765914:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
  76591a:	f3 0f 11 84 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm0
  765923:	f3 0f 11 84 24 88 00 00 00                      	movss  DWORD PTR [esp+0x88],xmm0
  76592c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  765932:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  765938:	f3 0f 11 44 24 78                               	movss  DWORD PTR [esp+0x78],xmm0
  76593e:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
  765944:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
  76594a:	89 9c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ebx
  765951:	89 9c 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],ebx
  765958:	89 9c 24 a8 00 00 00                            	mov    DWORD PTR [esp+0xa8],ebx
  76595f:	89 84 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],eax
  765966:	89 9c 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],ebx
  76596d:	89 9c 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],ebx
  765974:	89 9c 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],ebx
  76597b:	89 84 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],eax
  765982:	89 9c 24 d4 00 00 00                            	mov    DWORD PTR [esp+0xd4],ebx
  765989:	89 9c 24 d8 00 00 00                            	mov    DWORD PTR [esp+0xd8],ebx
  765990:	89 9c 24 dc 00 00 00                            	mov    DWORD PTR [esp+0xdc],ebx
  765997:	89 84 24 e0 00 00 00                            	mov    DWORD PTR [esp+0xe0],eax
  76599e:	89 9c 24 10 01 00 00                            	mov    DWORD PTR [esp+0x110],ebx
  7659a5:	89 9c 24 14 01 00 00                            	mov    DWORD PTR [esp+0x114],ebx
  7659ac:	89 9c 24 18 01 00 00                            	mov    DWORD PTR [esp+0x118],ebx
  7659b3:	89 84 24 1c 01 00 00                            	mov    DWORD PTR [esp+0x11c],eax
  7659ba:	89 9c 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],ebx
  7659c1:	89 9c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ebx
  7659c8:	89 9c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ebx
  7659cf:	89 84 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],eax
  7659d6:	0f 8e 98 03 00 00                               	jle    0x765d74
  7659dc:	8b 8c 24 18 02 00 00                            	mov    ecx,DWORD PTR [esp+0x218]
  7659e3:	2b 8c 24 14 02 00 00                            	sub    ecx,DWORD PTR [esp+0x214]
  7659ea:	b8 93 24 49 92                                  	mov    eax,0x92492493
  7659ef:	f7 e9                                           	imul   ecx
  7659f1:	03 d1                                           	add    edx,ecx
  7659f3:	c1 fa 04                                        	sar    edx,0x4
  7659f6:	8b c2                                           	mov    eax,edx
  7659f8:	c1 e8 1f                                        	shr    eax,0x1f
  7659fb:	03 c2                                           	add    eax,edx
  7659fd:	0f 84 71 03 00 00                               	je     0x765d74
  765a03:	3b f0                                           	cmp    esi,eax
  765a05:	0f 8d 69 03 00 00                               	jge    0x765d74
  765a0b:	8d 8c 24 e4 00 00 00                            	lea    ecx,[esp+0xe4]
  765a12:	51                                              	push   ecx
  765a13:	50                                              	push   eax
  765a14:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  765a1b:	f3 0f 11 84 24 ec 00 00 00                      	movss  DWORD PTR [esp+0xec],xmm0
  765a24:	e8 67 71 e1 ff                                  	call   0x57cb90
  765a29:	8b 8c 24 18 02 00 00                            	mov    ecx,DWORD PTR [esp+0x218]
  765a30:	2b 8c 24 14 02 00 00                            	sub    ecx,DWORD PTR [esp+0x214]
  765a37:	0f 57 c0                                        	xorps  xmm0,xmm0
  765a3a:	8d 94 24 08 01 00 00                            	lea    edx,[esp+0x108]
  765a41:	52                                              	push   edx
  765a42:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765a47:	f7 e9                                           	imul   ecx
  765a49:	03 d1                                           	add    edx,ecx
  765a4b:	c1 fa 04                                        	sar    edx,0x4
  765a4e:	8b c2                                           	mov    eax,edx
  765a50:	c1 e8 1f                                        	shr    eax,0x1f
  765a53:	03 c2                                           	add    eax,edx
  765a55:	50                                              	push   eax
  765a56:	8d 8c 24 b8 00 00 00                            	lea    ecx,[esp+0xb8]
  765a5d:	f3 0f 11 84 24 10 01 00 00                      	movss  DWORD PTR [esp+0x110],xmm0
  765a66:	e8 25 71 e1 ff                                  	call   0x57cb90
  765a6b:	0f 57 c0                                        	xorps  xmm0,xmm0
  765a6e:	8d 8c 24 e8 00 00 00                            	lea    ecx,[esp+0xe8]
  765a75:	51                                              	push   ecx
  765a76:	8b 8c 24 1c 02 00 00                            	mov    ecx,DWORD PTR [esp+0x21c]
  765a7d:	2b 8c 24 18 02 00 00                            	sub    ecx,DWORD PTR [esp+0x218]
  765a84:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765a89:	f7 e9                                           	imul   ecx
  765a8b:	03 d1                                           	add    edx,ecx
  765a8d:	c1 fa 04                                        	sar    edx,0x4
  765a90:	8b c2                                           	mov    eax,edx
  765a92:	c1 e8 1f                                        	shr    eax,0x1f
  765a95:	03 c2                                           	add    eax,edx
  765a97:	50                                              	push   eax
  765a98:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
  765a9f:	f3 0f 11 84 24 f0 00 00 00                      	movss  DWORD PTR [esp+0xf0],xmm0
  765aa8:	e8 e3 70 e1 ff                                  	call   0x57cb90
  765aad:	0f 57 c0                                        	xorps  xmm0,xmm0
  765ab0:	8d 8c 24 0c 01 00 00                            	lea    ecx,[esp+0x10c]
  765ab7:	51                                              	push   ecx
  765ab8:	8b 8c 24 1c 02 00 00                            	mov    ecx,DWORD PTR [esp+0x21c]
  765abf:	2b 8c 24 18 02 00 00                            	sub    ecx,DWORD PTR [esp+0x218]
  765ac6:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765acb:	f7 e9                                           	imul   ecx
  765acd:	03 d1                                           	add    edx,ecx
  765acf:	c1 fa 04                                        	sar    edx,0x4
  765ad2:	8b c2                                           	mov    eax,edx
  765ad4:	c1 e8 1f                                        	shr    eax,0x1f
  765ad7:	03 c2                                           	add    eax,edx
  765ad9:	50                                              	push   eax
  765ada:	8d 8c 24 18 01 00 00                            	lea    ecx,[esp+0x118]
  765ae1:	f3 0f 11 84 24 14 01 00 00                      	movss  DWORD PTR [esp+0x114],xmm0
  765aea:	e8 a1 70 e1 ff                                  	call   0x57cb90
  765aef:	8b 8c 24 18 02 00 00                            	mov    ecx,DWORD PTR [esp+0x218]
  765af6:	2b 8c 24 14 02 00 00                            	sub    ecx,DWORD PTR [esp+0x214]
  765afd:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765b02:	f7 e9                                           	imul   ecx
  765b04:	03 d1                                           	add    edx,ecx
  765b06:	c1 fa 04                                        	sar    edx,0x4
  765b09:	8b ca                                           	mov    ecx,edx
  765b0b:	c1 e9 1f                                        	shr    ecx,0x1f
  765b0e:	03 ca                                           	add    ecx,edx
  765b10:	51                                              	push   ecx
  765b11:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  765b18:	e8 b3 fb ff ff                                  	call   0x7656d0
  765b1d:	8d 94 24 80 01 00 00                            	lea    edx,[esp+0x180]
  765b24:	52                                              	push   edx
  765b25:	8d 8c 24 c4 03 00 00                            	lea    ecx,[esp+0x3c4]
  765b2c:	e8 8f 1c ff ff                                  	call   0x7577c0
  765b31:	8b 8c 24 18 02 00 00                            	mov    ecx,DWORD PTR [esp+0x218]
  765b38:	8b bc 24 14 02 00 00                            	mov    edi,DWORD PTR [esp+0x214]
  765b3f:	2b cf                                           	sub    ecx,edi
  765b41:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765b46:	f7 e9                                           	imul   ecx
  765b48:	03 d1                                           	add    edx,ecx
  765b4a:	c1 fa 04                                        	sar    edx,0x4
  765b4d:	8b c2                                           	mov    eax,edx
  765b4f:	c1 e8 1f                                        	shr    eax,0x1f
  765b52:	33 f6                                           	xor    esi,esi
  765b54:	03 c2                                           	add    eax,edx
  765b56:	85 c0                                           	test   eax,eax
  765b58:	0f 8e 0a 02 00 00                               	jle    0x765d68
  765b5e:	8b ff                                           	mov    edi,edi
  765b60:	6a 01                                           	push   0x1
  765b62:	8d 0c f5 00 00 00 00                            	lea    ecx,[esi*8+0x0]
  765b69:	2b ce                                           	sub    ecx,esi
  765b6b:	8d 04 8f                                        	lea    eax,[edi+ecx*4]
  765b6e:	8b 8c 24 e4 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1e4]
  765b75:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  765b78:	8d 94 24 c4 03 00 00                            	lea    edx,[esp+0x3c4]
  765b7f:	52                                              	push   edx
  765b80:	8b 94 24 e4 01 00 00                            	mov    edx,DWORD PTR [esp+0x1e4]
  765b87:	51                                              	push   ecx
  765b88:	8b 8c 24 e4 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1e4]
  765b8f:	52                                              	push   edx
  765b90:	8b 94 24 e4 01 00 00                            	mov    edx,DWORD PTR [esp+0x1e4]
  765b97:	51                                              	push   ecx
  765b98:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  765b9c:	52                                              	push   edx
  765b9d:	50                                              	push   eax
  765b9e:	e8 0d e3 0d 00                                  	call   0x843eb0
  765ba3:	84 c0                                           	test   al,al
  765ba5:	0f 84 46 01 00 00                               	je     0x765cf1
  765bab:	3b f3                                           	cmp    esi,ebx
  765bad:	75 14                                           	jne    0x765bc3
  765baf:	8d 8c 24 c0 03 00 00                            	lea    ecx,[esp+0x3c0]
  765bb6:	51                                              	push   ecx
  765bb7:	8d 8c 24 84 01 00 00                            	lea    ecx,[esp+0x184]
  765bbe:	e8 1d 1e ff ff                                  	call   0x7579e0
  765bc3:	8b 8c 24 e8 03 00 00                            	mov    ecx,DWORD PTR [esp+0x3e8]
  765bca:	3b cb                                           	cmp    ecx,ebx
  765bcc:	0f 84 88 00 00 00                               	je     0x765c5a
  765bd2:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  765bd4:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  765bd7:	ff d0                                           	call   eax
  765bd9:	84 c0                                           	test   al,al
  765bdb:	75 7d                                           	jne    0x765c5a
  765bdd:	d9 05 88 f4 fd 00                               	fld    DWORD PTR ds:0xfdf488
  765be3:	8b 94 24 e8 03 00 00                            	mov    edx,DWORD PTR [esp+0x3e8]
  765bea:	8b 84 24 dc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1dc]
  765bf1:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  765bf8:	51                                              	push   ecx
  765bf9:	53                                              	push   ebx
  765bfa:	51                                              	push   ecx
  765bfb:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  765bff:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  765c02:	52                                              	push   edx
  765c03:	50                                              	push   eax
  765c04:	83 c1 08                                        	add    ecx,0x8
  765c07:	51                                              	push   ecx
  765c08:	e8 83 33 0e 00                                  	call   0x848f90
  765c0d:	d9 5c 24 4c                                     	fstp   DWORD PTR [esp+0x4c]
  765c11:	8b 94 24 b8 00 00 00                            	mov    edx,DWORD PTR [esp+0xb8]
  765c18:	f3 0f 10 84 24 a4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa4]
  765c21:	83 c4 18                                        	add    esp,0x18
  765c24:	3b f3                                           	cmp    esi,ebx
  765c26:	f3 0f 11 04 b2                                  	movss  DWORD PTR [edx+esi*4],xmm0
  765c2b:	7e 2d                                           	jle    0x765c5a
  765c2d:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  765c31:	7f 27                                           	jg     0x765c5a
  765c33:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
  765c39:	f3 0f 58 44 24 14                               	addss  xmm0,DWORD PTR [esp+0x14]
  765c3f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  765c45:	f3 0f 10 84 24 8c 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x8c]
  765c4e:	f3 0f 58 44 24 1c                               	addss  xmm0,DWORD PTR [esp+0x1c]
  765c54:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  765c5a:	8b 8c 24 ec 03 00 00                            	mov    ecx,DWORD PTR [esp+0x3ec]
  765c61:	3b cb                                           	cmp    ecx,ebx
  765c63:	0f 84 88 00 00 00                               	je     0x765cf1
  765c69:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  765c6b:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  765c6e:	ff d2                                           	call   edx
  765c70:	84 c0                                           	test   al,al
  765c72:	75 7d                                           	jne    0x765cf1
  765c74:	d9 05 88 f4 fd 00                               	fld    DWORD PTR ds:0xfdf488
  765c7a:	8b 94 24 dc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1dc]
  765c81:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
  765c88:	50                                              	push   eax
  765c89:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  765c8d:	53                                              	push   ebx
  765c8e:	51                                              	push   ecx
  765c8f:	8b 8c 24 f8 03 00 00                            	mov    ecx,DWORD PTR [esp+0x3f8]
  765c96:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  765c99:	51                                              	push   ecx
  765c9a:	52                                              	push   edx
  765c9b:	83 c0 08                                        	add    eax,0x8
  765c9e:	50                                              	push   eax
  765c9f:	e8 ec 32 0e 00                                  	call   0x848f90
  765ca4:	d9 5c 24 4c                                     	fstp   DWORD PTR [esp+0x4c]
  765ca8:	8b 8c 24 c8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xc8]
  765caf:	f3 0f 10 84 24 9c 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x9c]
  765cb8:	83 c4 18                                        	add    esp,0x18
  765cbb:	3b f3                                           	cmp    esi,ebx
  765cbd:	f3 0f 11 04 b1                                  	movss  DWORD PTR [ecx+esi*4],xmm0
  765cc2:	7e 2d                                           	jle    0x765cf1
  765cc4:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  765cc8:	7f 27                                           	jg     0x765cf1
  765cca:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
  765cd0:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  765cd6:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  765cdc:	f3 0f 10 84 24 84 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x84]
  765ce5:	f3 0f 58 44 24 3c                               	addss  xmm0,DWORD PTR [esp+0x3c]
  765ceb:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  765cf1:	8b ce                                           	mov    ecx,esi
  765cf3:	6b c9 7c                                        	imul   ecx,ecx,0x7c
  765cf6:	03 8c 24 90 00 00 00                            	add    ecx,DWORD PTR [esp+0x90]
  765cfd:	8d 94 24 c0 03 00 00                            	lea    edx,[esp+0x3c0]
  765d04:	52                                              	push   edx
  765d05:	e8 d6 1c ff ff                                  	call   0x7579e0
  765d0a:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
  765d11:	f3 0f 10 44 24 3c                               	movss  xmm0,DWORD PTR [esp+0x3c]
  765d17:	f3 0f 58 44 24 1c                               	addss  xmm0,DWORD PTR [esp+0x1c]
  765d1d:	8b 8c 24 10 01 00 00                            	mov    ecx,DWORD PTR [esp+0x110]
  765d24:	f3 0f 11 04 b0                                  	movss  DWORD PTR [eax+esi*4],xmm0
  765d29:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  765d2f:	f3 0f 58 44 24 14                               	addss  xmm0,DWORD PTR [esp+0x14]
  765d35:	f3 0f 11 04 b1                                  	movss  DWORD PTR [ecx+esi*4],xmm0
  765d3a:	8b 8c 24 18 02 00 00                            	mov    ecx,DWORD PTR [esp+0x218]
  765d41:	8b bc 24 14 02 00 00                            	mov    edi,DWORD PTR [esp+0x214]
  765d48:	2b cf                                           	sub    ecx,edi
  765d4a:	b8 93 24 49 92                                  	mov    eax,0x92492493
  765d4f:	f7 e9                                           	imul   ecx
  765d51:	03 d1                                           	add    edx,ecx
  765d53:	c1 fa 04                                        	sar    edx,0x4
  765d56:	8b c2                                           	mov    eax,edx
  765d58:	c1 e8 1f                                        	shr    eax,0x1f
  765d5b:	83 c6 01                                        	add    esi,0x1
  765d5e:	03 c2                                           	add    eax,edx
  765d60:	3b f0                                           	cmp    esi,eax
  765d62:	0f 8c f8 fd ff ff                               	jl     0x765b60
  765d68:	8d 8c 24 c0 03 00 00                            	lea    ecx,[esp+0x3c0]
  765d6f:	e8 bc e4 fe ff                                  	call   0x754230
  765d74:	39 9c 24 9c 01 00 00                            	cmp    DWORD PTR [esp+0x19c],ebx
  765d7b:	0f 84 31 06 00 00                               	je     0x7663b2
  765d81:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  765d85:	57                                              	push   edi
  765d86:	e8 c5 82 df ff                                  	call   0x55e050
  765d8b:	8b f0                                           	mov    esi,eax
  765d8d:	83 c4 04                                        	add    esp,0x4
  765d90:	3b f3                                           	cmp    esi,ebx
  765d92:	74 21                                           	je     0x765db5
  765d94:	8d 8c 24 40 04 00 00                            	lea    ecx,[esp+0x440]
  765d9b:	51                                              	push   ecx
  765d9c:	8b ce                                           	mov    ecx,esi
  765d9e:	e8 8d 1c 1f 00                                  	call   0x957a30
  765da3:	8b ce                                           	mov    ecx,esi
  765da5:	e8 e6 d9 d4 ff                                  	call   0x4b3790
  765daa:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  765dad:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  765db5:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
  765db9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  765dbb:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  765dc1:	0f 57 c0                                        	xorps  xmm0,xmm0
  765dc4:	8b cb                                           	mov    ecx,ebx
  765dc6:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  765dce:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  765dd6:	ff d0                                           	call   eax
  765dd8:	d9 5c 24 34                                     	fstp   DWORD PTR [esp+0x34]
  765ddc:	8b 4f 0c                                        	mov    ecx,DWORD PTR [edi+0xc]
  765ddf:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  765de2:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  765de4:	51                                              	push   ecx
  765de5:	50                                              	push   eax
  765de6:	8b 82 a4 00 00 00                               	mov    eax,DWORD PTR [edx+0xa4]
  765dec:	8b cb                                           	mov    ecx,ebx
  765dee:	ff d0                                           	call   eax
  765df0:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  765df4:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  765df6:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  765df9:	8b cb                                           	mov    ecx,ebx
  765dfb:	ff d0                                           	call   eax
  765dfd:	8b f8                                           	mov    edi,eax
  765dff:	85 ff                                           	test   edi,edi
  765e01:	0f 8e 0b 01 00 00                               	jle    0x765f12
  765e07:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  765e0b:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  765e0d:	8b 92 1c 01 00 00                               	mov    edx,DWORD PTR [edx+0x11c]
  765e13:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  765e17:	50                                              	push   eax
  765e18:	6a 00                                           	push   0x0
  765e1a:	51                                              	push   ecx
  765e1b:	8d 8c 24 6c 04 00 00                            	lea    ecx,[esp+0x46c]
  765e22:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  765e25:	51                                              	push   ecx
  765e26:	8b cb                                           	mov    ecx,ebx
  765e28:	c7 44 24 24 ff ff ff ff                         	mov    DWORD PTR [esp+0x24],0xffffffff
  765e30:	ff d2                                           	call   edx
  765e32:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  765e36:	85 f6                                           	test   esi,esi
  765e38:	7d 06                                           	jge    0x765e40
  765e3a:	33 f6                                           	xor    esi,esi
  765e3c:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  765e40:	3b f7                                           	cmp    esi,edi
  765e42:	0f 8d ca 00 00 00                               	jge    0x765f12
  765e48:	0f 57 db                                        	xorps  xmm3,xmm3
  765e4b:	eb 03                                           	jmp    0x765e50
  765e4d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  765e50:	85 f6                                           	test   esi,esi
  765e52:	0f 8c ad 00 00 00                               	jl     0x765f05
  765e58:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  765e5a:	8b 90 d0 00 00 00                               	mov    edx,DWORD PTR [eax+0xd0]
  765e60:	56                                              	push   esi
  765e61:	8b cb                                           	mov    ecx,ebx
  765e63:	ff d2                                           	call   edx
  765e65:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
  765e69:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  765e6b:	8b 90 d0 00 00 00                               	mov    edx,DWORD PTR [eax+0xd0]
  765e71:	56                                              	push   esi
  765e72:	8b cb                                           	mov    ecx,ebx
  765e74:	0f 29 84 24 f4 00 00 00                         	movaps XMMWORD PTR [esp+0xf4],xmm0
  765e7c:	ff d2                                           	call   edx
  765e7e:	f3 0f 10 40 20                                  	movss  xmm0,DWORD PTR [eax+0x20]
  765e83:	0f 2f 05 fc 24 fc 00                            	comiss xmm0,DWORD PTR ds:0xfc24fc
  765e8a:	73 21                                           	jae    0x765ead
  765e8c:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  765e8e:	8b 90 d0 00 00 00                               	mov    edx,DWORD PTR [eax+0xd0]
  765e94:	56                                              	push   esi
  765e95:	8b cb                                           	mov    ecx,ebx
  765e97:	ff d2                                           	call   edx
  765e99:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
  765e9f:	f3 0f 5c 40 24                                  	subss  xmm0,DWORD PTR [eax+0x24]
  765ea4:	0f 2f 05 e4 c4 06 01                            	comiss xmm0,DWORD PTR ds:0x106c4e4
  765eab:	72 55                                           	jb     0x765f02
  765ead:	0f 28 8c 24 f0 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0xf0]
  765eb5:	0f 57 db                                        	xorps  xmm3,xmm3
  765eb8:	0f 59 c9                                        	mulps  xmm1,xmm1
  765ebb:	0f 28 c1                                        	movaps xmm0,xmm1
  765ebe:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  765ec2:	0f 28 d1                                        	movaps xmm2,xmm1
  765ec5:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
  765ec9:	0f 58 c2                                        	addps  xmm0,xmm2
  765ecc:	0f 58 c1                                        	addps  xmm0,xmm1
  765ecf:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  765ed3:	f3 0f 11 84 24 70 03 00 00                      	movss  DWORD PTR [esp+0x370],xmm0
  765edc:	f3 0f 10 c3                                     	movss  xmm0,xmm3
  765ee0:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  765ee4:	f3 0f 11 84 24 00 03 00 00                      	movss  DWORD PTR [esp+0x300],xmm0
  765eed:	f3 0f 10 84 24 70 03 00 00                      	movss  xmm0,DWORD PTR [esp+0x370]
  765ef6:	0f 2f 84 24 00 03 00 00                         	comiss xmm0,DWORD PTR [esp+0x300]
  765efe:	77 15                                           	ja     0x765f15
  765f00:	eb 03                                           	jmp    0x765f05
  765f02:	0f 57 db                                        	xorps  xmm3,xmm3
  765f05:	83 c6 01                                        	add    esi,0x1
  765f08:	3b f7                                           	cmp    esi,edi
  765f0a:	0f 8c 40 ff ff ff                               	jl     0x765e50
  765f10:	eb 03                                           	jmp    0x765f15
  765f12:	0f 57 db                                        	xorps  xmm3,xmm3
  765f15:	0f 28 a4 24 20 01 00 00                         	movaps xmm4,XMMWORD PTR [esp+0x120]
  765f1d:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  765f25:	0f 28 ec                                        	movaps xmm5,xmm4
  765f28:	0f c6 ec 12                                     	shufps xmm5,xmm4,0x12
  765f2c:	0f 28 f4                                        	movaps xmm6,xmm4
  765f2f:	0f c6 f4 09                                     	shufps xmm6,xmm4,0x9
  765f33:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  765f39:	f3 0f 11 5c 24 44                               	movss  DWORD PTR [esp+0x44],xmm3
  765f3f:	f3 0f 11 5c 24 40                               	movss  DWORD PTR [esp+0x40],xmm3
  765f45:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  765f4b:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  765f50:	0f 28 ca                                        	movaps xmm1,xmm2
  765f53:	0f c6 ca 12                                     	shufps xmm1,xmm2,0x12
  765f57:	0f 59 ce                                        	mulps  xmm1,xmm6
  765f5a:	0f 28 fa                                        	movaps xmm7,xmm2
  765f5d:	0f c6 fa 09                                     	shufps xmm7,xmm2,0x9
  765f61:	0f 59 fd                                        	mulps  xmm7,xmm5
  765f64:	0f 5c cf                                        	subps  xmm1,xmm7
  765f67:	0f 28 fc                                        	movaps xmm7,xmm4
  765f6a:	0f c6 fc ff                                     	shufps xmm7,xmm4,0xff
  765f6e:	0f 59 fa                                        	mulps  xmm7,xmm2
  765f71:	0f 58 cf                                        	addps  xmm1,xmm7
  765f74:	0f 28 e1                                        	movaps xmm4,xmm1
  765f77:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  765f7b:	0f 59 e6                                        	mulps  xmm4,xmm6
  765f7e:	0f 28 f1                                        	movaps xmm6,xmm1
  765f81:	0f c6 f1 09                                     	shufps xmm6,xmm1,0x9
  765f85:	f3 0f 10 0d 88 fd 03 01                         	movss  xmm1,DWORD PTR ds:0x103fd88
  765f8d:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  765f91:	0f 59 f5                                        	mulps  xmm6,xmm5
  765f94:	0f 5c e6                                        	subps  xmm4,xmm6
  765f97:	0f 59 e1                                        	mulps  xmm4,xmm1
  765f9a:	0f 28 8c 24 f0 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0xf0]
  765fa2:	0f 58 e2                                        	addps  xmm4,xmm2
  765fa5:	0f 29 a4 24 00 02 00 00                         	movaps XMMWORD PTR [esp+0x200],xmm4
  765fad:	0f 29 8c 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm1
  765fb5:	f3 0f 11 9c 24 04 02 00 00                      	movss  DWORD PTR [esp+0x204],xmm3
  765fbe:	0f 28 b4 24 00 02 00 00                         	movaps xmm6,XMMWORD PTR [esp+0x200]
  765fc6:	0f 28 d6                                        	movaps xmm2,xmm6
  765fc9:	0f 59 d6                                        	mulps  xmm2,xmm6
  765fcc:	0f 28 ca                                        	movaps xmm1,xmm2
  765fcf:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  765fd3:	0f 28 e2                                        	movaps xmm4,xmm2
  765fd6:	0f 28 eb                                        	movaps xmm5,xmm3
  765fd9:	0f c6 e2 01                                     	shufps xmm4,xmm2,0x1
  765fdd:	0f 58 cc                                        	addps  xmm1,xmm4
  765fe0:	f3 0f 11 9c 24 f4 00 00 00                      	movss  DWORD PTR [esp+0xf4],xmm3
  765fe9:	0f 58 ca                                        	addps  xmm1,xmm2
  765fec:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  765ff0:	f3 0f 10 db                                     	movss  xmm3,xmm3
  765ff4:	f3 0f 11 8c 24 30 03 00 00                      	movss  DWORD PTR [esp+0x330],xmm1
  765ffd:	f3 0f 10 8c 24 30 03 00 00                      	movss  xmm1,DWORD PTR [esp+0x330]
  766006:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  76600a:	f3 0f 11 9c 24 a0 03 00 00                      	movss  DWORD PTR [esp+0x3a0],xmm3
  766013:	0f 2f 8c 24 a0 03 00 00                         	comiss xmm1,DWORD PTR [esp+0x3a0]
  76601b:	f3 0f 11 6c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm5
  766021:	0f 86 13 03 00 00                               	jbe    0x76633a
  766027:	0f 28 a4 24 f0 00 00 00                         	movaps xmm4,XMMWORD PTR [esp+0xf0]
  76602f:	0f 59 e4                                        	mulps  xmm4,xmm4
  766032:	0f 28 cc                                        	movaps xmm1,xmm4
  766035:	0f c6 cc 02                                     	shufps xmm1,xmm4,0x2
  766039:	0f 28 fc                                        	movaps xmm7,xmm4
  76603c:	0f c6 fc 01                                     	shufps xmm7,xmm4,0x1
  766040:	0f 58 cf                                        	addps  xmm1,xmm7
  766043:	0f 58 cc                                        	addps  xmm1,xmm4
  766046:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76604a:	f3 0f 11 8c 24 80 03 00 00                      	movss  DWORD PTR [esp+0x380],xmm1
  766053:	f3 0f 10 8c 24 80 03 00 00                      	movss  xmm1,DWORD PTR [esp+0x380]
  76605c:	f3 0f 11 9c 24 90 03 00 00                      	movss  DWORD PTR [esp+0x390],xmm3
  766065:	0f 2f 8c 24 90 03 00 00                         	comiss xmm1,DWORD PTR [esp+0x390]
  76606d:	0f 86 c7 02 00 00                               	jbe    0x76633a
  766073:	0f 28 ca                                        	movaps xmm1,xmm2
  766076:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  76607a:	0f 28 da                                        	movaps xmm3,xmm2
  76607d:	0f c6 da 01                                     	shufps xmm3,xmm2,0x1
  766081:	0f 58 cb                                        	addps  xmm1,xmm3
  766084:	0f 58 ca                                        	addps  xmm1,xmm2
  766087:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  76608f:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766093:	0f 52 e9                                        	rsqrtps xmm5,xmm1
  766096:	0f 28 fd                                        	movaps xmm7,xmm5
  766099:	0f 59 fd                                        	mulps  xmm7,xmm5
  76609c:	0f 59 f9                                        	mulps  xmm7,xmm1
  76609f:	f3 0f 10 c0                                     	movss  xmm0,xmm0
  7660a3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  7660a7:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  7660ab:	0f 28 d8                                        	movaps xmm3,xmm0
  7660ae:	0f 5c df                                        	subps  xmm3,xmm7
  7660b1:	0f 28 fd                                        	movaps xmm7,xmm5
  7660b4:	0f 59 fa                                        	mulps  xmm7,xmm2
  7660b7:	0f 59 df                                        	mulps  xmm3,xmm7
  7660ba:	0f 58 dd                                        	addps  xmm3,xmm5
  7660bd:	0f 28 eb                                        	movaps xmm5,xmm3
  7660c0:	0f 59 eb                                        	mulps  xmm5,xmm3
  7660c3:	0f 59 e9                                        	mulps  xmm5,xmm1
  7660c6:	0f 28 c8                                        	movaps xmm1,xmm0
  7660c9:	0f 5c cd                                        	subps  xmm1,xmm5
  7660cc:	0f 28 eb                                        	movaps xmm5,xmm3
  7660cf:	0f 59 ea                                        	mulps  xmm5,xmm2
  7660d2:	0f 59 cd                                        	mulps  xmm1,xmm5
  7660d5:	0f 28 ec                                        	movaps xmm5,xmm4
  7660d8:	0f c6 ec 01                                     	shufps xmm5,xmm4,0x1
  7660dc:	0f 58 cb                                        	addps  xmm1,xmm3
  7660df:	0f 28 dc                                        	movaps xmm3,xmm4
  7660e2:	0f c6 dc 02                                     	shufps xmm3,xmm4,0x2
  7660e6:	0f 58 dd                                        	addps  xmm3,xmm5
  7660e9:	0f 58 dc                                        	addps  xmm3,xmm4
  7660ec:	0f 59 ce                                        	mulps  xmm1,xmm6
  7660ef:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  7660f3:	0f 52 eb                                        	rsqrtps xmm5,xmm3
  7660f6:	0f 28 f5                                        	movaps xmm6,xmm5
  7660f9:	0f 59 f5                                        	mulps  xmm6,xmm5
  7660fc:	0f 59 f3                                        	mulps  xmm6,xmm3
  7660ff:	0f 28 e0                                        	movaps xmm4,xmm0
  766102:	0f 5c e6                                        	subps  xmm4,xmm6
  766105:	0f 28 f5                                        	movaps xmm6,xmm5
  766108:	0f 59 f2                                        	mulps  xmm6,xmm2
  76610b:	0f 59 e6                                        	mulps  xmm4,xmm6
  76610e:	0f 58 e5                                        	addps  xmm4,xmm5
  766111:	0f 28 ec                                        	movaps xmm5,xmm4
  766114:	0f 59 ec                                        	mulps  xmm5,xmm4
  766117:	0f 59 eb                                        	mulps  xmm5,xmm3
  76611a:	0f 28 d8                                        	movaps xmm3,xmm0
  76611d:	0f 5c dd                                        	subps  xmm3,xmm5
  766120:	0f 28 ec                                        	movaps xmm5,xmm4
  766123:	0f 59 ea                                        	mulps  xmm5,xmm2
  766126:	0f 59 dd                                        	mulps  xmm3,xmm5
  766129:	0f 58 dc                                        	addps  xmm3,xmm4
  76612c:	0f 59 9c 24 f0 00 00 00                         	mulps  xmm3,XMMWORD PTR [esp+0xf0]
  766134:	0f 28 e9                                        	movaps xmm5,xmm1
  766137:	0f 59 e9                                        	mulps  xmm5,xmm1
  76613a:	0f 28 e5                                        	movaps xmm4,xmm5
  76613d:	0f c6 e5 02                                     	shufps xmm4,xmm5,0x2
  766141:	0f 28 f5                                        	movaps xmm6,xmm5
  766144:	0f c6 f5 01                                     	shufps xmm6,xmm5,0x1
  766148:	0f 58 e6                                        	addps  xmm4,xmm6
  76614b:	0f 58 e5                                        	addps  xmm4,xmm5
  76614e:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  766152:	0f 52 f4                                        	rsqrtps xmm6,xmm4
  766155:	0f 28 fe                                        	movaps xmm7,xmm6
  766158:	0f 59 fe                                        	mulps  xmm7,xmm6
  76615b:	0f 59 fc                                        	mulps  xmm7,xmm4
  76615e:	0f 28 e8                                        	movaps xmm5,xmm0
  766161:	0f 5c ef                                        	subps  xmm5,xmm7
  766164:	0f 28 e6                                        	movaps xmm4,xmm6
  766167:	0f 59 e2                                        	mulps  xmm4,xmm2
  76616a:	0f 59 ec                                        	mulps  xmm5,xmm4
  76616d:	0f 58 ee                                        	addps  xmm5,xmm6
  766170:	0f 59 e9                                        	mulps  xmm5,xmm1
  766173:	0f 28 e3                                        	movaps xmm4,xmm3
  766176:	0f 29 ac 24 60 01 00 00                         	movaps XMMWORD PTR [esp+0x160],xmm5
  76617e:	0f 59 e3                                        	mulps  xmm4,xmm3
  766181:	0f 28 cc                                        	movaps xmm1,xmm4
  766184:	0f c6 cc 02                                     	shufps xmm1,xmm4,0x2
  766188:	0f 28 f4                                        	movaps xmm6,xmm4
  76618b:	0f c6 f4 01                                     	shufps xmm6,xmm4,0x1
  76618f:	0f 58 ce                                        	addps  xmm1,xmm6
  766192:	0f 58 cc                                        	addps  xmm1,xmm4
  766195:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766199:	0f 52 e1                                        	rsqrtps xmm4,xmm1
  76619c:	0f 28 f4                                        	movaps xmm6,xmm4
  76619f:	0f 59 f4                                        	mulps  xmm6,xmm4
  7661a2:	0f 59 f1                                        	mulps  xmm6,xmm1
  7661a5:	0f 28 c8                                        	movaps xmm1,xmm0
  7661a8:	0f 5c ce                                        	subps  xmm1,xmm6
  7661ab:	0f 28 f4                                        	movaps xmm6,xmm4
  7661ae:	0f 59 f2                                        	mulps  xmm6,xmm2
  7661b1:	0f 59 ce                                        	mulps  xmm1,xmm6
  7661b4:	0f 58 cc                                        	addps  xmm1,xmm4
  7661b7:	0f 59 cb                                        	mulps  xmm1,xmm3
  7661ba:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
  7661bf:	0f 59 cd                                        	mulps  xmm1,xmm5
  7661c2:	0f 28 d1                                        	movaps xmm2,xmm1
  7661c5:	0f c6 d1 02                                     	shufps xmm2,xmm1,0x2
  7661c9:	0f 28 d9                                        	movaps xmm3,xmm1
  7661cc:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
  7661d0:	0f 58 d3                                        	addps  xmm2,xmm3
  7661d3:	0f 58 d1                                        	addps  xmm2,xmm1
  7661d6:	f3 0f 10 0d 18 b2 fa 00                         	movss  xmm1,DWORD PTR ds:0xfab218
  7661de:	0f 28 da                                        	movaps xmm3,xmm2
  7661e1:	0f c6 da 00                                     	shufps xmm3,xmm2,0x0
  7661e5:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  7661e9:	0f 5f d9                                        	maxps  xmm3,xmm1
  7661ec:	0f 5d d8                                        	minps  xmm3,xmm0
  7661ef:	0f 29 9c 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm3
  7661f7:	d9 84 24 20 01 00 00                            	fld    DWORD PTR [esp+0x120]
  7661fe:	e8 bb 95 81 00                                  	call   0xf7f7be
  766203:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  766207:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  76620c:	0f 28 8c 24 60 01 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x160]
  766214:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  76621a:	0f 28 e1                                        	movaps xmm4,xmm1
  76621d:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  766221:	0f 28 d8                                        	movaps xmm3,xmm0
  766224:	0f c6 d8 09                                     	shufps xmm3,xmm0,0x9
  766228:	0f c6 c9 09                                     	shufps xmm1,xmm1,0x9
  76622c:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  766230:	0f 59 c1                                        	mulps  xmm0,xmm1
  766233:	0f 57 c9                                        	xorps  xmm1,xmm1
  766236:	0f 59 dc                                        	mulps  xmm3,xmm4
  766239:	0f 5c c3                                        	subps  xmm0,xmm3
  76623c:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  766244:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  76624a:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  766250:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
  766256:	f3 0f 11 5c 24 44                               	movss  DWORD PTR [esp+0x44],xmm3
  76625c:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  766261:	0f 59 c1                                        	mulps  xmm0,xmm1
  766264:	0f 28 c8                                        	movaps xmm1,xmm0
  766267:	0f c6 c8 02                                     	shufps xmm1,xmm0,0x2
  76626b:	0f 28 d8                                        	movaps xmm3,xmm0
  76626e:	0f c6 d8 01                                     	shufps xmm3,xmm0,0x1
  766272:	0f 58 cb                                        	addps  xmm1,xmm3
  766275:	0f 58 c8                                        	addps  xmm1,xmm0
  766278:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
  766281:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766285:	f3 0f 11 84 24 b0 03 00 00                      	movss  DWORD PTR [esp+0x3b0],xmm0
  76628e:	f3 0f 10 84 24 b0 03 00 00                      	movss  xmm0,DWORD PTR [esp+0x3b0]
  766297:	f3 0f 11 8c 24 20 03 00 00                      	movss  DWORD PTR [esp+0x320],xmm1
  7662a0:	0f 2f 84 24 20 03 00 00                         	comiss xmm0,DWORD PTR [esp+0x320]
  7662a8:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  7662ac:	76 11                                           	jbe    0x7662bf
  7662ae:	f3 0f 10 05 a8 51 00 01                         	movss  xmm0,DWORD PTR ds:0x10051a8
  7662b6:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  7662ba:	0f 5c c2                                        	subps  xmm0,xmm2
  7662bd:	eb 03                                           	jmp    0x7662c2
  7662bf:	0f 28 c2                                        	movaps xmm0,xmm2
  7662c2:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  7662ca:	d9 84 24 c0 00 00 00                            	fld    DWORD PTR [esp+0xc0]
  7662d1:	83 ec 08                                        	sub    esp,0x8
  7662d4:	d8 0d 20 24 fc 00                               	fmul   DWORD PTR ds:0xfc2420
  7662da:	0f 29 84 24 58 03 00 00                         	movaps XMMWORD PTR [esp+0x358],xmm0
  7662e2:	d9 54 24 30                                     	fst    DWORD PTR [esp+0x30]
  7662e6:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  7662e9:	e8 e2 94 81 00                                  	call   0xf7f7d0
  7662ee:	d8 6c 24 30                                     	fsubr  DWORD PTR [esp+0x30]
  7662f2:	83 c4 08                                        	add    esp,0x8
  7662f5:	d9 54 24 28                                     	fst    DWORD PTR [esp+0x28]
  7662f9:	d9 05 b4 b5 f9 00                               	fld    DWORD PTR ds:0xf9b5b4
  7662ff:	f3 0f 10 6c 24 28                               	movss  xmm5,DWORD PTR [esp+0x28]
  766305:	d9 c9                                           	fxch   st(1)
  766307:	df f1                                           	fcomip st,st(1)
  766309:	dd d8                                           	fstp   st(0)
  76630b:	76 08                                           	jbe    0x766315
  76630d:	f3 0f 5c 2d f8 98 f9 00                         	subss  xmm5,DWORD PTR ds:0xf998f8
  766315:	f3 0f 10 05 a8 51 00 01                         	movss  xmm0,DWORD PTR ds:0x10051a8
  76631d:	f3 0f 59 e8                                     	mulss  xmm5,xmm0
  766321:	0f 2f 2d a4 51 00 01                            	comiss xmm5,DWORD PTR ds:0x10051a4
  766328:	f3 0f 11 6c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm5
  76632e:	76 0a                                           	jbe    0x76633a
  766330:	f3 0f 5c e8                                     	subss  xmm5,xmm0
  766334:	f3 0f 11 6c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm5
  76633a:	f6 05 b0 5b 1d 01 01                            	test   BYTE PTR ds:0x11d5bb0,0x1
  766341:	75 17                                           	jne    0x76635a
  766343:	f3 0f 10 05 58 5a 00 01                         	movss  xmm0,DWORD PTR ds:0x1005a58
  76634b:	83 0d b0 5b 1d 01 01                            	or     DWORD PTR ds:0x11d5bb0,0x1
  766352:	f3 0f 11 05 ac 5b 1d 01                         	movss  DWORD PTR ds:0x11d5bac,xmm0
  76635a:	f3 0f 11 6c 24 10                               	movss  DWORD PTR [esp+0x10],xmm5
  766360:	81 64 24 10 ff ff ff 7f                         	and    DWORD PTR [esp+0x10],0x7fffffff
  766368:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  76636e:	0f 2f 05 ac 5b 1d 01                            	comiss xmm0,DWORD PTR ds:0x11d5bac
  766375:	76 3f                                           	jbe    0x7663b6
  766377:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  76637b:	8b 94 24 dc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1dc]
  766382:	8d 84 24 78 01 00 00                            	lea    eax,[esp+0x178]
  766389:	50                                              	push   eax
  76638a:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  76638e:	6a 01                                           	push   0x1
  766390:	51                                              	push   ecx
  766391:	8b 8c 24 a8 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1a8]
  766398:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  76639b:	51                                              	push   ecx
  76639c:	52                                              	push   edx
  76639d:	83 c0 08                                        	add    eax,0x8
  7663a0:	50                                              	push   eax
  7663a1:	e8 ea 2b 0e 00                                  	call   0x848f90
  7663a6:	d9 9c 24 8c 00 00 00                            	fstp   DWORD PTR [esp+0x8c]
  7663ad:	83 c4 18                                        	add    esp,0x18
  7663b0:	eb 04                                           	jmp    0x7663b6
  7663b2:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
  7663b6:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7663b8:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  7663be:	8b cb                                           	mov    ecx,ebx
  7663c0:	ff d0                                           	call   eax
  7663c2:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  7663c6:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7663c8:	0f 57 c0                                        	xorps  xmm0,xmm0
  7663cb:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  7663ce:	6a 00                                           	push   0x0
  7663d0:	68 00 20 00 00                                  	push   0x2000
  7663d5:	6a 00                                           	push   0x0
  7663d7:	8b cb                                           	mov    ecx,ebx
  7663d9:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7663df:	ff d0                                           	call   eax
  7663e1:	8b c8                                           	mov    ecx,eax
  7663e3:	e8 f8 60 0b 00                                  	call   0x81c4e0
  7663e8:	84 c0                                           	test   al,al
  7663ea:	74 1c                                           	je     0x766408
  7663ec:	8b 8c 24 dc 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1dc]
  7663f3:	8b 94 24 d4 01 00 00                            	mov    edx,DWORD PTR [esp+0x1d4]
  7663fa:	51                                              	push   ecx
  7663fb:	52                                              	push   edx
  7663fc:	e8 4f 16 0e 00                                  	call   0x847a50
  766401:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  766405:	83 c4 08                                        	add    esp,0x8
  766408:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  76640e:	f3 0f 5c 44 24 10                               	subss  xmm0,DWORD PTR [esp+0x10]
  766414:	0f 57 c9                                        	xorps  xmm1,xmm1
  766417:	0f 2f c1                                        	comiss xmm0,xmm1
  76641a:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  766420:	f3 0f 11 8c 24 ec 00 00 00                      	movss  DWORD PTR [esp+0xec],xmm1
  766429:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  76642d:	77 07                                           	ja     0x766436
  76642f:	8d 84 24 ec 00 00 00                            	lea    eax,[esp+0xec]
  766436:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76643a:	8b 84 24 84 01 00 00                            	mov    eax,DWORD PTR [esp+0x184]
  766441:	85 c0                                           	test   eax,eax
  766443:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  766447:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76644d:	74 2d                                           	je     0x76647c
  76644f:	d9 05 88 f4 fd 00                               	fld    DWORD PTR ds:0xfdf488
  766455:	8b 94 24 dc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1dc]
  76645c:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  766460:	51                                              	push   ecx
  766461:	6a 00                                           	push   0x0
  766463:	51                                              	push   ecx
  766464:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  766467:	50                                              	push   eax
  766468:	52                                              	push   edx
  766469:	8d 46 08                                        	lea    eax,[esi+0x8]
  76646c:	50                                              	push   eax
  76646d:	e8 1e 2b 0e 00                                  	call   0x848f90
  766472:	d9 9c 24 98 00 00 00                            	fstp   DWORD PTR [esp+0x98]
  766479:	83 c4 18                                        	add    esp,0x18
  76647c:	8b 84 24 8c 01 00 00                            	mov    eax,DWORD PTR [esp+0x18c]
  766483:	85 c0                                           	test   eax,eax
  766485:	74 2d                                           	je     0x7664b4
  766487:	d9 05 88 f4 fd 00                               	fld    DWORD PTR ds:0xfdf488
  76648d:	8b 94 24 dc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1dc]
  766494:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  766498:	51                                              	push   ecx
  766499:	6a 00                                           	push   0x0
  76649b:	51                                              	push   ecx
  76649c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  76649f:	50                                              	push   eax
  7664a0:	52                                              	push   edx
  7664a1:	8d 46 08                                        	lea    eax,[esi+0x8]
  7664a4:	50                                              	push   eax
  7664a5:	e8 e6 2a 0e 00                                  	call   0x848f90
  7664aa:	d9 9c 24 a0 00 00 00                            	fstp   DWORD PTR [esp+0xa0]
  7664b1:	83 c4 18                                        	add    esp,0x18
  7664b4:	8b 84 24 98 01 00 00                            	mov    eax,DWORD PTR [esp+0x198]
  7664bb:	85 c0                                           	test   eax,eax
  7664bd:	74 36                                           	je     0x7664f5
  7664bf:	6a 00                                           	push   0x0
  7664c1:	8d 8c 24 40 01 00 00                            	lea    ecx,[esp+0x140]
  7664c8:	51                                              	push   ecx
  7664c9:	50                                              	push   eax
  7664ca:	83 c6 08                                        	add    esi,0x8
  7664cd:	56                                              	push   esi
  7664ce:	e8 bd 44 0e 00                                  	call   0x84a990
  7664d3:	d9 54 24 48                                     	fst    DWORD PTR [esp+0x48]
  7664d7:	d9 05 98 51 00 01                               	fld    DWORD PTR ds:0x1005198
  7664dd:	83 c4 10                                        	add    esp,0x10
  7664e0:	d9 c9                                           	fxch   st(1)
  7664e2:	df e9                                           	fucomip st,st(1)
  7664e4:	dd d8                                           	fstp   st(0)
  7664e6:	9f                                              	lahf
  7664e7:	f6 c4 44                                        	test   ah,0x44
  7664ea:	7a 09                                           	jp     0x7664f5
  7664ec:	0f 57 c0                                        	xorps  xmm0,xmm0
  7664ef:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  7664f5:	8b 94 24 14 02 00 00                            	mov    edx,DWORD PTR [esp+0x214]
  7664fc:	8b 84 24 18 02 00 00                            	mov    eax,DWORD PTR [esp+0x218]
  766503:	33 c9                                           	xor    ecx,ecx
  766505:	3b d0                                           	cmp    edx,eax
  766507:	0f 95 c1                                        	setne  cl
  76650a:	2b c2                                           	sub    eax,edx
  76650c:	8b f8                                           	mov    edi,eax
  76650e:	b8 93 24 49 92                                  	mov    eax,0x92492493
  766513:	f7 ef                                           	imul   edi
  766515:	03 d7                                           	add    edx,edi
  766517:	c1 fa 04                                        	sar    edx,0x4
  76651a:	83 e9 01                                        	sub    ecx,0x1
  76651d:	8b c2                                           	mov    eax,edx
  76651f:	c1 e8 1f                                        	shr    eax,0x1f
  766522:	8b f1                                           	mov    esi,ecx
  766524:	b9 01 00 00 00                                  	mov    ecx,0x1
  766529:	03 c2                                           	add    eax,edx
  76652b:	3b c1                                           	cmp    eax,ecx
  76652d:	7e 5f                                           	jle    0x76658e
  76652f:	f3 0f 10 4c 24 64                               	movss  xmm1,DWORD PTR [esp+0x64]
  766535:	f3 0f 10 54 24 5c                               	movss  xmm2,DWORD PTR [esp+0x5c]
  76653b:	f3 0f 10 5c 24 30                               	movss  xmm3,DWORD PTR [esp+0x30]
  766541:	f3 0f 10 6c 24 1c                               	movss  xmm5,DWORD PTR [esp+0x1c]
  766547:	f3 0f 10 64 24 38                               	movss  xmm4,DWORD PTR [esp+0x38]
  76654d:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  766551:	3b cf                                           	cmp    ecx,edi
  766553:	7f 39                                           	jg     0x76658e
  766555:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
  76655c:	f3 0f 10 04 8a                                  	movss  xmm0,DWORD PTR [edx+ecx*4]
  766561:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  766565:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  766569:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  76656d:	0f 2f e0                                        	comiss xmm4,xmm0
  766570:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
  766576:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  76657a:	77 04                                           	ja     0x766580
  76657c:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  766580:	0f 2f 2a                                        	comiss xmm5,DWORD PTR [edx]
  766583:	76 09                                           	jbe    0x76658e
  766585:	8b f1                                           	mov    esi,ecx
  766587:	83 c1 01                                        	add    ecx,0x1
  76658a:	3b c8                                           	cmp    ecx,eax
  76658c:	7c c3                                           	jl     0x766551
  76658e:	85 f6                                           	test   esi,esi
  766590:	7c 40                                           	jl     0x7665d2
  766592:	8b 84 24 10 01 00 00                            	mov    eax,DWORD PTR [esp+0x110]
  766599:	f3 0f 10 04 b0                                  	movss  xmm0,DWORD PTR [eax+esi*4]
  76659e:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  7665a5:	8b 9c 24 90 00 00 00                            	mov    ebx,DWORD PTR [esp+0x90]
  7665ac:	2b cb                                           	sub    ecx,ebx
  7665ae:	b8 43 08 21 84                                  	mov    eax,0x84210843
  7665b3:	f7 e9                                           	imul   ecx
  7665b5:	03 d1                                           	add    edx,ecx
  7665b7:	c1 fa 06                                        	sar    edx,0x6
  7665ba:	8b ca                                           	mov    ecx,edx
  7665bc:	c1 e9 1f                                        	shr    ecx,0x1f
  7665bf:	03 ca                                           	add    ecx,edx
  7665c1:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
  7665c7:	74 09                                           	je     0x7665d2
  7665c9:	8b fe                                           	mov    edi,esi
  7665cb:	6b ff 7c                                        	imul   edi,edi,0x7c
  7665ce:	03 fb                                           	add    edi,ebx
  7665d0:	eb 07                                           	jmp    0x7665d9
  7665d2:	8d bc 24 80 01 00 00                            	lea    edi,[esp+0x180]
  7665d9:	83 bc 24 88 01 00 00 00                         	cmp    DWORD PTR [esp+0x188],0x0
  7665e1:	0f 84 2d 01 00 00                               	je     0x766714
  7665e7:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  7665ea:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
  7665ee:	6a 01                                           	push   0x1
  7665f0:	8d 94 24 80 01 00 00                            	lea    edx,[esp+0x180]
  7665f7:	52                                              	push   edx
  7665f8:	50                                              	push   eax
  7665f9:	83 c3 08                                        	add    ebx,0x8
  7665fc:	53                                              	push   ebx
  7665fd:	e8 8e 43 0e 00                                  	call   0x84a990
  766602:	d9 54 24 28                                     	fst    DWORD PTR [esp+0x28]
  766606:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  76660e:	83 c4 10                                        	add    esp,0x10
  766611:	80 bc 24 e5 01 00 00 00                         	cmp    BYTE PTR [esp+0x1e5],0x0
  766619:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  76661f:	75 18                                           	jne    0x766639
  766621:	f3 0f 10 05 28 06 15 01                         	movss  xmm0,DWORD PTR ds:0x1150628
  766629:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76662f:	f3 0f 10 05 2c 06 15 01                         	movss  xmm0,DWORD PTR ds:0x115062c
  766637:	eb 16                                           	jmp    0x76664f
  766639:	f3 0f 10 05 b4 35 fb 00                         	movss  xmm0,DWORD PTR ds:0xfb35b4
  766641:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  766647:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  76664f:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  766656:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  76665d:	8b c1                                           	mov    eax,ecx
  76665f:	2b 84 24 b4 00 00 00                            	sub    eax,DWORD PTR [esp+0xb4]
  766666:	6a 01                                           	push   0x1
  766668:	f7 d8                                           	neg    eax
  76666a:	1b c0                                           	sbb    eax,eax
  76666c:	23 c1                                           	and    eax,ecx
  76666e:	8b ca                                           	mov    ecx,edx
  766670:	2b 8c 24 a8 00 00 00                            	sub    ecx,DWORD PTR [esp+0xa8]
  766677:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  76667d:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  766681:	f7 d9                                           	neg    ecx
  766683:	1b c9                                           	sbb    ecx,ecx
  766685:	83 ec 08                                        	sub    esp,0x8
  766688:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  76668c:	23 ca                                           	and    ecx,edx
  76668e:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  766692:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  766696:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  766699:	52                                              	push   edx
  76669a:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
  76669e:	6a 00                                           	push   0x0
  7666a0:	56                                              	push   esi
  7666a1:	50                                              	push   eax
  7666a2:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  7666a6:	51                                              	push   ecx
  7666a7:	83 ec 10                                        	sub    esp,0x10
  7666aa:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  7666ae:	d9 84 24 94 00 00 00                            	fld    DWORD PTR [esp+0x94]
  7666b5:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  7666b9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7666bd:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  7666c1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7666c4:	50                                              	push   eax
  7666c5:	6a 02                                           	push   0x2
  7666c7:	e8 b4 1b 0e 00                                  	call   0x848280
  7666cc:	f3 0f 10 44 24 74                               	movss  xmm0,DWORD PTR [esp+0x74]
  7666d2:	f3 0f 59 44 24 50                               	mulss  xmm0,DWORD PTR [esp+0x50]
  7666d8:	83 c4 38                                        	add    esp,0x38
  7666db:	85 c0                                           	test   eax,eax
  7666dd:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  7666e1:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  7666e7:	7e 2b                                           	jle    0x766714
  7666e9:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  7666ec:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  7666f0:	8b 57 5c                                        	mov    edx,DWORD PTR [edi+0x5c]
  7666f3:	8d 8c 24 38 01 00 00                            	lea    ecx,[esp+0x138]
  7666fa:	51                                              	push   ecx
  7666fb:	6a 00                                           	push   0x0
  7666fd:	51                                              	push   ecx
  7666fe:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  766701:	50                                              	push   eax
  766702:	52                                              	push   edx
  766703:	53                                              	push   ebx
  766704:	e8 87 28 0e 00                                  	call   0x848f90
  766709:	da 4c 24 48                                     	fimul  DWORD PTR [esp+0x48]
  76670d:	83 c4 18                                        	add    esp,0x18
  766710:	d9 5c 24 78                                     	fstp   DWORD PTR [esp+0x78]
  766714:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
  766718:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76671a:	8b 90 3c 01 00 00                               	mov    edx,DWORD PTR [eax+0x13c]
  766720:	8b cb                                           	mov    ecx,ebx
  766722:	ff d2                                           	call   edx
  766724:	84 c0                                           	test   al,al
  766726:	0f 84 f0 04 00 00                               	je     0x766c1c
  76672c:	0f 57 c0                                        	xorps  xmm0,xmm0
  76672f:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  766737:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  766739:	8b 90 40 01 00 00                               	mov    edx,DWORD PTR [eax+0x140]
  76673f:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  766745:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  76674b:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  766751:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  766757:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  76675c:	8d 8c 24 50 04 00 00                            	lea    ecx,[esp+0x450]
  766763:	51                                              	push   ecx
  766764:	8b cb                                           	mov    ecx,ebx
  766766:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  76676b:	ff d2                                           	call   edx
  76676d:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  766770:	0f 28 64 24 40                                  	movaps xmm4,XMMWORD PTR [esp+0x40]
  766775:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  766777:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  76677a:	0f 28 d1                                        	movaps xmm2,xmm1
  76677d:	0f c6 d1 09                                     	shufps xmm2,xmm1,0x9
  766781:	0f 28 d9                                        	movaps xmm3,xmm1
  766784:	0f c6 d9 12                                     	shufps xmm3,xmm1,0x12
  766788:	0f 28 ec                                        	movaps xmm5,xmm4
  76678b:	0f c6 ec 09                                     	shufps xmm5,xmm4,0x9
  76678f:	0f 59 eb                                        	mulps  xmm5,xmm3
  766792:	0f 28 c4                                        	movaps xmm0,xmm4
  766795:	0f c6 c4 12                                     	shufps xmm0,xmm4,0x12
  766799:	0f 59 c2                                        	mulps  xmm0,xmm2
  76679c:	0f 5c c5                                        	subps  xmm0,xmm5
  76679f:	0f 28 e9                                        	movaps xmm5,xmm1
  7667a2:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
  7667a6:	0f 59 ec                                        	mulps  xmm5,xmm4
  7667a9:	0f 58 c5                                        	addps  xmm0,xmm5
  7667ac:	0f 28 c8                                        	movaps xmm1,xmm0
  7667af:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  7667b3:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  7667b7:	0f 59 cb                                        	mulps  xmm1,xmm3
  7667ba:	0f 59 c2                                        	mulps  xmm0,xmm2
  7667bd:	0f 5c c1                                        	subps  xmm0,xmm1
  7667c0:	f3 0f 10 0d 88 fd 03 01                         	movss  xmm1,DWORD PTR ds:0x103fd88
  7667c8:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  7667cc:	0f 59 c1                                        	mulps  xmm0,xmm1
  7667cf:	8b cb                                           	mov    ecx,ebx
  7667d1:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  7667d9:	ff d2                                           	call   edx
  7667db:	85 c0                                           	test   eax,eax
  7667dd:	0f 86 39 04 00 00                               	jbe    0x766c1c
  7667e3:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7667e5:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  7667e8:	8d 8c 24 40 03 00 00                            	lea    ecx,[esp+0x340]
  7667ef:	51                                              	push   ecx
  7667f0:	83 c0 ff                                        	add    eax,0xffffffff
  7667f3:	50                                              	push   eax
  7667f4:	8b cb                                           	mov    ecx,ebx
  7667f6:	ff d2                                           	call   edx
  7667f8:	84 c0                                           	test   al,al
  7667fa:	0f 84 1c 04 00 00                               	je     0x766c1c
  766800:	0f 57 d2                                        	xorps  xmm2,xmm2
  766803:	0f 28 84 24 40 03 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x340]
  76680b:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  766813:	0f 28 84 24 c0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xc0]
  76681b:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
  766820:	0f 29 84 24 40 01 00 00                         	movaps XMMWORD PTR [esp+0x140],xmm0
  766828:	f3 0f 11 94 24 24 01 00 00                      	movss  DWORD PTR [esp+0x124],xmm2
  766831:	0f 28 b4 24 20 01 00 00                         	movaps xmm6,XMMWORD PTR [esp+0x120]
  766839:	0f 28 ce                                        	movaps xmm1,xmm6
  76683c:	0f 59 ce                                        	mulps  xmm1,xmm6
  76683f:	0f 28 c1                                        	movaps xmm0,xmm1
  766842:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  766846:	0f 28 e1                                        	movaps xmm4,xmm1
  766849:	0f 28 da                                        	movaps xmm3,xmm2
  76684c:	0f c6 e1 01                                     	shufps xmm4,xmm1,0x1
  766850:	0f 58 c4                                        	addps  xmm0,xmm4
  766853:	f3 0f 11 94 24 44 01 00 00                      	movss  DWORD PTR [esp+0x144],xmm2
  76685c:	0f 58 c1                                        	addps  xmm0,xmm1
  76685f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  766863:	f3 0f 10 d2                                     	movss  xmm2,xmm2
  766867:	f3 0f 11 84 24 60 03 00 00                      	movss  DWORD PTR [esp+0x360],xmm0
  766870:	f3 0f 10 84 24 60 03 00 00                      	movss  xmm0,DWORD PTR [esp+0x360]
  766879:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  76687d:	f3 0f 11 94 24 d0 02 00 00                      	movss  DWORD PTR [esp+0x2d0],xmm2
  766886:	0f 2f 84 24 d0 02 00 00                         	comiss xmm0,DWORD PTR [esp+0x2d0]
  76688e:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  766894:	0f 86 0f 03 00 00                               	jbe    0x766ba9
  76689a:	0f 28 a4 24 40 01 00 00                         	movaps xmm4,XMMWORD PTR [esp+0x140]
  7668a2:	0f 59 e4                                        	mulps  xmm4,xmm4
  7668a5:	0f 28 c4                                        	movaps xmm0,xmm4
  7668a8:	0f c6 c4 02                                     	shufps xmm0,xmm4,0x2
  7668ac:	0f 28 ec                                        	movaps xmm5,xmm4
  7668af:	0f c6 ec 01                                     	shufps xmm5,xmm4,0x1
  7668b3:	0f 58 c5                                        	addps  xmm0,xmm5
  7668b6:	0f 58 c4                                        	addps  xmm0,xmm4
  7668b9:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  7668bd:	f3 0f 11 84 24 e0 02 00 00                      	movss  DWORD PTR [esp+0x2e0],xmm0
  7668c6:	f3 0f 10 84 24 e0 02 00 00                      	movss  xmm0,DWORD PTR [esp+0x2e0]
  7668cf:	f3 0f 11 94 24 f0 02 00 00                      	movss  DWORD PTR [esp+0x2f0],xmm2
  7668d8:	0f 2f 84 24 f0 02 00 00                         	comiss xmm0,DWORD PTR [esp+0x2f0]
  7668e0:	0f 86 c3 02 00 00                               	jbe    0x766ba9
  7668e6:	0f 28 c1                                        	movaps xmm0,xmm1
  7668e9:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  7668ed:	0f 28 d1                                        	movaps xmm2,xmm1
  7668f0:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
  7668f4:	0f 58 c2                                        	addps  xmm0,xmm2
  7668f7:	0f 58 c1                                        	addps  xmm0,xmm1
  7668fa:	f3 0f 10 0d b4 b5 f9 00                         	movss  xmm1,DWORD PTR ds:0xf9b5b4
  766902:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  766906:	0f 28 e8                                        	movaps xmm5,xmm0
  766909:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  766911:	0f 52 dd                                        	rsqrtps xmm3,xmm5
  766914:	0f 28 fb                                        	movaps xmm7,xmm3
  766917:	0f 59 fb                                        	mulps  xmm7,xmm3
  76691a:	0f 59 fd                                        	mulps  xmm7,xmm5
  76691d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  766921:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766925:	0f 28 d0                                        	movaps xmm2,xmm0
  766928:	0f 5c d7                                        	subps  xmm2,xmm7
  76692b:	0f 28 f9                                        	movaps xmm7,xmm1
  76692e:	0f 59 fb                                        	mulps  xmm7,xmm3
  766931:	0f 59 d7                                        	mulps  xmm2,xmm7
  766934:	0f 58 d3                                        	addps  xmm2,xmm3
  766937:	0f 28 fa                                        	movaps xmm7,xmm2
  76693a:	0f 59 fa                                        	mulps  xmm7,xmm2
  76693d:	0f 59 fd                                        	mulps  xmm7,xmm5
  766940:	0f 28 d8                                        	movaps xmm3,xmm0
  766943:	0f 5c df                                        	subps  xmm3,xmm7
  766946:	0f 28 e9                                        	movaps xmm5,xmm1
  766949:	0f 59 ea                                        	mulps  xmm5,xmm2
  76694c:	0f 59 dd                                        	mulps  xmm3,xmm5
  76694f:	0f 28 ec                                        	movaps xmm5,xmm4
  766952:	0f c6 ec 01                                     	shufps xmm5,xmm4,0x1
  766956:	0f 58 da                                        	addps  xmm3,xmm2
  766959:	0f 28 d4                                        	movaps xmm2,xmm4
  76695c:	0f c6 d4 02                                     	shufps xmm2,xmm4,0x2
  766960:	0f 58 d5                                        	addps  xmm2,xmm5
  766963:	0f 58 d4                                        	addps  xmm2,xmm4
  766966:	0f 59 de                                        	mulps  xmm3,xmm6
  766969:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  76696d:	0f 52 ea                                        	rsqrtps xmm5,xmm2
  766970:	0f 28 f5                                        	movaps xmm6,xmm5
  766973:	0f 59 f5                                        	mulps  xmm6,xmm5
  766976:	0f 59 f2                                        	mulps  xmm6,xmm2
  766979:	0f 28 e0                                        	movaps xmm4,xmm0
  76697c:	0f 5c e6                                        	subps  xmm4,xmm6
  76697f:	0f 28 f1                                        	movaps xmm6,xmm1
  766982:	0f 59 f5                                        	mulps  xmm6,xmm5
  766985:	0f 59 e6                                        	mulps  xmm4,xmm6
  766988:	0f 58 e5                                        	addps  xmm4,xmm5
  76698b:	0f 28 ec                                        	movaps xmm5,xmm4
  76698e:	0f 59 ec                                        	mulps  xmm5,xmm4
  766991:	0f 59 ea                                        	mulps  xmm5,xmm2
  766994:	0f 28 d0                                        	movaps xmm2,xmm0
  766997:	0f 5c d5                                        	subps  xmm2,xmm5
  76699a:	0f 28 e9                                        	movaps xmm5,xmm1
  76699d:	0f 59 ec                                        	mulps  xmm5,xmm4
  7669a0:	0f 59 d5                                        	mulps  xmm2,xmm5
  7669a3:	0f 58 d4                                        	addps  xmm2,xmm4
  7669a6:	0f 59 94 24 40 01 00 00                         	mulps  xmm2,XMMWORD PTR [esp+0x140]
  7669ae:	0f 28 eb                                        	movaps xmm5,xmm3
  7669b1:	0f 59 eb                                        	mulps  xmm5,xmm3
  7669b4:	0f 28 e5                                        	movaps xmm4,xmm5
  7669b7:	0f c6 e5 02                                     	shufps xmm4,xmm5,0x2
  7669bb:	0f 28 f5                                        	movaps xmm6,xmm5
  7669be:	0f c6 f5 01                                     	shufps xmm6,xmm5,0x1
  7669c2:	0f 58 e6                                        	addps  xmm4,xmm6
  7669c5:	0f 58 e5                                        	addps  xmm4,xmm5
  7669c8:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  7669cc:	0f 52 f4                                        	rsqrtps xmm6,xmm4
  7669cf:	0f 28 fe                                        	movaps xmm7,xmm6
  7669d2:	0f 59 fe                                        	mulps  xmm7,xmm6
  7669d5:	0f 59 fc                                        	mulps  xmm7,xmm4
  7669d8:	0f 28 e8                                        	movaps xmm5,xmm0
  7669db:	0f 5c ef                                        	subps  xmm5,xmm7
  7669de:	0f 28 e6                                        	movaps xmm4,xmm6
  7669e1:	0f 59 e1                                        	mulps  xmm4,xmm1
  7669e4:	0f 59 ec                                        	mulps  xmm5,xmm4
  7669e7:	0f 58 ee                                        	addps  xmm5,xmm6
  7669ea:	0f 59 eb                                        	mulps  xmm5,xmm3
  7669ed:	0f 29 6c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm5
  7669f2:	0f 28 e2                                        	movaps xmm4,xmm2
  7669f5:	0f 59 e2                                        	mulps  xmm4,xmm2
  7669f8:	0f 28 dc                                        	movaps xmm3,xmm4
  7669fb:	0f c6 dc 02                                     	shufps xmm3,xmm4,0x2
  7669ff:	0f 28 f4                                        	movaps xmm6,xmm4
  766a02:	0f c6 f4 01                                     	shufps xmm6,xmm4,0x1
  766a06:	0f 58 de                                        	addps  xmm3,xmm6
  766a09:	0f 58 dc                                        	addps  xmm3,xmm4
  766a0c:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  766a10:	0f 52 e3                                        	rsqrtps xmm4,xmm3
  766a13:	0f 28 f4                                        	movaps xmm6,xmm4
  766a16:	0f 59 f4                                        	mulps  xmm6,xmm4
  766a19:	0f 59 f3                                        	mulps  xmm6,xmm3
  766a1c:	0f 28 d8                                        	movaps xmm3,xmm0
  766a1f:	0f 5c de                                        	subps  xmm3,xmm6
  766a22:	0f 28 f4                                        	movaps xmm6,xmm4
  766a25:	0f 59 f1                                        	mulps  xmm6,xmm1
  766a28:	0f 59 de                                        	mulps  xmm3,xmm6
  766a2b:	0f 58 dc                                        	addps  xmm3,xmm4
  766a2e:	0f 59 da                                        	mulps  xmm3,xmm2
  766a31:	0f 28 cb                                        	movaps xmm1,xmm3
  766a34:	0f 59 cd                                        	mulps  xmm1,xmm5
  766a37:	0f 29 9c 24 60 01 00 00                         	movaps XMMWORD PTR [esp+0x160],xmm3
  766a3f:	0f 28 d1                                        	movaps xmm2,xmm1
  766a42:	0f c6 d1 02                                     	shufps xmm2,xmm1,0x2
  766a46:	0f 28 d9                                        	movaps xmm3,xmm1
  766a49:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
  766a4d:	0f 58 d3                                        	addps  xmm2,xmm3
  766a50:	0f 58 d1                                        	addps  xmm2,xmm1
  766a53:	f3 0f 10 0d 18 b2 fa 00                         	movss  xmm1,DWORD PTR ds:0xfab218
  766a5b:	0f 28 da                                        	movaps xmm3,xmm2
  766a5e:	0f c6 da 00                                     	shufps xmm3,xmm2,0x0
  766a62:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766a66:	0f 5f d9                                        	maxps  xmm3,xmm1
  766a69:	0f 5d d8                                        	minps  xmm3,xmm0
  766a6c:	0f 29 9c 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm3
  766a74:	d9 84 24 c0 00 00 00                            	fld    DWORD PTR [esp+0xc0]
  766a7b:	e8 3e 8d 81 00                                  	call   0xf7f7be
  766a80:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  766a84:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  766a89:	0f 28 84 24 60 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x160]
  766a91:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  766a97:	0f 28 e1                                        	movaps xmm4,xmm1
  766a9a:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  766a9e:	0f 28 d8                                        	movaps xmm3,xmm0
  766aa1:	0f c6 d8 09                                     	shufps xmm3,xmm0,0x9
  766aa5:	0f c6 c9 09                                     	shufps xmm1,xmm1,0x9
  766aa9:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  766aad:	0f 59 c1                                        	mulps  xmm0,xmm1
  766ab0:	0f 57 c9                                        	xorps  xmm1,xmm1
  766ab3:	0f 59 dc                                        	mulps  xmm3,xmm4
  766ab6:	0f 5c c3                                        	subps  xmm0,xmm3
  766ab9:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  766ac1:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  766ac7:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  766acd:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
  766ad3:	f3 0f 11 5c 24 44                               	movss  DWORD PTR [esp+0x44],xmm3
  766ad9:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  766ade:	0f 59 c1                                        	mulps  xmm0,xmm1
  766ae1:	0f 28 c8                                        	movaps xmm1,xmm0
  766ae4:	0f c6 c8 02                                     	shufps xmm1,xmm0,0x2
  766ae8:	0f 28 d8                                        	movaps xmm3,xmm0
  766aeb:	0f c6 d8 01                                     	shufps xmm3,xmm0,0x1
  766aef:	0f 58 cb                                        	addps  xmm1,xmm3
  766af2:	0f 58 c8                                        	addps  xmm1,xmm0
  766af5:	0f 57 c0                                        	xorps  xmm0,xmm0
  766af8:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  766afc:	f3 0f 11 84 24 10 03 00 00                      	movss  DWORD PTR [esp+0x310],xmm0
  766b05:	f3 0f 10 84 24 10 03 00 00                      	movss  xmm0,DWORD PTR [esp+0x310]
  766b0e:	f3 0f 11 8c 24 50 01 00 00                      	movss  DWORD PTR [esp+0x150],xmm1
  766b17:	0f 2f 84 24 50 01 00 00                         	comiss xmm0,DWORD PTR [esp+0x150]
  766b1f:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  766b23:	76 11                                           	jbe    0x766b36
  766b25:	f3 0f 10 05 a8 51 00 01                         	movss  xmm0,DWORD PTR ds:0x10051a8
  766b2d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  766b31:	0f 5c c2                                        	subps  xmm0,xmm2
  766b34:	eb 03                                           	jmp    0x766b39
  766b36:	0f 28 c2                                        	movaps xmm0,xmm2
  766b39:	0f 29 84 24 50 01 00 00                         	movaps XMMWORD PTR [esp+0x150],xmm0
  766b41:	d9 84 24 50 01 00 00                            	fld    DWORD PTR [esp+0x150]
  766b48:	d8 0d 20 24 fc 00                               	fmul   DWORD PTR ds:0xfc2420
  766b4e:	83 ec 08                                        	sub    esp,0x8
  766b51:	d9 54 24 28                                     	fst    DWORD PTR [esp+0x28]
  766b55:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  766b58:	e8 73 8c 81 00                                  	call   0xf7f7d0
  766b5d:	d8 6c 24 28                                     	fsubr  DWORD PTR [esp+0x28]
  766b61:	83 c4 08                                        	add    esp,0x8
  766b64:	d9 54 24 20                                     	fst    DWORD PTR [esp+0x20]
  766b68:	d9 05 b4 b5 f9 00                               	fld    DWORD PTR ds:0xf9b5b4
  766b6e:	f3 0f 10 5c 24 20                               	movss  xmm3,DWORD PTR [esp+0x20]
  766b74:	d9 c9                                           	fxch   st(1)
  766b76:	df f1                                           	fcomip st,st(1)
  766b78:	dd d8                                           	fstp   st(0)
  766b7a:	76 08                                           	jbe    0x766b84
  766b7c:	f3 0f 5c 1d f8 98 f9 00                         	subss  xmm3,DWORD PTR ds:0xf998f8
  766b84:	f3 0f 10 05 a8 51 00 01                         	movss  xmm0,DWORD PTR ds:0x10051a8
  766b8c:	f3 0f 59 d8                                     	mulss  xmm3,xmm0
  766b90:	0f 2f 1d a4 51 00 01                            	comiss xmm3,DWORD PTR ds:0x10051a4
  766b97:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  766b9d:	76 0a                                           	jbe    0x766ba9
  766b9f:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  766ba3:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  766ba9:	f6 05 b0 5b 1d 01 02                            	test   BYTE PTR ds:0x11d5bb0,0x2
  766bb0:	75 17                                           	jne    0x766bc9
  766bb2:	f3 0f 10 05 58 5a 00 01                         	movss  xmm0,DWORD PTR ds:0x1005a58
  766bba:	83 0d b0 5b 1d 01 02                            	or     DWORD PTR ds:0x11d5bb0,0x2
  766bc1:	f3 0f 11 05 a8 5b 1d 01                         	movss  DWORD PTR ds:0x11d5ba8,xmm0
  766bc9:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  766bcf:	81 64 24 14 ff ff ff 7f                         	and    DWORD PTR [esp+0x14],0x7fffffff
  766bd7:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  766bdd:	0f 2f 05 a8 5b 1d 01                            	comiss xmm0,DWORD PTR ds:0x11d5ba8
  766be4:	76 36                                           	jbe    0x766c1c
  766be6:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  766bea:	8b 94 24 dc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1dc]
  766bf1:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
  766bf5:	50                                              	push   eax
  766bf6:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  766bfa:	6a 03                                           	push   0x3
  766bfc:	51                                              	push   ecx
  766bfd:	8b 8c 24 a8 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1a8]
  766c04:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  766c07:	51                                              	push   ecx
  766c08:	52                                              	push   edx
  766c09:	83 c0 08                                        	add    eax,0x8
  766c0c:	50                                              	push   eax
  766c0d:	e8 7e 23 0e 00                                  	call   0x848f90
  766c12:	d9 9c 24 80 00 00 00                            	fstp   DWORD PTR [esp+0x80]
  766c19:	83 c4 18                                        	add    esp,0x18
  766c1c:	f3 0f 10 44 24 68                               	movss  xmm0,DWORD PTR [esp+0x68]
  766c22:	f3 0f 58 44 24 70                               	addss  xmm0,DWORD PTR [esp+0x70]
  766c28:	f3 0f 58 44 24 78                               	addss  xmm0,DWORD PTR [esp+0x78]
  766c2e:	f3 0f 58 84 24 88 00 00 00                      	addss  xmm0,DWORD PTR [esp+0x88]
  766c37:	f3 0f 58 84 24 80 00 00 00                      	addss  xmm0,DWORD PTR [esp+0x80]
  766c40:	8b b4 24 90 00 00 00                            	mov    esi,DWORD PTR [esp+0x90]
  766c47:	8b bc 24 94 00 00 00                            	mov    edi,DWORD PTR [esp+0x94]
  766c4e:	3b f7                                           	cmp    esi,edi
  766c50:	f3 0f 58 44 24 74                               	addss  xmm0,DWORD PTR [esp+0x74]
  766c56:	f3 0f 59 05 54 5a 00 01                         	mulss  xmm0,DWORD PTR ds:0x1005a54
  766c5e:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
  766c64:	73 15                                           	jae    0x766c7b
  766c66:	8b ce                                           	mov    ecx,esi
  766c68:	e8 c3 d5 fe ff                                  	call   0x754230
  766c6d:	83 c6 7c                                        	add    esi,0x7c
  766c70:	3b f7                                           	cmp    esi,edi
  766c72:	72 f2                                           	jb     0x766c66
  766c74:	8b b4 24 90 00 00 00                            	mov    esi,DWORD PTR [esp+0x90]
  766c7b:	85 f6                                           	test   esi,esi
  766c7d:	74 09                                           	je     0x766c88
  766c7f:	56                                              	push   esi
  766c80:	e8 5b d8 d7 ff                                  	call   0x4e44e0
  766c85:	83 c4 04                                        	add    esp,0x4
  766c88:	8b 84 24 10 01 00 00                            	mov    eax,DWORD PTR [esp+0x110]
  766c8f:	85 c0                                           	test   eax,eax
  766c91:	74 09                                           	je     0x766c9c
  766c93:	50                                              	push   eax
  766c94:	e8 47 d8 d7 ff                                  	call   0x4e44e0
  766c99:	83 c4 04                                        	add    esp,0x4
  766c9c:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
  766ca3:	85 c0                                           	test   eax,eax
  766ca5:	74 09                                           	je     0x766cb0
  766ca7:	50                                              	push   eax
  766ca8:	e8 33 d8 d7 ff                                  	call   0x4e44e0
  766cad:	83 c4 04                                        	add    esp,0x4
  766cb0:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
  766cb7:	85 c0                                           	test   eax,eax
  766cb9:	74 09                                           	je     0x766cc4
  766cbb:	50                                              	push   eax
  766cbc:	e8 1f d8 d7 ff                                  	call   0x4e44e0
  766cc1:	83 c4 04                                        	add    esp,0x4
  766cc4:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
  766ccb:	85 c0                                           	test   eax,eax
  766ccd:	74 09                                           	je     0x766cd8
  766ccf:	50                                              	push   eax
  766cd0:	e8 0b d8 d7 ff                                  	call   0x4e44e0
  766cd5:	83 c4 04                                        	add    esp,0x4
  766cd8:	8b 84 24 18 02 00 00                            	mov    eax,DWORD PTR [esp+0x218]
  766cdf:	8b b4 24 14 02 00 00                            	mov    esi,DWORD PTR [esp+0x214]
  766ce6:	3b f0                                           	cmp    esi,eax
  766ce8:	8b f8                                           	mov    edi,eax
  766cea:	73 26                                           	jae    0x766d12
  766cec:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  766cf0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  766cf2:	85 c0                                           	test   eax,eax
  766cf4:	74 0e                                           	je     0x766d04
  766cf6:	3b 46 10                                        	cmp    eax,DWORD PTR [esi+0x10]
  766cf9:	74 09                                           	je     0x766d04
  766cfb:	50                                              	push   eax
  766cfc:	e8 df d7 d7 ff                                  	call   0x4e44e0
  766d01:	83 c4 04                                        	add    esp,0x4
  766d04:	83 c6 1c                                        	add    esi,0x1c
  766d07:	3b f7                                           	cmp    esi,edi
  766d09:	72 e5                                           	jb     0x766cf0
  766d0b:	8b b4 24 14 02 00 00                            	mov    esi,DWORD PTR [esp+0x214]
  766d12:	85 f6                                           	test   esi,esi
  766d14:	74 12                                           	je     0x766d28
  766d16:	3b b4 24 24 02 00 00                            	cmp    esi,DWORD PTR [esp+0x224]
  766d1d:	74 09                                           	je     0x766d28
  766d1f:	56                                              	push   esi
  766d20:	e8 bb d7 d7 ff                                  	call   0x4e44e0
  766d25:	83 c4 04                                        	add    esp,0x4
  766d28:	8d 8c 24 80 01 00 00                            	lea    ecx,[esp+0x180]
  766d2f:	e8 fc d4 fe ff                                  	call   0x754230
  766d34:	8d 43 04                                        	lea    eax,[ebx+0x4]
  766d37:	8b c8                                           	mov    ecx,eax
  766d39:	83 ca ff                                        	or     edx,0xffffffff
  766d3c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  766d40:	4a                                              	dec    edx
  766d41:	75 11                                           	jne    0x766d54
  766d43:	b9 01 00 00 00                                  	mov    ecx,0x1
  766d48:	87 08                                           	xchg   DWORD PTR [eax],ecx
  766d4a:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  766d4c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  766d4e:	6a 01                                           	push   0x1
  766d50:	8b cb                                           	mov    ecx,ebx
  766d52:	ff d0                                           	call   eax
  766d54:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  766d58:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  766d5a:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  766d5d:	ff d0                                           	call   eax
  766d5f:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  766d63:	5f                                              	pop    edi
  766d64:	5e                                              	pop    esi
  766d65:	5b                                              	pop    ebx
  766d66:	8b e5                                           	mov    esp,ebp
  766d68:	5d                                              	pop    ebp
  766d69:	c3                                              	ret
  766d6a:	8d 8c 24 80 01 00 00                            	lea    ecx,[esp+0x180]
  766d71:	e8 ba d4 fe ff                                  	call   0x754230
  766d76:	8b 7c 24 7c                                     	mov    edi,DWORD PTR [esp+0x7c]
  766d7a:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  766d7e:	8d 46 04                                        	lea    eax,[esi+0x4]
  766d81:	8b c8                                           	mov    ecx,eax
  766d83:	83 ca ff                                        	or     edx,0xffffffff
  766d86:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  766d8a:	4a                                              	dec    edx
  766d8b:	75 11                                           	jne    0x766d9e
  766d8d:	b9 01 00 00 00                                  	mov    ecx,0x1
  766d92:	87 08                                           	xchg   DWORD PTR [eax],ecx
  766d94:	8b 16                                           	mov    edx,DWORD PTR [esi]
  766d96:	8b 02                                           	mov    eax,DWORD PTR [edx]
  766d98:	6a 01                                           	push   0x1
  766d9a:	8b ce                                           	mov    ecx,esi
  766d9c:	ff d0                                           	call   eax
  766d9e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  766da0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  766da3:	8b cf                                           	mov    ecx,edi
  766da5:	ff d0                                           	call   eax
  766da7:	d9 ee                                           	fldz
  766da9:	5f                                              	pop    edi
  766daa:	5e                                              	pop    esi
  766dab:	5b                                              	pop    ebx
  766dac:	8b e5                                           	mov    esp,ebp
  766dae:	5d                                              	pop    ebp
  766daf:	c3                                              	ret
