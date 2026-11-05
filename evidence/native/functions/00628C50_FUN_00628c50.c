/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_ReleaseSubtree.
   Original Ghidra database symbol: FUN_00628c50; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00628c50,00628c93); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* 628C60..65 recursively releases one child, then 628C6A..84 invokes footprint virtual+94 for a nonnull node+10 and frees the node; the other child is processed iteratively. ECX is forwarded but has no identified domain access here. The generated signature omits that unused receiver context. This does not clear or reset the owning set header. */



void FUN_00628c50(undefined4 *param_1)

{
  undefined4 *puVar1;
  
  while (param_1 != (undefined4 *)0x0) {
    FUN_00628c50((undefined4 *)*param_1);
    puVar1 = (undefined4 *)param_1[1];
    if ((int *)param_1[4] != (int *)0x0) {
      (**(code **)(*(int *)param_1[4] + 0x94))();
    }
    Memory_FreeIfNonNull(param_1);
    param_1 = puVar1;
  }
  return;
}

