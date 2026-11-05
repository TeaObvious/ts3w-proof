/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasObjectSnowImpl. Export ordinal(s): 1409.
   Entry VA: 0x10580e20. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BB4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl World_HasObjectSnowImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  bool bVar1;
  int iVar2;
  void *pvVar3;
  
                    /* 0x580e20  1409  World_HasObjectSnowImpl */
  iVar2 = FUN_1072a1a0();
  if (iVar2 != 0) {
    pvVar3 = (void *)FUN_1072abb0(iVar2);
    if (pvVar3 != (void *)0x0) {
      pvVar3 = (void *)FUN_10726da0(pvVar3,DAT_10c8dae8);
      if (pvVar3 != (void *)0x0) {
        bVar1 = FUN_10750ae0(pvVar3,param_3);
        return bVar1;
      }
    }
  }
  return true;
}

