/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Reads terrain header and chunk owners. Raw/editor mode
   reads the uint16 height map; authored collision mode requests resource0x033B2B66 group1
   instance(startZ*65536+startX), installing each KD shape with half-height-range placement. Raw
   mode later uses0x1025AD60 to generate adaptive collision. Do not substitute one shape mode merely
   because both can answer height queries. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __thiscall CAW_LoadTerrainDataForMode(void *this,int *param_1,uint param_2,char param_3)

{
  undefined4 *puVar1;
  bool bVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  uint3 extraout_var;
  int *piVar6;
  int *piVar7;
  uint uVar8;
  uint3 extraout_var_00;
  uint3 uVar10;
  undefined4 uVar9;
  int *local_9c;
  ushort auStack_98 [2];
  int *piStack_94;
  ushort auStack_90 [2];
  float fStack_8c;
  undefined1 auStack_88 [20];
  undefined1 uStack_74;
  int iStack_70;
  int iStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined1 auStack_38 [24];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  puVar1 = *(undefined4 **)((int)this + 8);
  *(char *)((int)this + 0x1c) = param_3;
  *(undefined1 *)((int)this + 0x1f) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    piVar4 = puVar1 + 1;
    LOCK();
    iVar5 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      if (puVar1 != (undefined4 *)0x0) {
        (**(code **)*puVar1)(1);
      }
    }
    *(undefined4 *)((int)this + 8) = 0;
  }
  bVar2 = false;
  local_9c = param_1;
  piVar4 = (int *)FUN_108e50d0();
  if (param_3 != '\0') {
    uStack_48 = 1;
    uStack_44 = 0;
    uStack_40 = 0x9063660d;
    uStack_3c = 0;
    piVar4 = (int *)(**(code **)(*piVar4 + 0x44))(&uStack_48);
    if ((piVar4 != (int *)0x0) &&
       (local_9c = piVar4, iVar5 = (**(code **)(*piVar4 + 0xc))(), iVar5 == 0x3db0260)) {
      FUN_105ca890(auStack_38,param_1,param_2);
      cVar3 = CAW_ResourceReaderOpenFirstOfType(auStack_38,0x9063660d);
      if (cVar3 != '\0') {
        auStack_90[0] = 0xffff;
        auStack_90[1] = 0;
        FUN_10110910(auStack_38,auStack_90);
        FUN_105ca9e0((int)auStack_38);
        if (auStack_90[0] < 0xb) {
          bVar2 = true;
        }
      }
      FUN_105ca900((int)auStack_38);
    }
  }
  cVar3 = CAW_TerrainReadHeaderAndChunkIndex(this,local_9c,param_2,param_3,auStack_98);
  uVar10 = extraout_var;
  if (cVar3 == '\0') goto LAB_101ffe4f;
  FUN_105ca890(auStack_88,param_1,param_2);
  if (param_3 == '\0') {
    uVar9 = FUN_101fa6d0(this,param_1,param_2,'\0');
    if ((char)uVar9 != '\0') {
      uVar8 = FUN_101fa170(this,param_1,param_2);
      if ((char)uVar8 == '\0') {
        FUN_105ca960(auStack_88,0);
        uStack_74 = 0;
        uVar8 = FUN_105ca900((int)auStack_88);
        return uVar8 & 0xffffff00;
      }
      goto LAB_101ffe85;
    }
  }
  else {
    piVar6 = (int *)FUN_108e50d0();
    piVar4 = *(int **)((int)this + 0xac);
    piStack_94 = *(int **)((int)this + 0xb0);
    if (piVar4 != piStack_94) {
      do {
        iStack_70 = piVar4[1] * 0x10000 + *piVar4;
        iStack_6c = iStack_70 >> 0x1f;
        uStack_68 = 0x33b2b66;
        uStack_64 = 1;
        local_9c = (int *)0x0;
        cVar3 = (**(code **)(*piVar6 + 0x18))(&iStack_70,&local_9c,0,0,0,0);
        if (cVar3 == '\0') {
          if (local_9c != (int *)0x0) {
            (**(code **)(*local_9c + 4))();
          }
          goto LAB_101ffe4a;
        }
        if (local_9c != (int *)0x0) {
          piVar7 = (int *)(**(code **)(*local_9c + 0xc))(0x33b2b66);
          if (piVar7 != (int *)0x0) {
            fStack_8c = (float)*(int *)((int)this + 0x34);
            fStack_54 = DAT_10aae18c;
            fStack_58 = DAT_10aae18c;
            if (*(int *)((int)this + 0x34) < 0) {
              fStack_8c = fStack_8c + _DAT_10aae190;
            }
            fStack_8c = fStack_8c * _DAT_10b310ec;
            fStack_60 = DAT_10aae18c;
            fStack_20 = DAT_10aae18c;
            fStack_18 = DAT_10aae18c;
            fStack_14 = DAT_10aae18c;
            fStack_5c = fStack_8c;
            fStack_1c = fStack_8c;
            CAW_TerrainPublishSectorCollision(this,*piVar4,piVar4[1],piVar7,(int *)0x0,&fStack_20);
          }
          if (local_9c != (int *)0x0) {
            (**(code **)(*local_9c + 4))();
          }
        }
        piVar4 = piVar4 + 0x1c;
      } while (piVar4 != piStack_94);
    }
    if (auStack_98[0] < 0xb) {
      uVar8 = FUN_101fa170(this,param_1,param_2);
      if ((char)uVar8 == '\0') {
LAB_101ffe17:
        FUN_105ca960(auStack_88,0);
        uStack_74 = 0;
        uVar8 = FUN_105ca900((int)auStack_88);
        return uVar8 & 0xffffff00;
      }
    }
    else {
      cVar3 = FUN_101fd0d0(this,param_1,param_2);
      if (cVar3 == '\0') goto LAB_101ffe4a;
      if ((bVar2) && (uVar8 = FUN_101fa170(this,param_1,param_2), (char)uVar8 == '\0'))
      goto LAB_101ffe17;
      *(undefined1 *)((int)this + 0x1f) = 1;
    }
LAB_101ffe85:
    uVar9 = FUN_101fa0a0(this,auStack_88);
    if ((char)uVar9 != '\0') {
      uVar9 = FUN_105ca900((int)auStack_88);
      return CONCAT31((int3)((uint)uVar9 >> 8),1);
    }
  }
LAB_101ffe4a:
  FUN_105ca900((int)auStack_88);
  uVar10 = extraout_var_00;
LAB_101ffe4f:
  return (uint)uVar10 << 8;
}

