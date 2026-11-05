/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Allocates/zeros one
   UInt64 drawn column per lot width, scans x then z and invokes virtual98 for existing
   feature/mask. Each admitted tile sets its bit; exact x/z/mask fade record is on with timer
   bits40800000 (4.0), so first advance writes full alpha. Marks geometry dirty even for an empty
   scan. Feature state comes from native lot data, not managed PuddleManager policy.
   
   Additional PC1.67 actualpuddleconsumerclosure: PuddleGeometry_Construct
   installs106FB50whosevirtual98=B6DD00. That helperasksA80F30withflags1andrawmaskoutput, NO
   gameplaymaskintersection gate. Thus flag1/mask0stillcreatesaninitialdrawnentry/fade withrawmask0,
   despitegameplayHasPuddle(maskFFFF)false. NativeperlevelwalkXthenZ stable; geometry-dirty
   setevenempty. Existing fade/timer4contractunchanged. */

void __thiscall FloorFeatureGeometry_InitializeDrawnTiles(void *this,int param_1,undefined1 param_2)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  char cVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  byte bVar7;
  int iVar8;
  uint uVar9;
  longlong lVar10;
  int local_24;
  uint local_1c;
  int local_18;
  uint uStack_14;
  uint local_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  uVar9 = *(uint *)(param_1 + 0x60);
  local_18 = *(int *)(param_1 + 100);
  local_10 = uVar9;
  FUN_0059f220((undefined4 *)((int)this + 0x214),uVar9);
  puVar6 = *(undefined4 **)((int)this + 0x218);
  for (puVar5 = *(undefined4 **)((int)this + 0x214); puVar5 != puVar6; puVar5 = puVar5 + 2) {
    *puVar5 = 0;
    puVar5[1] = 0;
  }
  local_24 = 0;
  if (0 < (int)uVar9) {
    do {
      iVar8 = 0;
      lVar10 = 1;
      puVar1 = (uint *)(*(int *)((int)this + 0x214) + local_24 * 8);
      if (0 < local_18) {
        do {
          uVar9 = (uint)((ulonglong)lVar10 >> 0x20);
          uVar3 = (undefined1)local_24;
          bVar7 = (byte)iVar8;
          param_1 = CONCAT22(CONCAT11(param_1._3_1_,param_2),CONCAT11(bVar7,uVar3));
          local_1c = 0xffff;
          cVar4 = (**(code **)(*(int *)this + 0x98))(&param_1,&local_1c);
          uVar2 = uStack_c;
          if (cVar4 != '\0') {
            *puVar1 = *puVar1 | (uint)lVar10;
            puVar1[1] = puVar1[1] | uVar9;
            uStack_c._3_1_ = SUB41(uVar2,3);
            uStack_c._0_3_ = CONCAT12(1,(ushort)bVar7 << 8);
            uStack_8 = CONCAT22(uStack_8._2_2_,(short)local_1c);
            uStack_4 = 0x40800000;
            uStack_14 = (uint)CONCAT11(uVar3,bVar7) << 0x10 | local_1c & 0xffff;
            uStack_c = CONCAT31(uStack_c._1_3_,uVar3);
            puVar6 = (undefined4 *)FUN_00a7d360((void *)((int)this + 0x22c),&uStack_14);
            *puVar6 = uStack_c;
            puVar6[1] = uStack_8;
            puVar6[2] = uStack_4;
          }
          iVar8 = iVar8 + 1;
          lVar10 = __allmul((uint)lVar10,uVar9,2,0);
        } while (iVar8 < local_18);
      }
      local_24 = local_24 + 1;
    } while (local_24 < (int)local_10);
    *(undefined1 *)((int)this + 0x210) = 1;
    return;
  }
  *(undefined1 *)((int)this + 0x210) = 1;
  return;
}

