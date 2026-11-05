/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static original. Physical ECX room, ordinary RET. Saves previous F4 into100, compares
   current F4 with desired69E920, advances0to1or1to2 with state2; otherwise state5 when current
   equals global01159B00, state4 when different. Stores F4 then calls owner refresh6A5B40 and stores
   stateF0. The retained state3/6A6240 branch is not reached by the selected visible2/4/5
   assignments; no invented caller-supplied state is assumed. Actual numeric quality/data layout,
   allocator and full update cadence remain independent children. */

void __fastcall RoomLighting_AdvanceQualityStage(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = param_1[0x3d];
  param_1[0x40] = iVar3;
  iVar2 = 5;
  iVar1 = RoomLighting_GetDesiredQualityForOwnerState(param_1);
  if (iVar3 < iVar1) {
    if (iVar3 == 0) {
      iVar3 = 1;
      iVar2 = 2;
    }
    else if (iVar3 == 1) {
      iVar3 = 2;
      iVar2 = 2;
    }
  }
  else if (iVar3 != DAT_01159b00) {
    iVar2 = 4;
  }
  param_1[0x3d] = iVar3;
  if (iVar2 == 3) {
    FUN_006a6240(*param_1);
    param_1[0x3c] = 3;
    return;
  }
  FUN_006a5b40(*param_1);
  param_1[0x3c] = iVar2;
  return;
}

