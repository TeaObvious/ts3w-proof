/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetHouseboatParentImpl. Export ordinal(s):
   1332. Entry VA: 0x10579d30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000D07. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl World_GetHouseboatParentImpl(int param_1,int param_2)

{
  int *piVar1;
  undefined8 uVar2;
  
                    /* 0x579d30  1332  World_GetHouseboatParentImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      uVar2 = FUN_10075680((int)piVar1);
      return uVar2;
    }
  }
  return 0;
}

