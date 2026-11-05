/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll export WorldTerrainWrap_CreateRoadIntersection (PE ordinal
   2559). Original CSHostWrap MethodDef 0x06000AF8 declares IntPtr return with a terrain handle,
   by-value Vector2 position, float rotation, and two int flags. Raw x86 CALL 0x10146AE0 at
   0x10996DAA is followed only by frame teardown and RET at 0x10996DB2; the helper's EAX is
   forwarded to the managed caller. WARNING: Ghidra currently infers void and split scalar
   parameters; use the managed declaration and original stack/CALL/RET instructions for this
   boundary, not the pseudocode prototype. The native helper's success and returned-object ownership
   are not established here. */

void __fastcall
WorldTerrainWrap_CreateRoadIntersection
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          int param_6,int param_7,int param_8)

{
  int local_20;
  undefined4 uStack_1c;
  int iStack_18;
  int iStack_14;
  
                    /* 0x996d50  2559  WorldTerrainWrap_CreateRoadIntersection */
  local_20 = param_4;
  uStack_1c = param_5;
  iStack_18 = param_4;
  iStack_14 = param_4;
  FUN_10146ae0(*(void **)(DAT_10c700c4 + 0x5c),&local_20,param_6,(int *)(uint)(param_7 == 1),
               CONCAT31((int3)((uint)param_2 >> 8),param_8 == 1));
  return;
}

