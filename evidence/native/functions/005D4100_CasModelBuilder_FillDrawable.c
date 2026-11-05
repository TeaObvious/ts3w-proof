/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 character UV stream contract. Name grounded in original debug literal
   CAS/ModelBuilder/FillDrawable. ECX builder+one stack workRecord, RET4, returnsAL1 after cleanup,
   not fullEAX1. Work+20 selects builder+134 records strideD0; bindingflags+0C choose weight lanes2
   ifbits60 else1 ifsignedlowbyte else4. Parts stride50, source atpart+10 accepted onlylow2bits0.
   Whileworkbyte42: builds requested attrs5D3680 (unexpanded), calls5D19A0 with worklow16stride+40,
   workdst+38, firstBoundsbyte(initial1), binding+40bounds,+78map, weightlanes,
   part+30offset,+40scale, positionoffsetbyte, auxiliarycursor, worklowbyte45; stores
   returnedendwork+38. Then5C99E0 indexpack and accumulates sourcevertexcount via virtual34. Saves
   and restores initial vertex/index cursorswork+38/+34 after optional5D22F0/5C9940 processing;
   LOCKXADD publishes total atbuilder+1AC. Fur/deferred/final resource callbacks and complete
   lifecycle/admission remain unexpanded. A tagged source becomesNULL before immediate packer use;
   this caller alone does not prove such input safely skipped. */

bool __thiscall CasModelBuilder_FillDrawable(void *this,byte *workRecord)

{
  byte *pbVar1;
  byte *pbVar2;
  int *piVar3;
  short *psVar4;
  uint uVar5;
  void *pvVar6;
  void *pvVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  uint uVar11;
  undefined4 local_34;
  uint local_30;
  void *local_2c;
  int local_28;
  byte local_24 [4];
  void *local_20;
  ushort *local_1c;
  uint local_18;
  int local_14;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  pbVar1 = workRecord;
  iVar8 = *(int *)(workRecord + 0x20) * 0xd0 + *(int *)((int)this + 0x134);
  local_30 = 4;
  if ((*(uint *)(iVar8 + 0xc) & 0x60) == 0) {
    if ((char)*(uint *)(iVar8 + 0xc) < '\0') {
      local_30 = 1;
    }
  }
  else {
    local_30 = 2;
  }
  local_28 = *(int *)(iVar8 + 0xa8);
  local_20 = *(void **)(workRecord + 0x38);
  iVar9 = *(int *)(iVar8 + 0xa4);
  local_1c = *(ushort **)(workRecord + 0x34);
  local_34 = 0;
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_2c = (void *)0x0;
  local_18 = (uint)*(ushort *)(workRecord + 0x20);
  workRecord = (byte *)CONCAT31(workRecord._1_3_,1);
  local_4 = "CAS/ModelBuilder/FillDrawable";
  FUN_006260b0((void *)((int)this + 0x34),&local_14,(ushort *)&local_18);
  if (local_14 != (int)this + 0x38) {
    local_2c = *(void **)(*(int *)(local_14 + 0x1c) + 8);
  }
  if (iVar9 != local_28) {
    do {
      if (pbVar1[0x42] != 0) {
        DwordVector_CopyAssign_5D3680(&local_10,(int *)(pbVar1 + 8));
        if ((*(uint *)(iVar9 + 0x10) & 3) == 0) {
          pvVar7 = *(void **)(iVar9 + 0x10);
        }
        else {
          pvVar7 = (void *)0x0;
        }
        pbVar2 = VertexStreams_PackRequestedAttributes
                           (pvVar7,&local_10,*(ushort *)(pbVar1 + 0x40),*(byte **)(pbVar1 + 0x38),
                            (byte *)&workRecord,(float *)(iVar8 + 0x40),(void *)(iVar8 + 0x78),
                            local_30,(float *)(iVar9 + 0x30),(float *)(iVar9 + 0x40),local_24,
                            &local_2c,pbVar1[0x45]);
        *(byte **)(pbVar1 + 0x38) = pbVar2;
        if ((*(uint *)(iVar9 + 0x10) & 3) == 0) {
          piVar3 = *(int **)(iVar9 + 0x10);
        }
        else {
          piVar3 = (int *)0x0;
        }
        psVar4 = FUN_005c99e0(piVar3,*(short **)(pbVar1 + 0x34),(short)local_34);
        *(short **)(pbVar1 + 0x34) = psVar4;
        uVar5 = (**(code **)(**(int **)(iVar9 + 0x10) + 0x34))(*(int **)(iVar9 + 0x10));
        local_34 = local_34 + uVar5;
      }
      iVar9 = iVar9 + 0x50;
    } while (iVar9 != local_28);
  }
  pvVar7 = local_20;
  if ((pbVar1[0x42] != 0) && (pbVar1[0x44] != 0)) {
    FUN_005d22f0(local_1c,(int)local_20,*(uint *)(*(int *)(pbVar1 + 0x30) + 0x18),local_34,
                 *(ushort *)(pbVar1 + 0x40),local_24[0]);
    pvVar6 = FUN_005c9940(pvVar7,local_34,*(ushort *)(pbVar1 + 0x40),(ushort)local_24[0],
                          (int *)&local_2c);
    *(void **)(pbVar1 + 0x38) = pvVar6;
  }
  *(void **)(pbVar1 + 0x38) = pvVar7;
  *(ushort **)(pbVar1 + 0x34) = local_1c;
  if ((pbVar1[0x42] != 0) && ((*(uint *)(iVar8 + 0xc) & 0x40000) != 0)) {
    piVar3 = *(int **)((int)this + 0x28);
    local_30 = 1;
    if (piVar3 != (int *)((int)this + 0x28)) {
      do {
        uVar5 = *(uint *)((int)this + 0x2f0);
        piVar10 = (int *)0x0;
        local_1c = (ushort *)(piVar3 + 2);
        uVar11 = local_30;
        if (DAT_011d4c84 != (int *)0x0) {
          (**(code **)(*DAT_011d4c84 + 0x38))
                    (local_24 + -0x2c,local_1c,&LAB_005e56d0,ResourceCallback_InvokeVirtual04,1,0,0)
          ;
        }
        FUN_005cd970(this,(int)pbVar1,piVar10,uVar11,uVar5);
        piVar3 = (int *)*piVar3;
        local_30 = local_30 + 1;
      } while (piVar3 != (int *)((int)this + 0x28));
    }
  }
  LOCK();
  *(int *)((int)this + 0x1ac) = *(int *)((int)this + 0x1ac) + local_34;
  UNLOCK();
  if ((pbVar1[0x42] != 0) && (pbVar1[0x43] == 0)) {
    FUN_005cf0d0(*(undefined4 *)(pbVar1 + 0x18),*(undefined4 *)(pbVar1 + 0x1c),
                 *(int **)(pbVar1 + 0x24),*(int **)(pbVar1 + 0x30),*(int **)(pbVar1 + 0x28),
                 (undefined4 *)(iVar8 + 0x40));
  }
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return true;
}

