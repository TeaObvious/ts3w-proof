/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsValidLotLocation. Export ordinal(s):
   2678. Entry VA: 0x10999da0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004BC. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl
WorldWrap_IsValidLotLocation
          (void *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
          undefined4 *param_5)

{
  uint in_EAX;
  uint uVar1;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x999da0  2678  WorldWrap_IsValidLotLocation */
  if (param_1 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  local_30 = *param_2;
  local_2c = param_2[1];
  local_24 = param_3[1];
  local_28 = *param_3;
  local_1c = param_4[1];
  local_20 = *param_4;
  local_14 = param_5[1];
  local_18 = *param_5;
  uVar1 = FUN_10240250(param_1,&local_30);
  return uVar1;
}

