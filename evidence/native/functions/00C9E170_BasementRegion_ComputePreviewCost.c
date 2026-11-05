/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words; ST0 float arithmetic. Checks matching
   levels/nonempty region (rectangle or diamond parity), shifts corners down one level, adds
   floor/excavation cost, another affected floor term and wall term with stored float intermediate
   rounding. This is not only tileCount*100. */

float10 __cdecl
BasementRegion_ComputePreviewCost
          (void *param_1,char param_2,char param_3,char *param_4,char *param_5,char param_6)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  float10 fVar4;
  char local_2c;
  char local_2b;
  char local_2a;
  char local_28;
  char local_27;
  char local_26;
  float local_24;
  void *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  
  if (param_4[2] == param_5[2]) {
    local_2c = *param_5;
    local_28 = *param_4;
    if (param_2 == '\0') {
      if (local_28 < local_2c) {
        local_27 = param_4[1];
        local_2b = param_5[1];
        if (local_2b <= local_27) {
          return (float10)0;
        }
LAB_00c9e222:
        local_26 = param_4[2] + -1;
        local_2a = param_5[2] + -1;
        fVar4 = BasementRegion_ComputeFloorAndDigCost
                          (param_1,param_2,param_3,&local_28,&local_2c,param_6);
        local_24 = (float)fVar4;
        fVar4 = FUN_00c9cca0(param_1,param_2,param_3,&local_28,&local_2c,param_3 == '\0',param_6);
        local_24 = (float)(fVar4 + (float10)local_24);
        BasementProducts_GetWallKey();
        local_20 = (void *)0x0;
        local_1c = 0;
        local_18 = 0;
        local_14 = "UserTool/BasementPlacementHelper/walls";
        FUN_00c5d450(param_2,&local_28,&local_2c,'\0',&local_20);
        fVar4 = FUN_00c9df90(param_1,param_2,param_3,&local_28,&local_2c,(int *)&local_20);
        local_24 = (float)(fVar4 + (float10)local_24);
        if (local_20 != (void *)0x0) {
          Memory_FreeIfNonNull(local_20);
        }
        return (float10)local_24;
      }
    }
    else if ((local_28 != local_2c) || (param_4[1] != param_5[1])) {
      local_2b = param_5[1];
      local_27 = param_4[1];
      iVar3 = (int)local_2c;
      iVar2 = (int)local_28;
      uVar1 = ((iVar3 - iVar2) - (int)local_27) + (int)local_2b & 0x80000001;
      if ((int)uVar1 < 0) {
        uVar1 = (uVar1 - 1 | 0xfffffffe) + 1;
      }
      if (((uVar1 != 1) && (local_27 + iVar2 != iVar3 + local_2b)) &&
         (iVar2 - local_27 != iVar3 - local_2b)) goto LAB_00c9e222;
    }
  }
  return (float10)0;
}

