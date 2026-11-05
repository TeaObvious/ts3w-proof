/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetFloorFeaturesImpl. Export ordinal(s):
   1577. Entry VA: 0x105772e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CAF. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
World_SetFloorFeaturesImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5,
          byte param_6,char param_7,ushort param_8)

{
  int *this;
  char local_4;
  undefined1 local_3;
  undefined1 local_2;
  undefined1 uStack_1;
  
                    /* 0x5772e0  1577  World_SetFloorFeaturesImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      _local_4 = CONCAT12(param_5,CONCAT11(param_4,param_3));
      FUN_10080b60(this,&local_4,param_6,param_7,param_8);
    }
  }
  return;
}

