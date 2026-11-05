/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintQueryCell_Initialize.
   Original Ghidra database symbol: FUN_00669f00; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669f00,00669f71); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* This initializes a 0x24-byte query descriptor: tree+4, parent storage+8, selected storage+C, scale+14, packed coordinates/depth+18 and low-byte subcell code+1C. The constructor preserves unrelated bitfields through masks; its unreviewed initialization/destruction helpers remain separate lifetime boundaries. */



void __thiscall
FUN_00669f00(void *this,undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
            uint param_5,uint param_6,int param_7,int param_8,undefined4 param_9,undefined1 param_10
            )

{
  *(undefined4 *)((int)this + 4) = param_1;
  *(uint *)((int)this + 0x20) =
       *(uint *)((int)this + 0x20) ^ (param_3 << 8 ^ *(uint *)((int)this + 0x20)) & 0x300;
  *(undefined4 *)((int)this + 8) = param_2;
  *(uint *)((int)this + 0x18) =
       (param_6 & 0xfff | param_8 << 0xc) << 0x10 | (param_7 + 4) * 0x1000 & 0xf000U |
       param_5 & 0xfff;
  *(undefined4 *)((int)this + 0x14) = param_4;
  *(undefined4 *)((int)this + 0xc) = param_9;
  *(undefined1 *)((int)this + 0x1c) = param_10;
  return;
}

