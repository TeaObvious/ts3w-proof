/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 thiscall ECX manager with one UInt32 sound-key stackword, RET4; inferred pointer
   type for that word is a decompiler alias. Checks the auxiliary sound map first and performs its
   original cleanup/audio message branch. Otherwise matches playback row paired sound+90; copies
   full GUID+70/+74 into a Video/Message and sends06168BE5 BEFORE fallback, resource/renderer
   releases and row unlink. Consumer scheduling and backend completion policy are not established by
   the cleanup children. */

void __thiscall ObjectVideoManager_HandleSoundStopped(void *this,int *param_1)

{
  uint uVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  int *piVar5;
  int local_8;
  int *local_4;
  
  FUN_009d6c30((void *)((int)this + 0x20),&local_8,(uint *)&param_1);
  if (local_8 != *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
    FUN_009d6740((int *)(local_8 + 4));
    if (((*(char *)(local_8 + 0x14) != '\0') &&
        (piVar2 = (int *)FUN_008afe00(), piVar2 != (int *)0x0)) &&
       (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(), piVar2 != (int *)0x0)) {
      pvVar3 = (void *)FUN_004e4500(0x90,"Audio/Message",0);
      if (pvVar3 == (void *)0x0) {
        iVar4 = 0;
      }
      else {
        iVar4 = FUN_00865310(pvVar3,&DAT_00ff0ed1);
      }
      *(uint *)(iVar4 + 0x88) = *(uint *)(iVar4 + 0x88) | 1;
      *(int **)(iVar4 + 8) = param_1;
      *(uint *)(iVar4 + 0x88) = *(uint *)(iVar4 + 0x88) | 2;
      *(undefined4 *)(iVar4 + 0x10) = 1;
      (**(code **)(*piVar2 + 0x1c))(&DAT_00ff0ed1,iVar4,0,0);
    }
    FUN_00549450((void *)((int)this + 0x20),&local_8,local_8,local_4);
    return;
  }
  piVar2 = (int *)((int)this + 0x88);
  piVar5 = (int *)*piVar2;
  if (piVar5 != piVar2) {
    while ((int *)piVar5[0x24] != param_1) {
      piVar5 = (int *)*piVar5;
      if (piVar5 == piVar2) {
        return;
      }
    }
    piVar2 = (int *)FUN_004e4500(0x10,"Video/Message",0);
    if (piVar2 == (int *)0x0) {
      param_1 = (int *)0x0;
      piVar2 = param_1;
    }
    else {
      *piVar2 = (int)&PTR_FUN_0106c91c;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      *piVar2 = (int)&PTR_FUN_0106c91c;
      param_1 = piVar2;
      (**(code **)(*piVar2 + 4))();
    }
    piVar2[2] = piVar5[0x1c];
    piVar2[3] = piVar5[0x1d];
    FUN_007d3210(0x6168be5,piVar2);
    uVar1 = piVar5[0x1c];
    piVar2 = (int *)piVar5[0x1d];
    pvVar3 = (void *)FUN_006fdbe0();
    if (pvVar3 != (void *)0x0) {
      ObjectRenderer_ApplyVideoTextureOverride(pvVar3,uVar1,piVar2);
    }
    if (piVar5[0x1e] != 0) {
      FUN_00f1c900(piVar5[0x1e]);
      FUN_00f1d8c0(piVar5[0x1e]);
      FUN_004e5e70(DAT_011cc864,piVar5[0x1e]);
    }
    if ((int *)piVar5[0x1f] != (int *)0x0) {
      (**(code **)(*(int *)piVar5[0x1f] + 8))();
      (*(code *)**(undefined4 **)piVar5[0x1f])(0);
      FUN_004e5e70(DAT_011cc864,piVar5[0x1f]);
    }
    if ((int *)piVar5[0x20] != (int *)0x0) {
      (**(code **)(*(int *)piVar5[0x20] + 0xc))();
      (*(code *)**(undefined4 **)piVar5[0x20])(0);
      FUN_004e5e70(DAT_011cc864,piVar5[0x20]);
    }
    if (piVar5[0x21] != 0) {
      FUN_0061a1d0(piVar5[0x21]);
      (**(code **)(*(int *)piVar5[0x21] + 8))();
      piVar5[0x21] = 0;
    }
    piVar2 = (int *)piVar5[1];
    iVar4 = *piVar5;
    *piVar2 = iVar4;
    *(int **)(iVar4 + 4) = piVar2;
    pvVar3 = (void *)piVar5[2];
    if (((1 < piVar5[4] - (int)pvVar3) && (pvVar3 != (void *)0x0)) && (pvVar3 != (void *)piVar5[6]))
    {
      Memory_FreeIfNonNull(pvVar3);
    }
    FUN_004e5e70(DAT_011cc864,(int)piVar5);
    (**(code **)(*param_1 + 8))();
  }
  return;
}

