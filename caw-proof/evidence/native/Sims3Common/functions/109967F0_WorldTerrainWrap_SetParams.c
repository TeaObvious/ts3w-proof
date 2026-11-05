/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_SetParams. Export ordinal(s):
   2591. Entry VA: 0x109967f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B0C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_SetParams(int param_1,uint param_2,uint *param_3)

{
  void *this;
  undefined4 uVar1;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
                    /* 0x9967f0  2591  WorldTerrainWrap_SetParams */
  this = *(void **)(param_1 + 0x68);
  if (this == (void *)0x0) {
    return 0;
  }
  local_14 = *param_3;
  local_10 = param_3[1];
  uVar1 = FUN_101f4f20(this,param_2,&local_14);
  if ((char)uVar1 != '\0') {
    uVar1 = FUN_101f41f0(this,param_2,&local_c);
    if ((char)uVar1 != '\0') {
      param_3[4] = local_4;
      param_3[2] = local_c;
      param_3[3] = local_8;
      return 1;
    }
  }
  return 0;
}

