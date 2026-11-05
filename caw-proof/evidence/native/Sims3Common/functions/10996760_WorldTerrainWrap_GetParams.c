/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetParams. Export ordinal(s):
   2570. Entry VA: 0x10996760. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B0B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_GetParams(int param_1,uint param_2,undefined4 *param_3)

{
  void *this;
  uint uVar1;
  undefined4 uVar2;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x996760  2570  WorldTerrainWrap_GetParams */
  this = *(void **)(param_1 + 0x68);
  if (this == (void *)0x0) {
    return 0;
  }
  uVar1 = FUN_101f41c0(this,param_2,&local_14);
  if ((char)uVar1 == '\0') {
    return 0;
  }
  *param_3 = local_14;
  param_3[1] = local_10;
  uVar2 = FUN_101f41f0(this,param_2,&local_c);
  if ((char)uVar2 == '\0') {
    return 0;
  }
  param_3[4] = local_4;
  param_3[2] = local_c;
  param_3[3] = local_8;
  return 1;
}

