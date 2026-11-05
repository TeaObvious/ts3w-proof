/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectSetPainting. Export ordinal(s): 1553.
   Entry VA: 0x1057b070. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C3F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
World_ObjectSetPainting
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  void *pvVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x57b070  1553  World_ObjectSetPainting */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d804);
      if (pvVar2 != (void *)0x0) {
        local_10 = param_5;
        local_c = param_6;
        local_8 = param_3;
        local_4 = param_4;
        FUN_1073bb70(pvVar2,&local_10,param_7);
      }
    }
  }
  return;
}

