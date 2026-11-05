/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasBasementImpl. Export ordinal(s): 1405.
   Entry VA: 0x10577510. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl
World_HasBasementImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  bool bVar1;
  int *this;
  undefined1 local_4 [3];
  undefined1 local_1;
  
                    /* 0x577510  1405  World_HasBasementImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      local_4._0_2_ = CONCAT11(param_4,param_3);
      _local_4 = CONCAT13(0xf,CONCAT12(param_5,local_4._0_2_));
      bVar1 = FUN_1007c230(this,local_4);
      return bVar1;
    }
  }
  return false;
}

