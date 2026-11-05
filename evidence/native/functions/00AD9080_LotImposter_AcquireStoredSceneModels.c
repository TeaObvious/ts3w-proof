/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst role from exact
   main/water/holiday MODL keys and actual renderer objects. Physical receiver ECX, no stack
   argument, plain RET. If receiver+8 main model already exists, skip acquisition and still perform
   final AD8C60 with current frame service. Otherwise construct aligned2D0 scene model; keys are
   same UInt64 from receiver+30/+34, type01661233, groups00B0C507/001DA7E9/001064CA. Full original
   stack keys at post-prologue ESP+24/+34/+44 are distinct16-byte aggregates; decompiler local
   aliases such as local_34, local_38 and unaff_ESI/uVar7 are artifacts, not keys made from function
   return addresses or uninitialized policy. Global resource manager virtual44 tests each exact key.
   Missing main or receiver+24 inhibits admission; actual main bind6F46F0 AL becomes receiver+14.
   Water/holiday models are separately optional, retain/copy through real lifetime helpers only
   according to corresponding AL flags, then release temporaries. Final transform/state update
   remains outside that allocation block. This proves exact group separation and existing authored
   model acquisition, not every lot fallback, dictionary/error/cache policy or GPU readiness.
   Foreign allocator/material/resource prototypes retained; physical stack and original lifetime
   instructions take precedence over abbreviated actual C. */

void __fastcall LotImposter_AcquireStoredSceneModels(void *param_1)

{
  undefined1 uVar1;
  void *pvVar2;
  int *this;
  int *piVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  undefined4 unaff_ESI;
  int *piStack_58;
  undefined2 uVar7;
  undefined4 uStack_44;
  int *piStack_40;
  int iStack_3c;
  int *local_38;
  void *local_34;
  int iStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  int iStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  uVar7 = (undefined2)((uint)unaff_ESI >> 0x10);
  local_34 = LoadPump_ReadFrameServiceGlobal();
  if (*(int *)((int)param_1 + 8) == 0) {
    piStack_58 = (int *)0x0;
    pvVar2 = (void *)FUN_004e4520(0x2d0,0x10,0,"Lot/ImposterObject",0);
    if (pvVar2 == (void *)0x0) {
      this = (int *)0x0;
    }
    else {
      piStack_58 = (int *)0xad90c7;
      this = RenderComponent_InitializeSceneModel(pvVar2,0,0);
    }
    local_38 = this;
    if (this != (int *)0x0) {
      piStack_58 = (int *)0xad90e3;
      (**(code **)*this)();
      iStack_30 = *(int *)((int)param_1 + 0x30);
      uStack_2c = *(undefined4 *)((int)param_1 + 0x34);
      piVar5 = (int *)0x0;
      piVar6 = (int *)0x0;
      uStack_28 = 0x1661233;
      uStack_24 = 0xb0c507;
      uStack_18 = 0x1661233;
      uStack_14 = 0x1da7e9;
      uStack_8 = 0x1661233;
      uStack_4 = 0x1064ca;
      piStack_40 = (int *)0x0;
      iStack_3c = 0;
      piStack_58 = (int *)0xad913b;
      iStack_20 = iStack_30;
      uStack_1c = uStack_2c;
      iStack_10 = iStack_30;
      uStack_c = uStack_2c;
      piVar3 = (int *)FUN_004afe80();
      piStack_58 = &iStack_30;
      uStack_44._2_1_ = 0;
      uStack_44._3_1_ = 0;
      iVar4 = (**(code **)(*piVar3 + 0x44))();
      if ((iVar4 == 0) || (*(char *)((int)param_1 + 0x24) != '\0')) {
        *(undefined1 *)((int)param_1 + 0x14) = 0;
      }
      else {
        uVar1 = FUN_006f46f0(this,&local_34,1,*(byte *)((int)param_1 + 0x26),0);
        *(undefined1 *)((int)param_1 + 0x14) = uVar1;
        FUN_006f46d0(this,'\0');
        (**(code **)(*this + 0x34))(0x7ffff000,0x2000);
        (**(code **)(*this + 0x34))(2,0xffffffff);
        piVar3 = (int *)FUN_004afe80();
        iVar4 = (**(code **)(*piVar3 + 0x44))(&local_34);
        if (iVar4 != 0) {
          pvVar2 = (void *)FUN_004e4500(0x2d0,"Lot/ImposterPonds",0);
          if (pvVar2 == (void *)0x0) {
            piVar5 = (int *)0x0;
          }
          else {
            piVar5 = RenderComponent_InitializeSceneModel(pvVar2,0,0);
          }
          FUN_008c8d00(&piStack_58,piVar5);
          piVar5 = piStack_58;
          if (piStack_58 != (int *)0x0) {
            FUN_006f46f0(piStack_58,&local_38,1,*(byte *)((int)param_1 + 0x26),0);
            (**(code **)(*piVar5 + 0x34))(0x7ffff000,0x2000);
          }
        }
        piVar3 = (int *)FUN_004afe80();
        iVar4 = (**(code **)(*piVar3 + 0x44))(&uStack_28);
        if (iVar4 != 0) {
          pvVar2 = (void *)FUN_004e4500(0x2d0,"Lot/ImposterHolidayLights",0);
          if (pvVar2 == (void *)0x0) {
            piVar6 = (int *)0x0;
          }
          else {
            piVar6 = RenderComponent_InitializeSceneModel(pvVar2,0,0);
          }
          FUN_008c8d00(&piStack_40,piVar6);
          piVar6 = piStack_40;
          if (piStack_40 != (int *)0x0) {
            uVar1 = FUN_006f46f0(piStack_40,&uStack_14,1,*(byte *)((int)param_1 + 0x26),0);
            uVar7 = (undefined2)(CONCAT13(uVar1,(int3)unaff_ESI) >> 0x10);
            FUN_006f46d0(piVar6,'\0');
            (**(code **)(*piVar6 + 0x34))(0x7ffff000,0x2000);
            (**(code **)(*piVar6 + 0x34))(2,0xffffffff);
          }
        }
      }
      if (*(char *)((int)param_1 + 0x14) != '\0') {
        FUN_00ad8d00((int)param_1);
        StatePointerSlots_AssignVirtualLifetime((void *)((int)param_1 + 8),&iStack_3c);
        if ((char)uVar7 != '\0') {
          StatePointerSlots_AssignVirtualLifetime((void *)((int)param_1 + 0xc),&uStack_44);
        }
        if ((char)((ushort)uVar7 >> 8) != '\0') {
          StatePointerSlots_AssignVirtualLifetime((void *)((int)param_1 + 0x10),(int *)&piStack_40);
        }
        if (*(int *)((int)param_1 + 0x28) != 0) {
          FUN_00ad8de0(param_1,*(int *)((int)param_1 + 0x28) + 0x1f0);
        }
      }
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))();
      }
      (**(code **)(*this + 4))();
    }
  }
  FUN_00ad8c60(param_1,local_34);
  return;
}

