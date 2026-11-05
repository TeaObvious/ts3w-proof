/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX binding owner plus address of selected LOD slot, RET4,
   void. Retains LOD; when binding+5C and LOD+72==0, clones via6DB3D0, replacing slot only after
   successful clone; failed clone returns before material loop and does not clear pending+5D. Visits
   all existing drawables. MTST drawables receive binding+54 hash and binding+60 context via691510;
   ordinary materials are rebound through691400. Then marks each drawable and invokes optional
   material/substitution listeners; these can replace selected LOD. Clears pending+5D at completed
   tail, releases local. No direct write to SceneModel geometry+2A4; unknown listener behavior is
   not a global no-replacement guarantee. */

void __thiscall ModelBinding_RebindMaterialOnLod(void *this,void *lodSlot)

{
  void *pvVar1;
  char cVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  void *material;
  int *piVar6;
  int *piVar7;
  uint uVar8;
  int *local_10;
  int *local_c;
  void *local_8;
  int *piStack_4;
  
  piVar7 = *(int **)lodSlot;
  uVar8 = 0;
  local_c = piVar7;
  local_8 = this;
  if (piVar7 != (int *)0x0) {
    (**(code **)*piVar7)();
  }
  if ((*(char *)((int)this + 0x5c) != '\0') && (*(char *)((int)piVar7 + 0x72) == '\0')) {
    local_10 = (int *)0x0;
    uVar3 = ModelLOD_CloneWithMaterialSubstitutions
                      (piVar7,&local_10,(int *)0x0,(undefined4 *)((int)this + 0x60));
    if ((char)uVar3 == '\0') {
      if (local_10 != (int *)0x0) {
        (**(code **)(*local_10 + 4))();
      }
      (**(code **)(*piVar7 + 4))();
      return;
    }
    StatePointerSlots_AssignVirtualLifetime(&local_c,(int *)&local_10);
    piVar7 = local_c;
    FUN_00a9b9b0(lodSlot,local_c);
    if (local_10 != (int *)0x0) {
      (**(code **)(*local_10 + 4))();
    }
  }
  uVar4 = GetNativeDescriptorTypeName_Field44((int)piVar7);
  if (uVar4 != 0) {
    do {
      pvVar1 = *(void **)(piVar7[0x10] + uVar8 * 4);
      iVar5 = FUN_00542290((int)pvVar1);
      if (iVar5 == 0) {
        material = (void *)AnimationRenderState_GetWorldMatrices((int)pvVar1);
        if (material != (void *)0x0) {
          Drawable_RebindEffectiveMaterial(pvVar1,material,'\0',(void *)((int)local_8 + 0x60));
        }
      }
      else {
                    /* ECX drawable; two stack arguments binding+54 hash and binding+60 context.
                       RET8. */
        Drawable_SelectMaterialSetByHash
                  (pvVar1,*(uint *)((int)local_8 + 0x54),(void *)((int)local_8 + 0x60));
      }
      FUN_0068fe00(pvVar1,0);
      uVar8 = uVar8 + 1;
    } while (uVar8 < uVar4);
  }
  pvVar1 = local_8;
  piVar6 = *(int **)((int)local_8 + 0x48);
  if (piVar6 != (int *)((int)local_8 + 0x48)) {
    do {
      if ((char)piVar6[3] == '\0') {
        uVar3 = 0;
        piStack_4 = (int *)0x0;
        if ((*(uint *)lodSlot & 3) == 0) {
          uVar3 = *(undefined4 *)lodSlot;
        }
        cVar2 = (**(code **)(*(int *)piVar6[2] + 0x10))
                          (uVar3,&piStack_4,*(undefined4 *)((int)pvVar1 + 0x54),(int)pvVar1 + 0x60);
        piVar7 = piStack_4;
        if (cVar2 != '\0') {
          if (piStack_4 != (int *)0x0) {
            (**(code **)*piStack_4)();
          }
          if (DAT_011d4c84 != (int *)0x0) {
            (**(code **)(*DAT_011d4c84 + 0x3c))(lodSlot,ResourceCallback_InvokeVirtual04);
          }
          if ((*(int *)lodSlot != 0) && ((*(uint *)lodSlot & 3) == 0)) {
            (**(code **)(**(int **)lodSlot + 4))();
            *(undefined4 *)lodSlot = 0;
          }
          *(int **)lodSlot = piVar7;
        }
        if (piStack_4 != (int *)0x0) {
          (**(code **)(*piStack_4 + 4))();
        }
      }
      piVar6 = (int *)*piVar6;
    } while (piVar6 != (int *)((int)pvVar1 + 0x48));
    piVar7 = local_c;
  }
  *(undefined1 *)((int)pvVar1 + 0x5d) = 0;
  if (piVar7 != (int *)0x0) {
    (**(code **)(*piVar7 + 4))();
  }
  return;
}

