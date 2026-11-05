/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX texture entry. Only state+0x44==2 proceeds; XCHG to4. Ordinary DDS
   branch with attached material and special flags clear reads selected resource+0x60 and publishes
   embedded texture+0x28 or0 through material hash. Other resource branches remain distinct; no
   codec or uniform success inference. Role name is descriptive, not a recovered original symbol. */

void __fastcall MaterialTextureEntry_CompleteReady(int param_1)

{
  uint uVar1;
  void *pvVar2;
  int iVar3;
  uint *puVar4;
  undefined4 uVar5;
  void *pvVar6;
  int *piVar7;
  longlong lVar8;
  float local_24 [3];
  undefined1 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  byte local_4;
  byte local_3;
  
  if (*(int *)(param_1 + 0x44) == 2) {
    LOCK();
    *(undefined4 *)(param_1 + 0x44) = 4;
    UNLOCK();
    if (*(int *)(param_1 + 0x34) != 0) {
      if ((*(byte *)(param_1 + 0x42) & 2) != 0) {
        uVar1 = -(uint)(*(int *)(*(uint *)(param_1 + 0x30) + 0x44) != 0) & *(uint *)(param_1 + 0x30)
        ;
        if (uVar1 == 0) {
          piVar7 = (int *)0x0;
        }
        else {
          piVar7 = (int *)(uVar1 + 0x28);
        }
        FUN_006c9630(*(void **)(param_1 + 0x34),piVar7);
        FUN_00c85350(*(void **)(param_1 + 0x34),*(undefined4 *)(param_1 + 0x18));
        pvVar2 = (void *)FUN_00687d90();
        iVar3 = FUN_00687a20(piVar7,0);
        *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xf7;
        if (*(void **)(param_1 + 0x34) != (void *)0x0) {
          MaterialShaderBinding_PublishTextureEntry
                    (*(void **)(param_1 + 0x34),*(int *)(param_1 + 0x18),iVar3);
        }
        puVar4 = FUN_006c9e10(*(void **)(param_1 + 0x34),"TextureSpeedScale");
        if ((puVar4 == (uint *)0x0) || (*(char *)((int)puVar4 + 0x1e) != '\x01')) {
          local_24[0] = 1.0;
        }
        else {
          local_24[0] = *(float *)puVar4[5];
        }
        if ((float)piVar7[6] <= 1e-05) {
          local_24[0] = 0.0;
        }
        else {
          local_24[0] = (1.0 / (float)piVar7[6]) * local_24[0];
        }
        local_24[1] = 0.0;
        local_24[2] = 0.0;
        local_18 = 0;
        FUN_006880d0(pvVar2,*(int *)(param_1 + 0x34),0,local_24);
        return;
      }
      if ((*(byte *)(param_1 + 0x42) & 1) == 0) {
        uVar1 = -(uint)(*(int *)(*(uint *)(param_1 + 0x24) + 0x60) != 0) & *(uint *)(param_1 + 0x24)
        ;
        if (uVar1 == 0) {
          iVar3 = 0;
        }
        else {
          iVar3 = uVar1 + 0x28;
        }
        *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xf7;
        if (*(void **)(param_1 + 0x34) != (void *)0x0) {
          MaterialShaderBinding_PublishTextureEntry
                    (*(void **)(param_1 + 0x34),*(int *)(param_1 + 0x18),iVar3);
          return;
        }
      }
      else {
        lVar8 = FUN_00606280(*(void **)(param_1 + 0x2c));
        if (lVar8 == -1) {
          *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xfc | 4;
          LOCK();
          *(undefined4 *)(param_1 + 0x44) = 0;
          UNLOCK();
          uVar5 = FUN_005ca650((void *)(param_1 + 0x24),&DAT_0115c890,param_1 + 8,0,0);
          if ((char)uVar5 != '\0') {
            MaterialTextureEntry_DispatchState(param_1);
            return;
          }
          *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xf7;
          if (*(void **)(param_1 + 0x34) != (void *)0x0) {
            MaterialShaderBinding_PublishTextureEntry
                      (*(void **)(param_1 + 0x34),*(int *)(param_1 + 0x18),0);
            return;
          }
        }
        else {
          pvVar2 = (void *)FUN_00607f60();
          if ((*(uint *)(param_1 + 0x2c) & 3) == 0) {
            pvVar6 = *(void **)(param_1 + 0x2c);
          }
          else {
            pvVar6 = (void *)0x0;
          }
          piVar7 = (int *)FUN_006cd1b0(pvVar2,pvVar6);
          if (piVar7 == (int *)0x0) {
            local_14 = *(undefined4 *)(param_1 + 0x1c);
            local_10 = *(undefined4 *)(param_1 + 0x20);
            local_c = *(undefined4 *)(param_1 + 0x38);
            local_8 = *(undefined4 *)(param_1 + 0x3c);
            local_4 = *(byte *)(param_1 + 0x42) >> 4 & 1;
            local_3 = *(byte *)(param_1 + 0x42) >> 5 & 1;
            if ((*(uint *)(param_1 + 0x2c) & 3) == 0) {
              piVar7 = *(int **)(param_1 + 0x2c);
            }
            else {
              piVar7 = (int *)0x0;
            }
            FUN_006ceb60(pvVar2,piVar7,&local_14,(undefined4 *)(param_1 + 0xc),
                         *(short *)(param_1 + 0x40));
          }
          else {
            FUN_007c8ed0((void *)(param_1 + 0x28),piVar7);
            *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xf7;
            if (*(void **)(param_1 + 0x34) != (void *)0x0) {
              MaterialShaderBinding_PublishTextureEntry
                        (*(void **)(param_1 + 0x34),*(int *)(param_1 + 0x18),(int)piVar7);
              return;
            }
          }
        }
      }
    }
  }
  return;
}

