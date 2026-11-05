/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetCameraParams. Export ordinal(s):
   2699. Entry VA: 0x10999610. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000505. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_SetCameraParams(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
                    /* 0x999610  2699  WorldWrap_SetCameraParams */
  iVar1 = FUN_1075c630();
  iVar1 = FUN_10937a80(iVar1);
  if (iVar1 != 0) {
    piVar2 = (int *)FUN_1075c950(iVar1);
    if (piVar2 != (int *)0x0) {
      piVar3 = (int *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0x14bc619b);
      if (piVar3 != (int *)0x0) {
        uStack_20 = param_2[2];
        uStack_28 = *param_2;
        uStack_24 = param_2[1];
        uStack_30 = param_1[2];
        uStack_34 = param_1[1];
        uStack_38 = *param_1;
        uStack_2c = uStack_38;
        uStack_1c = uStack_28;
        (**(code **)(*piVar3 + 0x2c))(&uStack_38,&uStack_28);
        return 1;
      }
      if (piVar2 != (int *)0x0) {
        uStack_20 = param_2[2];
        uStack_28 = *param_2;
        uStack_24 = param_2[1];
        uStack_30 = param_1[2];
        uStack_34 = param_1[1];
        uStack_38 = *param_1;
        uStack_2c = uStack_38;
        uStack_1c = uStack_28;
        (**(code **)(*piVar2 + 0x2c))(&uStack_38,&uStack_28);
        return 1;
      }
    }
  }
  return 0;
}

