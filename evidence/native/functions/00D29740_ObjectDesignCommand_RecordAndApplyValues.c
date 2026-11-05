/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX command plus GUIDlow/high and three block pointers, RET14h.
   Missing registry object or component selected by global011E9FC4 returns before map mutation. Tree
   receiver command+50 uses sentinel+54. First GUID row captures previous component-value fields and
   supplied after blocks; existing row updates supplied after fields only. Calls0094B150 with two
   value blocks, then00949460 with first DWORD of supplied text block. No component-mask
   initialization identity or full child semantics inferred. */

void __thiscall
ObjectDesignCommand_RecordAndApplyValues
          (void *this,uint param_1,undefined4 param_2,int *param_3,int *param_4,undefined4 *param_5)

{
  void *this_00;
  void *pvVar1;
  int *extraout_EAX;
  undefined4 *puVar2;
  int *this_01;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int local_78;
  undefined1 local_74 [4];
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  undefined1 local_30 [16];
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if ((pvVar1 != (void *)0x0) &&
     (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fc4), pvVar1 != (void *)0x0)) {
    this_00 = (void *)((int)this + 0x50);
    LotRoomSeedTree_FindGuidNode(this_00,&local_78,(ulonglong *)&param_1);
    LotRoomSeedTree_FindGuidNode(this_00,local_74,(ulonglong *)&param_1);
    puVar2 = param_5;
    piVar4 = param_4;
    piVar3 = param_3;
    if (*extraout_EAX == (int)this + 0x54) {
      FUN_00d28ec0(&local_70);
      puVar2 = (undefined4 *)FUN_004e3f40((int)pvVar1);
      local_70 = *puVar2;
      local_6c = puVar2[1];
      local_68 = puVar2[2];
      local_64 = puVar2[3];
      puVar2 = (undefined4 *)FUN_0059b680((int)pvVar1);
      local_60 = *puVar2;
      local_5c = puVar2[1];
      local_58 = puVar2[2];
      local_54 = puVar2[3];
      FUN_006225b0(local_30,(int *)((int)pvVar1 + 0x38));
      FUN_00948d50(pvVar1,local_10);
      puVar2 = param_5;
      piVar4 = param_4;
      piVar3 = param_3;
      local_48 = param_3[2];
      local_50 = *param_3;
      local_4c = param_3[1];
      local_3c = param_4[1];
      local_44 = param_3[3];
      local_40 = *param_4;
      local_38 = param_4[2];
      local_34 = param_4[3];
      if (param_5 != local_20) {
        FUN_00408d60(local_20,(void *)*param_5,(undefined2 *)param_5[1]);
      }
      puVar5 = &local_70;
      this_01 = FUN_00d295f0(this_00,&param_1);
      FUN_00d29020(this_01,puVar5);
      FUN_00d28f30((int)&local_70);
    }
    else {
      *(int *)(local_78 + 0x38) = *param_3;
      *(int *)(local_78 + 0x3c) = param_3[1];
      *(int *)(local_78 + 0x40) = param_3[2];
      *(int *)(local_78 + 0x44) = param_3[3];
      *(int *)(local_78 + 0x48) = *param_4;
      *(int *)(local_78 + 0x4c) = param_4[1];
      *(int *)(local_78 + 0x50) = param_4[2];
      *(int *)(local_78 + 0x54) = param_4[3];
      if (param_5 != (undefined4 *)(local_78 + 0x68)) {
        FUN_00408d60((undefined4 *)(local_78 + 0x68),(void *)*param_5,(undefined2 *)param_5[1]);
      }
    }
    FUN_0094b150(pvVar1,piVar3,piVar4);
    FUN_00949460(pvVar1,(LPCWSTR)*puVar2);
  }
  return;
}

