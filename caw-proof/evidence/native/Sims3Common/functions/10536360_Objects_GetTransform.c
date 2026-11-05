/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetTransform. Export ordinal(s): 485.
   Entry VA: 0x10536360. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Objects_GetTransform(undefined4 *param_1)

{
  int iVar1;
  void *pvVar2;
  uint local_50 [4];
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
                    /* 0x536360  485  Objects_GetTransform */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d998);
    if (pvVar2 != (void *)0x0) {
      FUN_1074a310(pvVar2,local_50);
      FUN_100a62d0(param_1,local_50);
      FUN_100a62d0(param_1 + 4,local_40);
      FUN_100a62d0(param_1 + 8,local_30);
      FUN_100a62d0(param_1 + 0xc,local_20);
      return param_1;
    }
  }
  FUN_1055da70(param_1,0x3f800000,0,0,0);
  FUN_1055da70(param_1 + 4,0,0x3f800000,0,0);
  FUN_1055da70(param_1 + 8,0,0,0x3f800000,0);
  FUN_1055da70(param_1 + 0xc,0,0,0,0x3f800000);
  return param_1;
}

