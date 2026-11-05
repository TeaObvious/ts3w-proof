/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll export WorldTerrainWrap_CreateRoadSpline (PE RVA 0x996C50).
   The pristine CSHostWrap declaration returns IntPtr and takes a terrain handle, four by-value
   Vector2 knots, then int flags isFootpath/isDirt/isRoadBridge. Raw x86 at 0x10996C59–0x10996D3D
   reads four Vector2 pairs from [EBP+0x0C]..[EBP+0x28], tests flags at [EBP+0x2C], +0x30, +0x34 for
   equality to 1, obtains the current road network through global 0x10C700C4 +0x5C, and calls
   0x10146A20. CALL is immediately followed by frame teardown and RET; EAX therefore carries the
   helper's return to managed code. WARNING: current Ghidra pseudocode infers void, __fastcall and
   independent scalar parameters; the managed return and raw stack reads/CALL/RET are the ABI
   witnesses. The passed terrain-handle word at [EBP+8] is not read in this wrapper. Static code
   does not establish a runtime-created spline or ownership lifetime. */

void __fastcall
WorldTerrainWrap_CreateRoadSpline
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          int param_6,undefined4 param_7,int param_8,undefined4 param_9,int param_10,
          undefined4 param_11,int param_12,int param_13,int param_14)

{
  undefined3 uVar1;
  int local_50;
  undefined4 uStack_4c;
  int iStack_48;
  int iStack_44;
  int local_40;
  undefined4 uStack_3c;
  int iStack_38;
  int iStack_34;
  int local_30;
  undefined4 uStack_2c;
  int iStack_28;
  int iStack_24;
  int local_20;
  undefined4 uStack_1c;
  int iStack_18;
  int iStack_14;
  
                    /* 0x996c50  2560  WorldTerrainWrap_CreateRoadSpline */
  uVar1 = (undefined3)((uint)param_2 >> 8);
  local_40 = param_10;
  uStack_3c = param_11;
  iStack_38 = param_10;
  iStack_34 = param_10;
  local_30 = param_8;
  uStack_2c = param_9;
  iStack_28 = param_8;
  iStack_24 = param_8;
  local_20 = param_6;
  uStack_1c = param_7;
  iStack_18 = param_6;
  iStack_14 = param_6;
  local_50 = param_4;
  uStack_4c = param_5;
  iStack_48 = param_4;
  iStack_44 = param_4;
  CAW_RoadNetworkCreateSplineAndInsert
            (*(void **)(DAT_10c700c4 + 0x5c),&local_50,&local_20,&local_30,&local_40,
             (int *)(uint)(param_12 == 1),CONCAT31(uVar1,param_13 == 1),
             CONCAT31(uVar1,param_14 == 1));
  return;
}

