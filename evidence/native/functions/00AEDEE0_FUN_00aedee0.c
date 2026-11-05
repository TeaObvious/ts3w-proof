/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX terrain receiver; FOUR physical words coordinate-vector, modeword(lowbyte), height-delta vector, pond-delta vector; RET10. Genuine C wrongly types mode as pointer. Clears vector ends/record state then C590 admissions; mode0 sets pond bit and record flag4, mode!=0 callsC710. DD50 then C9D0 then CD90 order. Parent emits16byte x/z/old/new height changes with unordered-aware inequality and3byte x/z/old-pond-bit changes;12byte x/z/new event payload goes via tag05FF543B and lot+2C8 dirty8. Allocation/reference/child dispatcher semantics not made safe by guessed OOM or high-level names. C590/C710/DD50/C9D0/CD90/full event reader/historical undo semantics remain exact open paths. */
void __thiscall
FUN_00aedee0(void *this,int *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  uint *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined2 *puVar5;
  undefined2 uVar6;
  bool bVar8;
  byte bVar7;
  int iVar9;
  float *pfVar10;
  undefined4 *puVar11;
  int *piVar12;
  int iVar13;
  byte *pbVar14;
  int iVar15;
  int *piVar16;
  int local_1c;
  int local_18;
  int local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  param_3[1] = *param_3;
  param_4[1] = *param_4;
  *(undefined4 *)((int)this + 0x104) = *(undefined4 *)((int)this + 0x100);
  FUN_0073ebe0(*(int *)((int)this + 0x114),*(uint *)((int)this + 0x118));
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined4 *)((int)this + 0x148) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x144) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x150) = 0x80000000;
  *(undefined4 *)((int)this + 0x14c) = 0x80000000;
  piVar16 = (int *)param_1[1];
  for (piVar12 = (int *)*param_1; piVar12 != piVar16; piVar12 = piVar12 + 2) {
    iVar9 = FUN_00aec590(this,*piVar12,piVar12[1],1);
    if ((char)param_2 == '\0') {
      iVar15 = *(int *)((int)this + 0x100);
      iVar13 = *(int *)(*(int *)((int)this + 0xcc) + 8) * *piVar12 + piVar12[1];
      pbVar14 = (byte *)((iVar13 >> 3) + *(int *)(*(int *)((int)this + 0xcc) + 0xc));
      *pbVar14 = *pbVar14 | '\x01' << ((byte)iVar13 & 7);
      puVar1 = (uint *)(iVar15 + iVar9 * 0x18 + 0x14);
      *puVar1 = *puVar1 | 4;
    }
  }
  if ((char)param_2 != '\0') {
    FUN_00aec710(this);
  }
  FUN_00aedd50(this);
  iVar9 = (*(int *)((int)this + 0x104) - *(int *)((int)this + 0x100)) / 0x18;
  if (0 < iVar9) {
    iVar15 = 0;
    do {
      uVar2 = *(uint *)(*(int *)((int)this + 0x100) + 0x14 + iVar15);
      pfVar10 = (float *)(*(int *)((int)this + 0x100) + iVar15);
      if ((uVar2 & 1) == 0) {
        if ((uVar2 & 4) == 0) {
          pfVar10[5] = (float)(uVar2 | 1);
        }
        else {
          FUN_00aec9d0(this,pfVar10,(char)param_2 == '\0');
        }
      }
      iVar15 = iVar15 + 0x18;
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
  }
  FUN_00aecd90(this);
  param_1 = FloorMessagePool_AcquireStorage();
  if (param_1 == (int *)0x0) {
    param_1 = (int *)0x0;
  }
  else {
    *param_1 = (int)&PTR_FUN_01065f8c;
    LOCK();
    param_1[1] = 0;
    UNLOCK();
    *param_1 = (int)&PTR_FUN_0106ddf0;
    param_1[4] = 0;
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = (int)"Lot/MessageData";
    (**(code **)(*param_1 + 4))();
  }
  iVar9 = *(int *)((int)this + 4);
  param_1[2] = *(int *)(iVar9 + 0x48);
  param_1[3] = *(int *)(iVar9 + 0x4c);
  iVar9 = param_1[4];
  uVar2 = (*(int *)((int)this + 0x104) - *(int *)((int)this + 0x100)) / 0x18;
  if ((uint)((param_1[6] - iVar9) / 0xc) < uVar2) {
    iVar15 = param_1[5];
    if (uVar2 == 0) {
      param_2 = (undefined4 *)0x0;
    }
    else {
      param_2 = (undefined4 *)FUN_004e4500(uVar2 * 0xc,param_1[7],0);
    }
    if (iVar9 != iVar15) {
      iVar9 = iVar9 - (int)param_2;
      puVar11 = param_2;
      do {
        if (puVar11 != (undefined4 *)0x0) {
          *puVar11 = *(undefined4 *)((int)puVar11 + iVar9);
          puVar11[1] = *(undefined4 *)((int)puVar11 + iVar9 + 4);
          puVar11[2] = *(undefined4 *)((int)puVar11 + iVar9 + 8);
        }
        puVar11 = puVar11 + 3;
      } while ((int)puVar11 + iVar9 != iVar15);
    }
    if ((void *)param_1[4] != (void *)0x0) {
      Memory_FreeIfNonNull((void *)param_1[4]);
    }
    iVar9 = param_1[4];
    param_1[4] = (int)param_2;
    param_1[5] = (int)(param_2 + ((param_1[5] - iVar9) / 0xc) * 3);
    param_1[6] = (int)(param_2 + uVar2 * 3);
  }
  piVar12 = *(int **)((int)this + 0x104);
  puVar11 = param_3;
  for (piVar16 = *(int **)((int)this + 0x100); param_3 = puVar11, piVar16 != piVar12;
      piVar16 = piVar16 + 6) {
    if ((float)piVar16[4] != (float)piVar16[3]) {
      local_c = 0;
      local_8 = 0;
      local_4 = 0;
      puVar3 = (undefined4 *)puVar11[1];
      local_10 = 0;
      if (puVar3 < (undefined4 *)puVar11[2]) {
        puVar11[1] = puVar3 + 4;
        if (puVar3 != (undefined4 *)0x0) {
          *puVar3 = 0;
          puVar3[1] = 0;
          puVar3[2] = 0;
          puVar3[3] = 0;
        }
      }
      else {
        FUN_00cca0b0(puVar11,puVar3,&local_10);
      }
      iVar9 = puVar11[1];
      *(int *)(iVar9 + -0x10) = *piVar16;
      *(int *)(iVar9 + -0xc) = piVar16[1];
      *(int *)(iVar9 + -8) = piVar16[3];
      *(int *)(iVar9 + -4) = piVar16[4];
      piVar4 = (int *)param_1[5];
      local_1c = *piVar16;
      local_18 = piVar16[1];
      local_14 = piVar16[4];
      if (piVar4 < (int *)param_1[6]) {
        param_1[5] = (int)(piVar4 + 3);
        if (piVar4 != (int *)0x0) {
          *piVar4 = local_1c;
          piVar4[1] = local_18;
          piVar4[2] = local_14;
        }
      }
      else {
        FUN_00d700a0(param_1 + 4,piVar4,&local_1c);
      }
    }
    iVar9 = *(int *)(*(int *)((int)this + 0xcc) + 8) * *piVar16 + piVar16[1];
    bVar7 = (byte)((uint)piVar16[5] >> 1);
    bVar8 = (bool)(bVar7 & 1);
    if (bVar8 != ((*(byte *)((iVar9 >> 3) + *(int *)(*(int *)((int)this + 0xcc) + 0xc)) &
                  '\x01' << ((byte)iVar9 & 7)) != 0)) {
      uVar6 = CONCAT11((char)piVar16[1],(char)*piVar16);
      puVar5 = (undefined2 *)param_4[1];
      param_2 = (undefined4 *)(CONCAT13(param_2._3_1_,CONCAT12(bVar7,uVar6)) & 0xff01ffff);
      if (puVar5 < (undefined2 *)param_4[2]) {
        param_4[1] = (int)puVar5 + 3;
        if (puVar5 != (undefined2 *)0x0) {
          *puVar5 = uVar6;
          *(bool *)(puVar5 + 1) = bVar8;
        }
      }
      else {
        FUN_00aeba20(param_4,puVar5,(undefined2 *)&param_2);
      }
    }
    puVar11 = param_3;
  }
  if (param_1[4] != param_1[5]) {
    piVar12 = (int *)MessageDispatch_GetCurrent();
    (**(code **)(*piVar12 + 0x1c))(0x5ff543b,param_1,0,0);
    iVar9 = *(int *)(*(int *)((int)this + 4) + 0x2c8);
    if (iVar9 != 0) {
      *(undefined1 *)(iVar9 + 8) = 1;
    }
  }
  (**(code **)(*param_1 + 8))();
  return;
}

