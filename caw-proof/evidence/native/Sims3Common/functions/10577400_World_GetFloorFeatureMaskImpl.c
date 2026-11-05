/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetFloorFeatureMaskImpl. Export ordinal(s):
   1325. Entry VA: 0x10577400. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB0. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined2 __cdecl
World_GetFloorFeatureMaskImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  undefined2 uVar1;
  int *this;
  char local_4;
  undefined1 local_3;
  undefined1 local_2;
  undefined1 uStack_1;
  
                    /* 0x577400  1325  World_GetFloorFeatureMaskImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      _local_4 = CONCAT12(param_5,CONCAT11(param_4,param_3));
      uVar1 = FUN_1007bc70(this,&local_4);
      return uVar1;
    }
  }
  return 0;
}

