/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161eb8 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_SetRigImpl [assembly=ScriptCore token=0x06000D76; objGuid:
   Sims3.SimIFace.ObjectGuid, rigKey: Sims3.SimIFace.ResourceKey; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.SACS::SACS_SetRigImpl(void)

{
  int *piVar1;
  char cVar2;
  int iVar3;
  undefined4 *puVar4;
  void *pvVar5;
  undefined4 uVar6;
  undefined1 *this;
  undefined1 *puVar7;
  undefined4 *puVar8;
  int *local_f4;
  undefined4 *local_f0;
  void *local_ec;
  undefined1 *local_e8;
  undefined1 *local_e4;
  undefined1 *local_e0;
  char *local_dc;
  void *local_d8;
  int local_d4 [5];
  char cStack_c0;
  undefined1 uStack_bf;
  float *pfStack_bc;
  undefined4 uStack_b8;
  void *pvStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  char local_70;
  undefined1 uStack_6f;
  int iStack_6c;
  void *local_68;
  void *pvStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20 [7];
  
  iVar3 = FUN_00937570();
  puVar4 = (undefined4 *)FUN_00937f80(iVar3);
  this = (undefined1 *)0x0;
  if (puVar4 == (undefined4 *)0x0) {
    return 0xfffffff7;
  }
  piVar1 = puVar4 + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  local_f0 = puVar4;
  local_ec = (void *)FUN_00934260(puVar4,DAT_011dd484);
  if (local_ec == (void *)0x0) {
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
    return 0xfffffff8;
  }
  local_e8 = (undefined1 *)0x0;
  local_e4 = (undefined1 *)0x0;
  local_e0 = (undefined1 *)0x0;
  local_dc = "Animation/SetRig/slotRecords";
  local_d8 = (void *)FUN_00934260(puVar4,DAT_011ea114);
  if (local_d8 != (void *)0x0) {
    FUN_00951890(local_d8,local_d4);
    iVar3 = FUN_00950f40(local_d4);
    cVar2 = (char)iVar3;
    while (puVar7 = local_e8, cVar2 != '\0') {
      local_f4 = (int *)0x0;
      pvVar5 = (void *)FUN_009503d0(local_d4,&local_f4);
      puVar7 = this;
      local_68 = pvVar5;
      if (local_f4 != (int *)0x0) {
        uVar6 = FUN_009503f0((int)local_d4);
        local_70 = (char)uVar6;
        iVar3 = (**(code **)(*local_f4 + 8))(3);
        if ((iVar3 == 0) || (uStack_6f = 1, pvVar5 != *(void **)(iVar3 + 0x1c))) {
          uStack_6f = 0;
        }
        if ((char)uVar6 == '\0') {
          iStack_6c = local_f4[1];
        }
        else {
          iStack_6c = FUN_009de7f0((int)local_f4);
        }
        puVar4 = local_f0;
        if ((pvVar5 != (void *)0x0) &&
           (pvVar5 = (void *)FUN_00934260(pvVar5,DAT_011ea158), puVar4 = local_f0,
           pvVar5 != (void *)0x0)) {
          puVar4 = (undefined4 *)FUN_009560e0(pvVar5,(uint *)&cStack_c0);
          uStack_60 = *puVar4;
          uStack_5c = puVar4[1];
          uStack_58 = puVar4[2];
          uStack_54 = puVar4[3];
          uStack_50 = puVar4[4];
          uStack_4c = puVar4[5];
          uStack_48 = puVar4[6];
          uStack_44 = puVar4[7];
          uStack_40 = puVar4[8];
          uStack_3c = puVar4[9];
          uStack_38 = puVar4[10];
          uStack_34 = puVar4[0xb];
          uStack_30 = puVar4[0xc];
          uStack_2c = puVar4[0xd];
          uStack_28 = puVar4[0xe];
          uStack_24 = puVar4[0xf];
          pvStack_64 = pvVar5;
          if (this < local_e0) {
            puVar7 = this + 0x50;
            puVar4 = local_f0;
            local_e4 = puVar7;
            if (this != (undefined1 *)0x0) {
              FUN_00767590(this,&local_70);
              puVar4 = local_f0;
            }
          }
          else {
            FUN_00768b40(&local_e8,this,&local_70);
            puVar4 = local_f0;
            puVar7 = local_e4;
          }
        }
      }
      iVar3 = FUN_00950f40(local_d4);
      this = puVar7;
      cVar2 = (char)iVar3;
    }
    for (; puVar7 != this; puVar7 = puVar7 + 0x50) {
      FUN_009595b0(*(void **)(puVar7 + 0xc));
    }
  }
  pvVar5 = local_d8;
  FUN_0076c0e0(&stack0x0000000c,local_20);
  FUN_0093eb00(local_ec,local_20);
  if ((pvVar5 != (void *)0x0) && (iVar3 = ((int)this - (int)local_e8) / 0x50, iVar3 != 0)) {
    puVar8 = (undefined4 *)(local_e8 + 0x30);
    do {
      cStack_c0 = *(char *)(puVar8 + -0xc);
      uStack_bf = *(undefined1 *)((int)puVar8 + -0x2f);
      pfStack_bc = (float *)puVar8[-0xb];
      uStack_b8 = puVar8[-10];
      pvStack_b4 = (void *)puVar8[-9];
      uStack_b0 = puVar8[-8];
      uStack_ac = puVar8[-7];
      uStack_a8 = puVar8[-6];
      uStack_a4 = puVar8[-5];
      uStack_a0 = puVar8[-4];
      uStack_9c = puVar8[-3];
      uStack_98 = puVar8[-2];
      uStack_94 = puVar8[-1];
      uStack_90 = *puVar8;
      uStack_8c = puVar8[1];
      uStack_88 = puVar8[2];
      uStack_84 = puVar8[3];
      uStack_80 = puVar8[4];
      uStack_7c = puVar8[5];
      uStack_78 = puVar8[6];
      uStack_74 = puVar8[7];
      if (cStack_c0 == '\0') {
        FUN_00959e90(pvStack_b4,puVar4,pfStack_bc,(char)&uStack_b0);
      }
      else {
        FUN_00959f10(pvStack_b4,puVar4,pfStack_bc,(char)&uStack_b0);
      }
      puVar8 = puVar8 + 0x14;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  if (local_e8 != (undefined1 *)0x0) {
    FUN_004e44e0((int)local_e8);
  }
  piVar1 = puVar4 + 1;
  LOCK();
  iVar3 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar3 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*puVar4)(1);
  }
  return 0;
}

