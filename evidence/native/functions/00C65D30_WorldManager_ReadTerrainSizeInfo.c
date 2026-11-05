/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Reads TerrainSizeInfo resource type 90624C1B
   from the current archive context. Header version is UInt16; versions 2..12 consume an extra
   legacy UInt32 after it; versions below 7 may create legacy manager objects in this reader. For
   versions 13/14 the common payload is 39 bytes: UInt16 version; world origins +B4/+B8; tile counts
   +CC/+D0; five UInt32 words; one byte copied to +164. The next phase uses manager-list admission
   rather than enumerating LDES resources. Native code does not restrict the modern branch to 13/14.
   Structure fields and hidden indirect-call arguments remain inferred; Ghidra includes cold blocks
   in the body envelope. */

undefined1 __thiscall
WorldManager_ReadTerrainSizeInfo(void *this,void *resourceReader,uint *headerLoadInfo)

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
  ushort headerVersionWords [2];
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
  this_00 = resourceReader;
  local_3c = 0;
  local_34 = 0;
  headerVersionWords[0] = 0;
  headerVersionWords[1] = 0;
  uStack_40 = (uint)(uint3)uStack_40;
  local_30 = 0;
  local_2c = 0;
  local_28 = (int *)0x0;
  local_24 = (int *)0x0;
  cVar2 = FUN_007d9410(resourceReader,0x90624c1b);
  if (cVar2 == '\0') goto LAB_00c6604c;
  uVar4 = FUN_004dd8e0(*(int **)((int)this_00 + 8),headerVersionWords);
  FUN_007d79f0(this_00,(byte)uVar4);
                    /* Legacy header word is consumed only when unsigned (version-2) <=10, i.e.
                       UInt16 versions 2..12. Versions 13 and 14 therefore share the following
                       common field order. */
  if ((ushort)(headerVersionWords[0] - 2U) < 0xb) {
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&resourceReader);
    FUN_007d79f0(this_00,(byte)uVar4);
  }
  uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xb4));
  FUN_007d79f0(this_00,(byte)uVar4);
  uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xb8));
  FUN_007d79f0(this_00,(byte)uVar4);
  uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xcc));
  FUN_007d79f0(this_00,(byte)uVar4);
  uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0xd0));
  FUN_007d79f0(this_00,(byte)uVar4);
                    /* Unsigned version <7 enters legacy manager creation. Modern versions skip this
                       branch. This establishes the transition threshold, not a whitelist of
                       versions 13 and 14. */
  if (headerVersionWords[0] < 7) {
    local_18 = 0;
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_18);
    FUN_007d79f0(this_00,(byte)uVar4);
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_3c);
    FUN_007d79f0(this_00,(byte)uVar4);
    if (headerVersionWords[0] == 5) {
      local_3c = local_3c + 1;
    }
    else if (headerVersionWords[0] < 4) {
      local_10 = FUN_007cfe00('\0');
      pvVar7 = (void *)FUN_004e4520(0xb8,8,0,"Lot/ObjMgr - Layer",0);
      if (pvVar7 == (void *)0x0) {
        return 0;
      }
      piVar6 = FUN_00aa79b0(pvVar7,this);
      if (piVar6 == (int *)0x0) {
        return 0;
      }
      (**(code **)(*piVar6 + 0x60))(&local_10);
      FUN_00c63e10(piVar6);
      if (uStack_40 != 0) {
        piStack_20 = (int *)0x0;
        do {
          piVar8 = (int *)0x0;
          pvVar7 = (void *)FUN_004e4520(0x4c0,0x10,0,"World/Lot",0);
          if (pvVar7 != (void *)0x0) {
            piVar8 = FUN_00ac0b60(pvVar7,this);
          }
          uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&stack0x00000000);
          FUN_007d79f0(this_00,(byte)uVar4);
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
            FUN_00b27450((void *)((int)this + 0x9c),(int *)&local_24);
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
        FUN_00c65ad0((void *)((int)this + 0x9c),piVar8,(int *)&local_1c);
        piVar6 = local_1c;
      }
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      goto LAB_00c65f51;
    }
    if (local_3c != 0) {
      uVar4 = 0;
      if (local_3c != 0) {
        do {
          if (*(char *)((int)this_00 + 0x14) == '\0') break;
          uVar5 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&resourceReader);
          FUN_007d79f0(this_00,(byte)uVar5);
          uVar5 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&local_14);
          FUN_007d79f0(this_00,(byte)uVar5);
          piVar6 = FUN_00c64000(this,local_14);
          if (piVar6 != (int *)0x0) {
            local_1c = piVar6;
            (**(code **)*piVar6)();
            FUN_00b27450((void *)((int)this + 0x9c),(int *)&local_1c);
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
LAB_00c65f51:
  uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_34);
  FUN_007d79f0(this_00,(byte)uVar4);
  if (*(char *)((int)this_00 + 0x14) == '\0') {
    local_34 = 0;
    *(undefined1 *)((int)this_00 + 0x14) = 1;
  }
  if (4 < headerVersionWords[0]) {
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_30);
    FUN_007d79f0(this_00,(byte)uVar4);
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_2c);
    FUN_007d79f0(this_00,(byte)uVar4);
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&local_28);
    FUN_007d79f0(this_00,(byte)uVar4);
    uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&local_24);
    FUN_007d79f0(this_00,(byte)uVar4);
    if ((((local_30 != 0) && (local_2c != 0)) && (local_28 != (int *)0x0)) &&
       (local_24 != (int *)0x0)) {
      uStack_40 = CONCAT13(1,uVar1);
    }
  }
  if (0xb < headerVersionWords[0]) {
    bVar3 = FUN_004dd890(*(int **)((int)this_00 + 8),&resourceReader);
    FUN_007d79f0(this_00,bVar3);
    *(uint *)((int)this + 0x164) = (uint)resourceReader & 0xff;
  }
  FUN_007d7a70((int)this_00);
LAB_00c6604c:
  *headerLoadInfo = local_3c;
  headerLoadInfo[1] = local_34;
  *(ushort *)(headerLoadInfo + 2) = headerVersionWords[0];
  *(undefined1 *)((int)headerLoadInfo + 10) = uStack_40._3_1_;
  headerLoadInfo[3] = local_30;
  headerLoadInfo[4] = local_2c;
  headerLoadInfo[5] = (uint)local_28;
  headerLoadInfo[6] = (uint)local_24;
  return *(undefined1 *)((int)this_00 + 0x14);
}

