/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot; no stack arguments; plain RET. When floor manager +290 exists, calls A96AC0 with two
   extrema outputs and force false. Stores local extrema +188/+18C and separately adds originY to
   base bounds Y at +234/+244, marks +270 dirty, then performs the existing callbacks/messages.
   Callback and mask-producer policy are separate. */

void __fastcall Lot_RefreshFloorHeightBounds(int param_1)

{
  undefined4 *puVar1;
  float fVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 *puVar8;
  double dVar9;
  float local_84;
  float local_80;
  float local_7c;
  undefined4 *local_78;
  int local_74;
  undefined4 local_70;
  float fStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined **local_60;
  undefined **ppuStack_5c;
  undefined **ppuStack_58;
  undefined **ppuStack_54;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined **local_30 [2];
  ushort local_28;
  undefined2 local_26;
  
  if (*(void **)(param_1 + 0x290) != (void *)0x0) {
    FloorManager_ComputeCachedHeightExtrema(*(void **)(param_1 + 0x290),&local_84,&local_80,'\0');
    local_70 = *(undefined4 *)(param_1 + 0x16c);
    uStack_68 = *(undefined4 *)(param_1 + 0x170);
    puVar1 = (undefined4 *)(param_1 + 0x230);
    *puVar1 = *(undefined4 *)(param_1 + 0x164);
    *(float *)(param_1 + 0x234) = *(float *)(param_1 + 0x194) + local_84;
    *(undefined4 *)(param_1 + 0x238) = *(undefined4 *)(param_1 + 0x168);
    *(undefined4 *)(param_1 + 0x23c) = *(undefined4 *)(param_1 + 0x164);
    fStack_6c = *(float *)(param_1 + 0x194) + local_80;
    *(undefined4 *)(param_1 + 0x240) = local_70;
    *(float *)(param_1 + 0x244) = fStack_6c;
    *(undefined4 *)(param_1 + 0x248) = uStack_68;
    *(undefined4 *)(param_1 + 0x24c) = local_70;
    *(float *)(param_1 + 0x18c) = local_80;
    *(undefined1 *)(param_1 + 0x270) = 1;
    *(float *)(param_1 + 0x188) = local_84;
    fVar2 = *(float *)(param_1 + 0x234);
    local_40 = (float)(~-(uint)(fVar2 < 0.0) & DAT_00fe457c | DAT_00fe4578 & -(uint)(fVar2 < 0.0));
    fStack_3c = (float)(~-(uint)(fVar2 < 0.0) & DAT_00fe457c | DAT_00fe4578 & -(uint)(fVar2 < 0.0));
    fStack_38 = (float)(~-(uint)(fVar2 < 0.0) & DAT_00fe457c | DAT_00fe4578 & -(uint)(fVar2 < 0.0));
    fStack_34 = (float)(~-(uint)(fVar2 < 0.0) & DAT_00fe457c | DAT_00fe4578 & -(uint)(fVar2 < 0.0));
    local_40 = (fVar2 - local_40) + local_40;
    fStack_3c = (fVar2 - fStack_3c) + fStack_3c;
    fStack_38 = (fVar2 - fStack_38) + fStack_38;
    fStack_34 = (fVar2 - fStack_34) + fStack_34;
    local_60 = *(undefined ***)(param_1 + 0x244);
    local_74 = param_1 + 0x240;
    local_40 = local_40 - (float)(-(uint)(fVar2 < local_40) & (uint)FLOAT_00f998f8);
    fStack_3c = fStack_3c - (float)(-(uint)(fVar2 < fStack_3c) & (uint)FLOAT_00f998f8);
    fStack_38 = fStack_38 - (float)(-(uint)(fVar2 < fStack_38) & (uint)FLOAT_00f998f8);
    fStack_34 = fStack_34 - (float)(-(uint)(fVar2 < fStack_34) & (uint)FLOAT_00f998f8);
    local_78 = puVar1;
    uStack_64 = local_70;
    ppuStack_5c = local_60;
    ppuStack_58 = local_60;
    ppuStack_54 = local_60;
    dVar9 = ceil((double)(float)local_60);
    local_7c = (float)dVar9;
    local_40 = local_7c - local_40;
    fStack_3c = local_7c - fStack_3c;
    fStack_38 = local_7c - fStack_38;
    fStack_34 = local_7c - fStack_34;
    FUN_00a8b2d0(*(void **)(param_1 + 0x290),(int)local_40);
    local_70 = *(undefined4 *)(param_1 + 0x48);
    fStack_6c = *(float *)(param_1 + 0x4c);
    local_30[0] = &PTR_FUN_00fba6f4;
    local_28 = 0;
    local_26 = 0;
    Variant_AssignUInt64(local_30,(ulonglong *)&local_70);
    World_DispatchRegisteredEventCallback(&local_60,0xf,local_30,1);
    local_60 = &PTR_FUN_00fba6f4;
    if (((uint)ppuStack_58 & 4) != 0) {
      FUN_004f5760(&local_60,'\0');
    }
    puVar6 = FloorMessagePool_AcquireStorage();
    puVar8 = (undefined4 *)0x0;
    if (puVar6 != (undefined4 *)0x0) {
      *puVar6 = &PTR_FUN_01065f8c;
      LOCK();
      puVar6[1] = 0;
      UNLOCK();
      *puVar6 = &PTR_FUN_01065f8c;
      puVar8 = puVar6;
    }
    puVar8[2] = *(undefined4 *)(param_1 + 0x48);
    puVar8[3] = *(undefined4 *)(param_1 + 0x4c);
    uVar3 = *(undefined4 *)(param_1 + 0x234);
    uVar4 = *(undefined4 *)(param_1 + 0x238);
    uVar5 = *(undefined4 *)(param_1 + 0x23c);
    puVar8[4] = *puVar1;
    puVar8[5] = uVar3;
    puVar8[6] = uVar4;
    puVar8[7] = uVar5;
    uVar3 = *(undefined4 *)(param_1 + 0x244);
    uVar4 = *(undefined4 *)(param_1 + 0x248);
    uVar5 = *(undefined4 *)(param_1 + 0x24c);
    puVar8[8] = *(undefined4 *)(param_1 + 0x240);
    puVar8[9] = uVar3;
    puVar8[10] = uVar4;
    puVar8[0xb] = uVar5;
    if ((*(char *)(param_1 + 0xc9) == '\0') && (*(int *)(param_1 + 0x364) != 0)) {
      piVar7 = (int *)MessageDispatch_GetCurrent();
      if (piVar7 != (int *)0x0) {
        (**(code **)(*piVar7 + 0x1c))(0xed57ccd,puVar8,0);
      }
    }
    local_30[0] = &PTR_FUN_00fba6f4;
    if ((local_28 & 4) != 0) {
      FUN_004f5760(local_30,'\0');
    }
  }
  return;
}

