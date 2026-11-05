/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX node,four stack dwords RET10. Requires
   walker scene, actor admission, scene entity and flag1. Resolves key007F5E00, requests prop
   ownership00581820(true), handles native resource types02D6E559,02DC343F,319E4F1D with distinct
   creation paths, then binds scene entity and records entity in node data. Existing ordinary object
   refusing prop ownership is not replaced. Native parameterized key and extra resource branch
   exist; current C# rejects parameterized resources and admits only two types. Original missing
   resources/creation and per-node cleanup are separate from current exception and sink policy. */

void __thiscall
SacsCreatePropNode_Execute(void *this,int param_1,void *param_2,undefined4 param_3,int *param_4)

{
  bool bVar1;
  undefined4 uVar2;
  void *pvVar3;
  int *piVar4;
  undefined4 *puVar5;
  int iVar6;
  uint *puVar7;
  byte bVar8;
  uint *puVar9;
  uint uVar10;
  int *local_d0;
  void *local_cc;
  void *pvStack_c8;
  void *local_c4;
  uint local_c0 [2];
  int local_b8;
  uint auStack_b0 [4];
  byte abStack_a0 [4];
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  uint uStack_90;
  uint uStack_8c;
  undefined1 uStack_64;
  int aiStack_4c [12];
  uint auStack_1c [6];
  
  if ((param_1 != 0) && (*(int *)(param_1 + 8) != 0)) {
    uVar2 = SacsContext_AdmitActorNode(param_2,param_1,*(int *)((int)this + 0x50));
    if ((char)uVar2 != '\0') {
      pvVar3 = (void *)SacsContext_FindDefinitionActor(param_2,*(int *)((int)this + 0x50));
      if ((pvVar3 != (void *)0x0) && (((byte)*(undefined4 *)((int)pvVar3 + 0xc) & 1) == 1)) {
        local_c4 = pvVar3;
        SacsCreatePropNode_ResolveResourceKey(this,(undefined8 *)local_c0,param_2);
        bVar1 = SceneEntity_RequestPropOwnership(pvVar3,'\x01');
        if (bVar1) {
          pvVar3 = (void *)0x0;
          local_d0 = (int *)0x0;
          local_cc = (void *)0x0;
          if (local_b8 == 0x2d6e559) {
            piVar4 = FUN_007f7890(param_2,local_c0);
            if (piVar4 != (int *)0x0) {
              FUN_007d60e0(piVar4,&local_d0);
              (**(code **)(*piVar4 + 4))();
            }
          }
          else if (local_b8 == 0x2dc343f) {
            local_d0 = FUN_007f7a20(param_2,local_c0);
          }
          else if (local_b8 == 0x319e4f1d) {
            piVar4 = FUN_007f7bb0(param_2,local_c0);
            if (piVar4 != (int *)0x0) {
              puVar5 = FUN_00c6fef0(local_c0);
              FUN_00874fb0(&local_cc,puVar5);
              (**(code **)(*piVar4 + 4))();
              pvVar3 = local_cc;
            }
          }
          iVar6 = FUN_00581870(*(void **)(param_1 + 8),'\0');
          FUN_0055e250(&pvStack_c8,iVar6);
          bVar8 = 0;
          if (local_d0 != (int *)0x0) {
            iVar6 = FUN_0055e030(pvStack_c8);
            if (iVar6 != 0) {
              bVar8 = (byte)((uint)*(undefined4 *)(iVar6 + 0x2c) >> 0x1f);
            }
            auStack_b0[0] = 0;
            auStack_b0[1] = 0;
            auStack_b0[2] = 0;
            auStack_b0[3] = 0x10201a4;
            FUN_007f63c0((int)abStack_a0);
            uStack_64 = 0;
            abStack_a0[0] = 0x60;
            abStack_a0[1] = 0x90;
            abStack_a0[2] = 0xe;
            abStack_a0[3] = 0xbe;
            FUN_004f61f0(&uStack_9c,"");
            FUN_007f9980(auStack_b0,(undefined4 *)abStack_a0);
            uVar2 = FUN_0092f9c0();
            FUN_00939a40(aiStack_4c,uVar2);
            ObjectParams_AppendOverridesAndResourceDefaults(local_d0,auStack_b0,aiStack_4c);
            if (bVar8 != 0) {
              ParameterBuilder_AppendResolvedWordType4(aiStack_4c,0xf084b899,1);
            }
            iVar6 = 0;
            uVar10 = 0;
            puVar9 = local_c0;
            puVar7 = ParameterBuilder_FinalizeBorrowedTable(aiStack_4c,auStack_1c);
            puVar5 = FUN_00936100(local_d0,puVar7,puVar9,uVar10,iVar6);
            FUN_00874fb0(&local_cc,puVar5);
            (**(code **)(*local_d0 + 4))();
            local_d0 = (int *)0x0;
            FUN_00582cf0(aiStack_4c);
            ObjectSoundRow_DestroyName(abStack_a0);
            FUN_007f76d0(auStack_b0);
            pvVar3 = local_cc;
          }
          if (pvVar3 != (void *)0x0) {
            FUN_00798cf0();
            if (bVar8 != 0) {
              uStack_98 = *(undefined4 *)((int)pvVar3 + 8);
              uStack_94 = *(undefined4 *)((int)pvVar3 + 0xc);
              uStack_90 = DAT_01166a68 | DAT_01166a64;
              abStack_a0[0] = 0xc4;
              abStack_a0[1] = 0x8b;
              abStack_a0[2] = 0x87;
              abStack_a0[3] = 4;
              uStack_9c = 0;
              uStack_8c = DAT_01166a64;
              RenderCommand_EnqueueIfDispatcherExists(abStack_a0);
              FUN_00582a70((int)abStack_a0);
            }
            FUN_005822a0(local_c4,(int)pvVar3);
            FUN_007f5250((int)param_2);
            piVar4 = (int *)*param_4;
            if (piVar4 == (int *)0x0) {
              piVar4 = FUN_004e6f20(DAT_011cc864,4,0);
              *param_4 = (int)piVar4;
            }
            *piVar4 = (int)local_c4;
            if (*(char *)(DAT_011ce800 + 0x31) != '\0') {
              pvVar3 = (void *)FUN_00582ac0(pvVar3);
              if (pvVar3 != (void *)0x0) {
                VisualState_SetTintTransition(pvVar3,0xff00ff,0.0,0,0);
              }
            }
          }
          FUN_007462e0((int *)&pvStack_c8);
          FUN_007462e0((int *)&local_cc);
        }
        else if (((byte)*(undefined4 *)((int)pvVar3 + 0xc) & 2) != 2) {
          FUN_00581870(pvVar3,'\0');
          return;
        }
      }
    }
  }
  return;
}

