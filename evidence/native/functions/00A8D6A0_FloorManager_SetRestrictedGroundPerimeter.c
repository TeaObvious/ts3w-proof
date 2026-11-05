/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physicalthiscall enabledlowBYTE RET4void. Only if lot4 nonnull ANDlot+4BC!=0. Builds
   packedtile x,z,level0,mask0F; loops managerwidth8 along z0 and z(depthC-1), then managerdepthC
   along x0 and x(width8-1). Coordinates truncate/signextendBYTE inrawsetter. A98D8A passesfalse
   afterflagsread,so clearLOWFOUR onallgroundperimeter cells,preserveupperfour. Not a
   whole-groundclear,not pattern deletion,not dependent onweather. Very large/zero-axis nativeunsafe
   configurations remain outside supported host perimeter profile. */

void __thiscall FloorManager_SetRestrictedGroundPerimeter(void *this,bool enabled)

{
  int iVar1;
  undefined4 local_4;
  
  if ((*(int *)((int)this + 4) != 0) && (*(char *)(*(int *)((int)this + 4) + 0x4bc) != '\0')) {
    iVar1 = 0;
    local_4 = 0xf000000;
    if (0 < *(int *)((int)this + 8)) {
      do {
        local_4 = CONCAT31(local_4._1_3_,(char)iVar1);
        FloorManager_SetQuarterFlagsRaw(this,enabled,(undefined *)&local_4);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)((int)this + 8));
    }
    iVar1 = 0;
    local_4._1_3_ = CONCAT21(local_4._2_2_,*(char *)((int)this + 0xc) + -1);
    if (0 < *(int *)((int)this + 8)) {
      do {
        local_4._0_1_ = (undefined1)iVar1;
        FloorManager_SetQuarterFlagsRaw(this,enabled,(undefined *)&local_4);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)((int)this + 8));
    }
    iVar1 = 0;
    local_4 = (uint)local_4._1_3_ << 8;
    if (0 < *(int *)((int)this + 0xc)) {
      do {
        local_4._0_2_ = CONCAT11((char)iVar1,(undefined1)local_4);
        FloorManager_SetQuarterFlagsRaw(this,enabled,(undefined *)&local_4);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)((int)this + 0xc));
    }
    iVar1 = 0;
    local_4 = CONCAT31(local_4._1_3_,*(char *)((int)this + 8) + -1);
    if (0 < *(int *)((int)this + 0xc)) {
      do {
        local_4._0_2_ = CONCAT11((char)iVar1,(undefined1)local_4);
        FloorManager_SetQuarterFlagsRaw(this,enabled,(undefined *)&local_4);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)((int)this + 0xc));
    }
  }
  return;
}

