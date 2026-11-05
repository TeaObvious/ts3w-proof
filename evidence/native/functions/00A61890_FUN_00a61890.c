/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. cdecl point/mode/outPreset three words/plainRET. Same containing-lot/AB1020/local/AFDE10/B04090/A8FA90 chain as source binder. Nonzero fourth key lane enters broker virtual0C with actual local out-address, then5BF050 query. Success writes actual caller third pointer atEBP+10; failed query releases virtual4, AL0. Decompiler piVar5 initialized0 is a lost local-out alias, not actual dereference0 behavior. Broker/ref/query and original complete copy/selection ownership remain separate. */

uint __cdecl FUN_00a61890(float *param_1,char param_2,int *param_3)

{
  char cVar1;
  uint in_EAX;
  void *pvVar2;
  undefined3 extraout_var;
  int *piVar3;
  int iVar4;
  int *piVar5;
  undefined2 local_78;
  undefined1 local_76;
  undefined1 local_75;
  undefined1 local_74 [4];
  LotXZLevel local_70;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 local_50 [12];
  undefined1 local_20 [8];
  int local_18;
  
  if (DAT_011edbc4 != (void *)0x0) {
    local_70.x = *param_1;
    local_70.z = param_1[1];
    local_70.level = (int)param_1[2];
    fStack_64 = param_1[3];
    local_60 = local_70.x;
    fStack_5c = local_70.z;
    fStack_58 = (float)local_70.level;
    fStack_54 = fStack_64;
    pvVar2 = LotSpatialIndex_FindContainingLotAtWorldXZ
                       (DAT_011edbc4,local_70.x,(float)local_70.level);
    in_EAX = 0;
    if (pvVar2 != (void *)0x0) {
      cVar1 = FUN_00ab1020((int)pvVar2);
      in_EAX = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        local_70.x = -1.0;
        local_70.z = -1.0;
        local_70.level = 0;
        Lot_WorldPositionToLocalLocation(pvVar2,param_1,&local_70);
        in_EAX = FUN_00afde10(pvVar2,&local_70.x,'\x01','\0','\0');
        if ((char)in_EAX != '\0') {
          local_78._0_1_ = -1;
          local_78._1_1_ = 0xff;
          local_75 = 0xff;
          local_76 = 0;
          FUN_00b04090(&local_78,&local_70.x,pvVar2,'\0','\x01',param_2);
          FUN_00afba70(local_50);
          in_EAX = FloorManager_CopyPatternKeysAtCellPart
                             (*(void **)((int)pvVar2 + 0x290),(char *)&local_78,local_50);
          if (local_18 != 0) {
            GetGlobalInterfacePointer_11D5BBC();
            piVar3 = (int *)FUN_004afe80();
            piVar5 = (int *)0x0;
            in_EAX = (**(code **)(*piVar3 + 0xc))(local_20,local_74,0,0,0,0);
            if ((char)in_EAX != '\0') {
              iVar4 = FUN_005bf050(piVar5);
              if (iVar4 != 0) {
                *param_3 = iVar4;
                return CONCAT31((int3)((uint)iVar4 >> 8),1);
              }
              in_EAX = (**(code **)(*piVar5 + 4))();
            }
          }
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}
