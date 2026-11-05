/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a80 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetDoorRoomsImpl [assembly=ScriptCore token=0x06000854; scriptHandle:
   System.UInt64, roomDef: Sims3.SimIFace.eRoomDefinition; return=System.Int32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint * ScriptCore_World__World_GetDoorRoomsImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  uint *puVar1;
  short sVar2;
  int iVar3;
  undefined4 *puVar4;
  void *this;
  void *pvVar5;
  int *piVar6;
  undefined4 *unaff_EBP;
  uint uVar7;
  uint uVar8;
  uint *puVar9;
  uint uVar10;
  float10 fVar11;
  uint uStack_98;
  char acStack_94 [4];
  undefined2 uStack_90;
  undefined1 uStack_8e;
  undefined1 uStack_8d;
  void *pvStack_8c;
  undefined4 *puStack_88;
  uint uStack_84;
  int iStack_80;
  uint *puStack_7c;
  uint *puStack_78;
  char *pcStack_74;
  uint uStack_70;
  float fStack_6c;
  float fStack_68;
  int iStack_64;
  float fStack_60;
  float fStack_5c;
  int iStack_58;
  uint uStack_54;
  float fStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  float fStack_44;
  float fStack_40;
  int iStack_3c;
  float fStack_38;
  float fStack_34;
  int iStack_30;
  char acStack_2c [8];
  void *pvStack_24;
  uint uStack_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  iVar3 = FUN_00937570();
  puVar4 = (undefined4 *)FUN_00937f80(iVar3);
  if (puVar4 != (undefined4 *)0x0) {
    LOCK();
    puVar4[1] = puVar4[1] + 1;
    UNLOCK();
    puStack_88 = puVar4;
    this = (void *)FUN_00934260(puVar4,DAT_011edf08);
    if ((this != (void *)0x0) &&
       (pvVar5 = (void *)FUN_00c8ebb0(DAT_011ee034,puVar4 + 6), pvStack_24 = pvVar5,
       pvVar5 != (void *)0x0)) {
      piVar6 = (int *)FUN_0068f130((int)puVar4);
      if ((piVar6 == (int *)0x0) || (iVar3 = (**(code **)(*piVar6 + 0xc))(0x90566b0e), iVar3 == 0))
      {
        pvStack_8c = (void *)0x0;
      }
      else {
        pvStack_8c = *(void **)(iVar3 + 0x298);
      }
      if (pvStack_8c != (void *)0x0) {
        FUN_00c894e0(this,&fStack_50,&uStack_4c,&uStack_48);
        fStack_1c = fStack_50;
        uStack_18 = uStack_4c;
        uStack_14 = uStack_48;
        fVar11 = FUN_00c89940((float)this);
        uStack_54 = FUN_00afbd00((float)fVar11);
        uVar10 = (*(int *)((int)pvVar5 + 0xd8) - *(int *)((int)pvVar5 + 0xd4)) / 0x28;
        uVar8 = uVar10 + 1 & 0xfffffffe;
        pcStack_74 = "Scripting/WorldHost";
        iStack_80 = 0;
        puStack_78 = (uint *)0x0;
        puStack_7c = (uint *)0x0;
        uStack_98 = uVar10;
        uStack_84 = uVar8;
        FUN_004d5650(&iStack_80,uVar8);
        uVar7 = 0;
        puVar9 = puStack_7c;
        if (uVar10 != 0) {
          do {
            uStack_10 = 0;
            uStack_c = 0;
            uStack_8 = 0;
            uStack_4 = 0;
            fStack_6c = DAT_00fab218;
            fStack_68 = DAT_00fab218;
            iStack_64 = 0;
            fStack_60 = DAT_00fab218;
            fStack_5c = DAT_00fab218;
            iStack_58 = 0;
            FUN_00c979a0(pvStack_24,uVar7,&fStack_6c,&fStack_68,&fStack_60,&fStack_5c,&iStack_64,
                         &uStack_10);
            iStack_58 = iStack_64;
            puVar1 = puStack_7c;
            if (iStack_64 == 0) {
              iStack_3c = iStack_64;
              iStack_30 = iStack_64;
              fStack_44 = fStack_6c;
              fStack_40 = fStack_68;
              fStack_38 = fStack_60;
              fStack_34 = fStack_5c;
              FUN_00c45750(&fStack_44,&uStack_54,&fStack_44,uVar7 >> 1);
              FUN_00c456b0(&fStack_44,&fStack_1c,&fStack_44);
              FUN_00784df0(acStack_2c,&fStack_44,&fStack_38);
              uStack_90._0_1_ = -1;
              uStack_90._1_1_ = 0xff;
              uStack_8e = 0;
              uStack_8d = 0xff;
              acStack_94[0] = -1;
              acStack_94[1] = 0xff;
              acStack_94[2] = 0;
              acStack_94[3] = 0xff;
              FUN_00c45f20(acStack_2c,&uStack_90);
              FUN_00c45fb0((undefined2 *)acStack_2c,(undefined2 *)acStack_94);
              sVar2 = FUN_00b470e0(pvStack_8c,(char *)&uStack_90,param_3,'\0');
              uStack_70 = FUN_00b470e0(pvStack_8c,acStack_94,param_3,'\0');
              uStack_70 = uStack_70 & 0xffff;
              uStack_20 = (uint)sVar2;
              if (puVar9 < puStack_78) {
                puStack_7c = puVar9 + 1;
                if (puVar9 != (uint *)0x0) {
                  *puVar9 = uStack_20;
                }
              }
              else {
                FUN_00982420(&iStack_80,puVar9,&uStack_20);
              }
              uStack_70 = (uint)(short)uStack_70;
              if (puStack_7c < puStack_78) {
                puVar9 = puStack_7c + 1;
                uVar10 = uStack_98;
                puVar1 = puVar9;
                if (puStack_7c != (uint *)0x0) {
                  *puStack_7c = uStack_70;
                }
              }
              else {
                FUN_00982420(&iStack_80,puStack_7c,&uStack_70);
                puVar9 = puStack_7c;
                uVar10 = uStack_98;
                puVar1 = puStack_7c;
              }
            }
            puStack_7c = puVar1;
            uVar7 = uVar7 + 2;
            uVar8 = uStack_84;
          } while (uVar7 < uVar10);
        }
        if (1 < uVar8) {
          piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
          puVar9 = &uStack_98;
          (**(code **)(*piVar6 + 0x8c))(puVar9,uVar8);
          puVar4 = puStack_88;
          (**(code **)(*piVar6 + 0xa4))(&stack0xffffff60,puStack_88,0,uVar8);
          if (puVar4 != (undefined4 *)0x0) {
            FUN_004e44e0((int)puVar4);
          }
          piVar6 = unaff_EBP + 1;
          LOCK();
          iVar3 = *piVar6;
          *piVar6 = *piVar6 + -1;
          UNLOCK();
          if (iVar3 == 1) {
            LOCK();
            *piVar6 = 1;
            UNLOCK();
            (**(code **)*unaff_EBP)(1);
          }
          return puVar9;
        }
        puVar4 = puStack_88;
        if (iStack_80 != 0) {
          FUN_004e44e0(iStack_80);
          puVar4 = puStack_88;
        }
      }
    }
    piVar6 = puVar4 + 1;
    LOCK();
    iVar3 = *piVar6;
    *piVar6 = *piVar6 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar6 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
  }
  return (uint *)0x0;
}

