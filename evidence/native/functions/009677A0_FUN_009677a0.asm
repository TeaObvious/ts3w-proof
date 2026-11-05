# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 009677A0_FUN_009677a0.c
Body [[009677a0, 0096780c]]; envelope exclusive end 0096780d

GHIDRA LISTING (original bytes)
009677a0  d944240c  FLD float ptr [ESP + 0xc]
009677a4  d9059c2bfa00  FLD float ptr [0x00fa2b9c]
009677aa  d8c9  FMUL ST1
009677ac  d9442404  FLD float ptr [ESP + 0x4]
009677b0  d905cc4c0f01  FLD float ptr [0x010f4ccc]
009677b6  d8c9  FMUL ST1
009677b8  d9442408  FLD float ptr [ESP + 0x8]
009677bc  d905c82b0601  FLD float ptr [0x01062bc8]
009677c2  d8c9  FMUL ST1
009677c4  d8ec  FSUBR ST0,ST4
009677c6  d8c2  FADD ST0,ST2
009677c8  d90588fd0301  FLD float ptr [0x0103fd88]
009677ce  dcc1  FADD ST1,ST0
009677d0  d9c9  FXCH
009677d2  d84c2414  FMUL float ptr [ESP + 0x14]
009677d6  d9c2  FLD ST2
009677d8  d80d7c3ffb00  FMUL float ptr [0x00fb3f7c]
009677de  dee6  FSUBRP ST6,ST0
009677e0  d9cd  FXCH ST5
009677e2  d8c4  FADD ST0,ST4
009677e4  d84c2418  FMUL float ptr [ESP + 0x18]
009677e8  dec5  FADDP ST5,ST0
009677ea  d8c9  FMUL ST1
009677ec  d8e5  FSUB ST0,ST5
009677ee  dee3  FSUBRP ST3,ST0
009677f0  d9ca  FXCH ST2
009677f2  d84c2410  FMUL float ptr [ESP + 0x10]
009677f6  dec3  FADDP ST3,ST0
009677f8  d9cb  FXCH ST3
009677fa  dee1  FSUBRP
009677fc  dec2  FADDP ST2,ST0
009677fe  d9c9  FXCH
00967800  d84c241c  FMUL float ptr [ESP + 0x1c]
00967804  dec1  FADDP
00967806  d80db4b5f900  FMUL float ptr [0x00f9b5b4]
0096780c  c3  RET
