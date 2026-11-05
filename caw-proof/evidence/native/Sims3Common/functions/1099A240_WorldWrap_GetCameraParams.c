/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetCameraParams. Export ordinal(s):
   2628. Entry VA: 0x1099a240. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000504. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetCameraParams(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  undefined4 *puVar6;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
                    /* 0x99a240  2628  WorldWrap_GetCameraParams */
  iVar3 = FUN_1075c630();
  iVar3 = FUN_10937a80(iVar3);
  if ((iVar3 != 0) && (piVar4 = (int *)FUN_1075c950(iVar3), piVar4 != (int *)0x0)) {
    piVar5 = (int *)(**(code **)(*piVar4 + 0xc))(0x4d394edb);
    piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0x14bc619b);
    if (piVar5 == (int *)0x0) {
      if (piVar4 == (int *)0x0) {
        return 0;
      }
      puVar6 = (undefined4 *)(**(code **)(*piVar4 + 0x34))(&uStack_28);
      uStack_2c = *puVar6;
      uStack_28 = puVar6[1];
      uStack_24 = puVar6[2];
      uStack_20 = puVar6[3];
      *param_1 = uStack_2c;
      param_1[1] = uStack_28;
      param_1[2] = uStack_24;
      iVar3 = *piVar4;
    }
    else {
      puVar6 = (undefined4 *)(**(code **)(*piVar5 + 0x34))(&uStack_28);
      uStack_2c = *puVar6;
      uStack_28 = puVar6[1];
      uStack_24 = puVar6[2];
      uStack_20 = puVar6[3];
      *param_1 = uStack_2c;
      param_1[1] = uStack_28;
      param_1[2] = uStack_24;
      iVar3 = *piVar5;
    }
    puVar6 = (undefined4 *)(**(code **)(iVar3 + 0x30))(&uStack_2c);
    uVar1 = puVar6[1];
    uVar2 = puVar6[2];
    *param_2 = *puVar6;
    param_2[1] = uVar1;
    param_2[2] = uVar2;
    return 1;
  }
  return 0;
}

