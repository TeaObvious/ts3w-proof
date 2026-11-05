/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintCell_CollectRecordsRecursive.
   Original Ghidra database symbol: FUN_00669e00; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669e00,00669e5a); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* A storage node whose low two tag bits are zero delegates to the leaf collector; otherwise nonnull child slots+0C,+10,+14,+18 are recursively visited in order. This is generic storage traversal, not an independent segment/polygon intersection test. */



void __thiscall
FUN_00669e00(void *this,int param_1,void *param_3_00,undefined4 param_4_00,undefined4 param_5_00,
            undefined4 param_5)

{
  undefined4 *puVar1;
  int local_4;
  
  if ((*(byte *)((int)this + 4) & 3) == 0) {
    FUN_00669b20(this,param_1,param_3_00,(char)param_4_00,(char)param_5_00,(char)param_5);
    return;
  }
  puVar1 = (undefined4 *)((int)this + 0xc);
  local_4 = 4;
  do {
    if ((void *)*puVar1 != (void *)0x0) {
      FUN_00669e00((void *)*puVar1,param_1,param_3_00,param_4_00,param_5_00,param_5);
    }
    puVar1 = puVar1 + 1;
    local_4 = local_4 + -1;
  } while (local_4 != 0);
  return;
}

