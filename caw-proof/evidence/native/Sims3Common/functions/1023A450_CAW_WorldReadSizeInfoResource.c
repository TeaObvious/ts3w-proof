/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Selects the first database resource of type 0x90624C1B
   through 0x105CC2D0. Reads uint16 version, skips one uint32 for versions 2..12, then reads origin
   X/Z binary32 into +B4/+B8 and world tile counts uint32 into +CC/+D0. Subsequent records are
   version-dependent world/layer metadata. Heightmap sample dimensions do not define these world
   bounds. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

undefined1 __thiscall CAW_WorldReadSizeInfoResource(void *this,void *param_1,uint *param_2)

{
  void *this_00;
  uint3 uVar1;
  char cVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  int *piVar6;
  void *pvVar7;
  int *piVar8;
  int iVar9;
  uint unaff_retaddr;
  undefined4 uStack_40;
  uint local_3c;
  ushort local_38 [2];
  uint local_34;
  uint local_30;
  uint local_2c;
  int *local_28;
  int *local_24;
  int *piStack_20;
  int *local_1c;
  uint local_18;
  wchar_t *local_14;
  undefined8 local_10;
  undefined4 uStack_8;
  
  uVar1 = (uint3)uStack_40;
  this_00 = param_1;
  local_3c = 0;
  local_34 = 0;
  local_38[0] = 0;
  local_38[1] = 0;
  uStack_40 = (uint)(uint3)uStack_40;
  local_30 = 0;
  local_2c = 0;
  local_28 = (int *)0x0;
  local_24 = (int *)0x0;
  cVar2 = CAW_ResourceReaderOpenFirstOfType(param_1,0x90624c1b);
  if (cVar2 == '\0') goto LAB_1023a76c;
  uVar4 = FUN_10912550(*(int **)((int)this_00 + 8),local_38);
  FUN_105ca960(this_00,(byte)uVar4);
  if ((ushort)(local_38[0] - 2U) < 0xb) {
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&param_1);
    FUN_105ca960(this_00,(byte)uVar4);
  }
  uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xb4));
  FUN_105ca960(this_00,(byte)uVar4);
  uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xb8));
  FUN_105ca960(this_00,(byte)uVar4);
  uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xcc));
  FUN_105ca960(this_00,(byte)uVar4);
  uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xd0));
  FUN_105ca960(this_00,(byte)uVar4);
  if (local_38[0] < 7) {
    local_18 = 0;
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),&local_18);
    FUN_105ca960(this_00,(byte)uVar4);
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),&local_3c);
    FUN_105ca960(this_00,(byte)uVar4);
    if (local_38[0] == 5) {
      local_3c = local_3c + 1;
    }
    else if (local_38[0] < 4) {
      local_10 = FUN_105c3710('\0');
      pvVar7 = (void *)FUN_10918ed0(0xb8,8,0,"Lot/ObjMgr - Layer",0);
      if (pvVar7 == (void *)0x0) {
        return 0;
      }
      piVar6 = FUN_1006ce00(pvVar7,this);
      if (piVar6 == (int *)0x0) {
        return 0;
      }
      (**(code **)(*piVar6 + 0x60))(&local_10);
      FUN_10238540(piVar6);
      if (uStack_40 != 0) {
        piStack_20 = (int *)0x0;
        do {
          piVar8 = (int *)0x0;
          pvVar7 = (void *)FUN_10918ed0(0x4c0,0x10,0,"World/Lot",0);
          if (pvVar7 != (void *)0x0) {
            piVar8 = FUN_10086700(pvVar7,this);
          }
          uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&stack0x00000000);
          FUN_105ca960(this_00,(byte)uVar4);
          uStack_8 = 0;
          local_10._4_4_ = unaff_retaddr;
          (**(code **)(*piVar8 + 0x60))((int)&local_10 + 4);
          iVar9 = (**(code **)(*piVar6 + 0x40))();
          if (iVar9 == 2) {
            (**(code **)(*piVar6 + 0x44))(piVar8);
          }
          else {
            local_28 = piVar8;
            (**(code **)*piVar8)();
            FUN_1006d480((void *)((int)this + 0x9c),(int *)&local_24);
            if (local_24 != (int *)0x0) {
              (**(code **)(*local_24 + 4))();
            }
          }
          piStack_20 = (int *)((int)piStack_20 + 1);
        } while (piStack_20 < uStack_40);
      }
      *(int **)((int)this + 0xac) = piVar6;
      piStack_20 = piVar6;
      (**(code **)*piVar6)();
      piVar8 = *(int **)((int)this + 0xa0);
      if (piVar8 < *(int **)((int)this + 0xa4)) {
        *(int **)((int)this + 0xa0) = piVar8 + 1;
        if (piVar8 != (int *)0x0) {
          *piVar8 = (int)piVar6;
          (**(code **)*piVar6)();
        }
      }
      else {
        FUN_1032ad40((void *)((int)this + 0x9c),piVar8,(int *)&local_1c);
        piVar6 = local_1c;
      }
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      goto LAB_1023a671;
    }
    if (local_3c != 0) {
      uVar4 = 0;
      if (local_3c != 0) {
        do {
          if (*(char *)((int)this_00 + 0x14) == '\0') break;
          uVar5 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&param_1);
          FUN_105ca960(this_00,(byte)uVar5);
          uVar5 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&local_14);
          FUN_105ca960(this_00,(byte)uVar5);
          piVar6 = FUN_10238730(this,local_14);
          if (piVar6 != (int *)0x0) {
            local_1c = piVar6;
            (**(code **)*piVar6)();
            FUN_1006d480((void *)((int)this + 0x9c),(int *)&local_1c);
            if (local_1c != (int *)0x0) {
              (**(code **)(*local_1c + 4))();
            }
          }
          uVar4 = uVar4 + 1;
        } while (uVar4 < local_3c);
      }
      *(undefined4 *)((int)this + 0xac) = **(undefined4 **)((int)this + 0x9c);
    }
  }
LAB_1023a671:
  uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),&local_34);
  FUN_105ca960(this_00,(byte)uVar4);
  if (*(char *)((int)this_00 + 0x14) == '\0') {
    local_34 = 0;
    *(undefined1 *)((int)this_00 + 0x14) = 1;
  }
  if (4 < local_38[0]) {
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),&local_30);
    FUN_105ca960(this_00,(byte)uVar4);
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),&local_2c);
    FUN_105ca960(this_00,(byte)uVar4);
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&local_28);
    FUN_105ca960(this_00,(byte)uVar4);
    uVar4 = FUN_10912610(*(int **)((int)this_00 + 8),(uint *)&local_24);
    FUN_105ca960(this_00,(byte)uVar4);
    if ((((local_30 != 0) && (local_2c != 0)) && (local_28 != (int *)0x0)) &&
       (local_24 != (int *)0x0)) {
      uStack_40 = CONCAT13(1,uVar1);
    }
  }
  if (0xb < local_38[0]) {
    bVar3 = FUN_109124b0(*(int **)((int)this_00 + 8),&param_1);
    FUN_105ca960(this_00,bVar3);
    *(uint *)((int)this + 0x164) = (uint)param_1 & 0xff;
  }
  FUN_105ca9e0((int)this_00);
LAB_1023a76c:
  *param_2 = local_3c;
  param_2[1] = local_34;
  *(ushort *)(param_2 + 2) = local_38[0];
  *(undefined1 *)((int)param_2 + 10) = uStack_40._3_1_;
  param_2[3] = local_30;
  param_2[4] = local_2c;
  param_2[5] = (uint)local_28;
  param_2[6] = (uint)local_24;
  return *(undefined1 *)((int)this_00 + 0x14);
}

