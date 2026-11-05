/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL. cdecl eight DWORD stack slots, RET; two low-byte enable flags choose
   required/prohibited descriptor sets. Walks B3C7F0/B3E040 segment iterator, skips no-motion
   within0.001 on same level, rounds coordinates through x87 FISTP and inserts descriptors in
   B3F740. Rounding follows actual ambient x87 control state, not an assumed C# rounding mode. This
   enumerates physical wall-edge descriptors; no floating collinear union or material-seam identity
   is established. Parameter1 is passed but not consumed in the selected body. */

void __cdecl
Placement_RasterizeWallSegmentIntoSets
          (undefined4 param_1,char param_2,char param_3,undefined4 param_4,float *param_5,
          float *param_6,void *param_7,void *param_8)

{
  float fVar1;
  float fVar2;
  int iVar3;
  undefined2 local_dc;
  float local_d8;
  float local_d4;
  int local_d0;
  undefined1 local_cc;
  undefined1 local_c4;
  undefined1 local_c0;
  uint local_bc;
  uint local_b8;
  undefined4 local_ac;
  undefined2 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  int local_9c;
  float local_98;
  float local_94;
  int local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined1 local_80 [36];
  char local_5c;
  undefined4 local_54;
  undefined4 local_50;
  float local_44;
  float local_40;
  int local_3c;
  float local_38;
  float local_34;
  int local_30;
  char local_1f;
  dword local_18 [2];
  dword local_10 [3];
  
  FUN_00b3c7f0(local_80,param_5,param_6,param_4);
  if (local_5c != '\0') {
    local_d4 = local_40;
    local_d8 = local_44;
    local_d0 = local_3c;
    while ((iVar3 = local_30, fVar2 = local_34, fVar1 = local_38, local_5c != '\0' &&
           (local_1f == '\0'))) {
      local_98 = local_38;
      local_94 = local_34;
      local_90 = local_30;
      if ((local_30 != local_d0) ||
         ((0.001 < ABS(local_38 - local_d8) || (0.001 < ABS(local_34 - local_d4))))) {
        local_c0 = (undefined1)(int)ROUND(local_34);
        local_cc = (undefined1)(int)ROUND(local_d8);
        local_ac = CONCAT13(local_cc,CONCAT12((char)local_30,
                                              CONCAT11(local_c0,(char)(int)ROUND(local_38))));
        local_c4 = (undefined1)(int)ROUND(local_d4);
        local_dc = CONCAT11((char)local_d0,local_c4);
        local_8c = local_54;
        local_88 = local_50;
        local_a8 = local_dc;
        local_a4 = local_54;
        local_a0 = local_50;
        local_9c = local_3c;
        if (param_2 != '\0') {
          local_b8 = local_b8 & 0xffffff00;
          WallEdgeSet_InsertUnique(param_7,local_10,&local_ac,local_b8);
        }
        if (param_3 != '\0') {
          local_bc = local_bc & 0xffffff00;
          WallEdgeSet_InsertUnique(param_8,local_18,&local_ac,local_bc);
        }
        local_d8 = fVar1;
        local_d4 = fVar2;
        local_d0 = iVar3;
      }
      FUN_00b3e040(local_80);
    }
  }
  return;
}

