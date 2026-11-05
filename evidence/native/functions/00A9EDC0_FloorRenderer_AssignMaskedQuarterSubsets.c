/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 floor geometry preparation comparison.
   If this+0x100 FloorGeometry exists, creates/updates a subset specification from input fields and
   room-set membership, optionally applies material payload, then interns its pair. Iterates the
   four bits in tile record byte3; queries the prior quarter subset, adjusts thickness edges through
   A9E300/A9E560 and optional visibility through A9E7C0, then calls A88460 with subset pair and that
   quarter's two-bit rotation.
   Physical ECX receiver plus nineteen stack DWORD slots, RET0x4c; all twenty stored
   parameters/types remain unchanged. Rotation masks are03/0C/30/C0 with shifts0/2/4/6. Native
   subset/material/room helper flags and child effects remain bounded; this does not prove
   equivalence to the current room grid, resolver materials, roof filtering or partial-pattern skip
   policy.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall
FloorRenderer_AssignMaskedQuarterSubsets
          (void *this,ushort *param_1,undefined4 *param_2,undefined2 param_3,ushort param_4,
          undefined1 param_5,byte *param_6,byte param_7,int *param_8,undefined4 *param_9,
          undefined4 param_10,undefined4 param_11,undefined4 param_12,byte param_13,char param_14,
          byte param_15,char param_16,char param_17,byte param_18,byte param_19)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  bool bVar5;
  int *piVar6;
  undefined4 uVar7;
  uint uVar8;
  byte bVar9;
  char cVar10;
  char local_d2;
  char local_d0;
  undefined1 local_cf;
  byte local_ce;
  char local_ca;
  char local_c9;
  undefined8 local_c8;
  uint local_c0 [2];
  undefined4 local_b8 [2];
  undefined4 local_b0 [2];
  undefined4 local_a8 [40];
  byte local_5;
  
  if (*(int *)((int)this + 0x100) != 0) {
    iVar1 = *(int *)((int)this + 0xc);
    local_c0[0] = (uint)param_4;
    iVar2 = *(int *)(*(int *)(iVar1 + 0x9c) + *(int *)(iVar1 + 0xa0) * 4);
    local_c8._0_4_ = (int *)FUN_00ae43c0((void *)(iVar1 + 0x98),local_b0,(short *)local_c0);
    local_c0[0] = (uint)param_4;
    iVar3 = *(int *)(*(int *)(iVar1 + 0xbc) + *(int *)(iVar1 + 0xc0) * 4);
    piVar6 = (int *)FUN_00ae43c0((void *)(iVar1 + 0xb8),local_b8,(short *)local_c0);
    FUN_00a9c080(local_a8,this,param_2,param_4,param_5,param_7,0,*piVar6 != iVar3,
                 *(int *)local_c8 != iVar2,param_3,param_14,param_13,param_19);
    if ((((*param_8 != DAT_011ec8d0) || (param_8[2] != DAT_011ec8d8)) ||
        (param_8[3] != DAT_011ec8dc)) || (param_8[1] != DAT_011ec8d4)) {
      FUN_00a9bc20(local_a8,param_8,param_9,param_10,param_11,param_12,param_16);
      FUN_00a9ad60((int)local_a8);
    }
    local_5 = (param_18 & 1) * '\x04' | local_5 & 0xfa | param_15 & 1;
    if (((param_13 != 0) || (param_15 != 0)) || (param_18 != 0)) {
      FUN_00a9ad60((int)local_a8);
    }
    uVar7 = FloorPattern_HasAssignedRenderKey((int)local_a8);
    local_c9 = (char)uVar7;
    local_c8 = FUN_00a9ed30(this,(int)local_a8);
    local_cf = *(undefined1 *)((int)param_1 + 1);
    local_d0 = (char)*param_1;
    local_ca = '\0';
    local_ce = 0;
    do {
      if (((int)*(char *)((int)param_1 + 3) & 1 << (local_ce & 0x1f)) != 0) {
        bVar9 = 0;
        local_d2 = '\0';
        bVar5 = false;
        uVar8 = FUN_00a833d0(*(void **)((int)this + 0x100),&local_d0,(longlong *)local_c0,
                             (byte *)0x0);
        if ((char)uVar8 == '\0') {
          if (local_ce == 0) {
            uVar7 = FUN_00a9d6c0(this,param_1);
            local_ca = (char)uVar7;
          }
        }
        else {
          piVar6 = (int *)FUN_00a9c810((void *)((int)this + 0xe0),local_b8,local_c0);
          iVar1 = *piVar6;
          bVar9 = 0;
          if (iVar1 != *(int *)(*(int *)((int)this + 0xe4) + *(int *)((int)this + 0xe8) * 4)) {
            uVar7 = FloorPattern_HasAssignedRenderKey(iVar1 + 8);
            bVar9 = *(byte *)(iVar1 + 0xab) & 1;
            local_d2 = (char)uVar7;
            if (((*(int *)(iVar1 + 0x18) == DAT_011ec8a0) &&
                (*(int *)(iVar1 + 0x20) == DAT_011ec8a8)) &&
               ((*(int *)(iVar1 + 0x24) == DAT_011ec8ac && (*(int *)(iVar1 + 0x1c) == DAT_011ec8a4))
               )) {
              bVar5 = true;
            }
            else {
              bVar5 = false;
            }
          }
        }
        if (*(int *)((int)this + 0x14) == 0) {
          cVar10 = local_c9;
          if (local_d2 == '\0') goto joined_r0x00a9f092;
        }
        else {
          cVar10 = local_d2;
          if (local_c9 == '\0') {
joined_r0x00a9f092:
            if (cVar10 != '\0') {
              FloorRenderer_RemoveOrRestoreQuarterThicknessEdges(this,&local_d0,'\0');
            }
          }
          else if (local_d2 == '\0') {
            FloorRenderer_AddQuarterThicknessEdges(this,&local_d0);
          }
        }
        uVar4 = local_c8;
        if (param_15 == 0) {
          if ((param_17 == '\0') &&
             (((bVar9 != 0 || (local_ca != '\0')) || ((local_d2 == '\0' && (!bVar5)))))) {
            cVar10 = '\0';
            goto LAB_00a9f0e0;
          }
        }
        else if (bVar9 == 0) {
          cVar10 = '\x01';
LAB_00a9f0e0:
          FUN_00a9e7c0(this,&local_d0,cVar10);
          uVar4 = local_c8;
        }
        local_c8._4_4_ = (uint)((ulonglong)uVar4 >> 0x20);
        local_c8._0_4_ = (int *)uVar4;
        FloorGeometry_SetQuarterSubsetAndRotation
                  (*(void **)((int)this + 0x100),&local_d0,(uint)(int *)local_c8,local_c8._4_4_,
                   (uint)(byte)(((&DAT_01184554)[(char)local_ce] & *param_6) >>
                               (*(byte *)(&DAT_01184558 + (char)local_ce) & 0x1f)));
        local_c8 = uVar4;
      }
      local_ce = local_ce + 1;
    } while ((char)local_ce < '\x04');
    FUN_00a9c170(local_a8);
  }
  return;
}

