/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelProxyWrap_GetModelBoundsForFirstLOD. Export
   ordinal(s): 1954. Entry VA: 0x10986fc0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001A4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl ModelProxyWrap_GetModelBoundsForFirstLOD(undefined4 *param_1,uint *param_2)

{
  undefined4 uVar1;
  void *this;
  int iVar2;
  undefined4 *puVar3;
  undefined4 local_48 [6];
  undefined4 local_30 [11];
  
                    /* 0x986fc0  1954  ModelProxyWrap_GetModelBoundsForFirstLOD */
  this = (void *)FUN_104d2030(param_2);
  if (this != (void *)0x0) {
    iVar2 = FUN_10945ab0((int)this);
    if (iVar2 != 0) {
      iVar2 = FUN_104c7160(this,0);
      if (iVar2 != 0) {
        puVar3 = (undefined4 *)FUN_10201830(iVar2);
        goto LAB_10987012;
      }
    }
  }
  FUN_10482c60(local_30);
  puVar3 = local_30;
LAB_10987012:
  puVar3 = (undefined4 *)FUN_10986ab0(local_48,puVar3);
  *param_1 = *puVar3;
  param_1[1] = puVar3[1];
  param_1[2] = puVar3[2];
  param_1[3] = puVar3[3];
  uVar1 = puVar3[5];
  param_1[4] = puVar3[4];
  param_1[5] = uVar1;
  return param_1;
}

