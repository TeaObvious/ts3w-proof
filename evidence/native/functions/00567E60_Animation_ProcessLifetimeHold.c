/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original instruction review. Analyst-assigned name. Sequence update inspects lifetime
   before child tick. Current lifetime<=0 without flag8 retires entry; with flag8 transfers to
   Previous, wraps held child and stops child, then permits pending promotion. Uses FLT_MAX and-1
   float sentinels in transition selection. Decompiler pointer-like float locals are artifacts; do
   not infer pointer comparisons. Full blend/sync policy remains partially typed. */

void __thiscall Animation_ProcessLifetimeHold(void *this,float deltaTime)

{
  float *this_00;
  int *this_01;
  int *piVar1;
  int *piVar2;
  float fVar3;
  bool bVar4;
  undefined4 uVar5;
  void *this_02;
  int iVar6;
  int **ppiVar7;
  float10 fVar8;
  char local_19;
  int *piStack_18;
  int *piStack_14;
  undefined4 *puStack_10;
  void *pvStack_c;
  int *piStack_8;
  undefined4 *puStack_4;
  
  if (this != (void *)0x0) {
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + 1;
  }
  local_19 = '\0';
  uVar5 = FUN_0056c000(*(int *)((int)this + 0x2c));
  if ((char)uVar5 != '\0') goto LAB_00568274;
  this_00 = (float *)((int)this + 0x3c);
  if (((*(int **)((int)this + 0x3c) != (int *)0x0) &&
      (fVar8 = (float10)(**(code **)(**(int **)((int)this + 0x3c) + 0x1c))(), fVar8 <= (float10)0))
     && ((*(byte *)((int)this + 0x44) & 8) == 0)) {
    Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
  }
  this_01 = (int *)((int)this + 0x50);
  if ((*(int **)((int)this + 0x50) != (int *)0x0) &&
     (fVar8 = (float10)(**(code **)(**(int **)((int)this + 0x50) + 0x1c))(), fVar8 <= (float10)0)) {
    if ((*(byte *)((int)this + 0x58) & 8) == 0) {
      Animation_RetireSequenceEntry(this_01,(int)this,'\x01');
    }
    else {
      Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
      AnimationSequenceEntry_CopyRetained(this_00,this_01);
      FUN_005665d0(this_01);
      piVar1 = (int *)*this_00;
      if (piVar1 != (int *)0x0) {
        piVar1[1] = piVar1[1] + 1;
        piStack_8 = piVar1;
        this_02 = (void *)FUN_004e4500(0x2c,"Animation/HoldPoseController",0);
        if (this_02 == (void *)0x0) {
          puStack_4 = (undefined4 *)0x0;
        }
        else {
          puStack_4 = AnimationHoldPoseController_Construct
                                (this_02,*(undefined4 *)((int)*this_00 + 0x1c),(int)*this_00);
        }
        if (puStack_4 != (undefined4 *)0x0) {
          puStack_4[1] = puStack_4[1] + 1;
        }
        FUN_00566590(this_00,puStack_4);
        (**(code **)(*piVar1 + 4))();
        FUN_00565d20((int *)&puStack_4);
        FUN_00565d20((int *)&piStack_8);
      }
    }
  }
  if ((int *)*this_01 == (int *)0x0) {
    piVar1 = (int *)((int)this + 0x30);
    if (((int *)*piVar1 != piVar1) && ((*(byte *)(*piVar1 + 0x10) & 4) == 0)) {
      fVar3 = *this_00;
      bVar4 = false;
      if (fVar3 != 0.0) {
        if ((*(byte *)((int)this + 0x44) & 8) == 0) {
          Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
        }
        else if ((fVar3 != 0.0) &&
                (iVar6 = (*(code *)**(undefined4 **)((int)fVar3 + 8))(), iVar6 == 0x7a11ba8)) {
          bVar4 = true;
        }
      }
      Animation_RetireSequenceEntry(this_01,(int)this,'\x01');
      AnimationSequenceController_ActivateNext(this,&local_19);
      puStack_10 = *(undefined4 **)((int)this + 0x5c);
      if ((bVar4) || ((float)puStack_10 == (float)DAT_00fc2a58)) {
        puStack_10 = (undefined4 *)0x0;
      }
      FUN_0056c240(*(int *)((int)this + 0x2c));
      if (DAT_010f4ccc < (float)puStack_10) {
        FUN_0056c2b0(*(void **)((int)this + 0x2c),(undefined4 *)*this_00,(undefined4 *)*this_01,
                     puStack_10,0);
      }
    }
    goto LAB_00568274;
  }
  fVar8 = (float10)(**(code **)(*(int *)*this_01 + 0x1c))();
  puStack_4 = (undefined4 *)(float)fVar8;
  fVar8 = (float10)(**(code **)(*(int *)*this_01 + 0x24))();
  piStack_8 = (int *)(float)fVar8;
  piVar1 = (int *)((int)this + 0x30);
  piStack_14 = *(int **)((int)this + 0x60);
  piStack_18 = DAT_00fc2a58;
  puStack_10 = (undefined4 *)0x0;
  if (((int *)*piVar1 == piVar1) || ((*(byte *)(*piVar1 + 0x10) & 4) != 0)) {
    if ((*(byte *)((int)this + 0x58) & 0x10) != 0) goto LAB_0056804a;
    piStack_14 = (int *)0x0;
LAB_0056805c:
    piStack_18 = piStack_14;
LAB_00568065:
    if ((float)piStack_18 != (float)DAT_00fc2a58) goto LAB_0056806e;
LAB_00568089:
    if ((float)piStack_14 != (float)DAT_00fc2a58) goto LAB_005680b1;
    piStack_18 = (int *)0x0;
    piStack_14 = (int *)0x0;
LAB_005680ba:
    ppiVar7 = &piStack_14;
  }
  else {
    if ((float)puStack_4 == _DAT_01150594) {
      pvStack_c = (void *)(**(code **)(*(int *)(*this_01 + 8) + 4))(0xb489fc2c);
      if (pvStack_c != (void *)0x0) {
        *(int *)((int)pvStack_c + 4) = *(int *)((int)pvStack_c + 4) + 1;
        iVar6 = FUN_00568630((int)pvStack_c);
        FUN_00568620(pvStack_c,iVar6 + 1);
      }
      FUN_00565d20((int *)&pvStack_c);
    }
    piStack_18 = *(int **)(*piVar1 + 0x14);
    FUN_00854d50(&puStack_10,(int *)(*piVar1 + 8));
LAB_0056804a:
    if ((float)piStack_14 == (float)DAT_00fc2a58) goto LAB_00568065;
    if ((float)piStack_18 == (float)DAT_00fc2a58) goto LAB_0056805c;
LAB_0056806e:
    if ((float)piStack_14 == (float)DAT_00fc2a58) {
      piStack_14 = piStack_18;
    }
    if ((float)piStack_18 == (float)DAT_00fc2a58) goto LAB_00568089;
LAB_005680b1:
    ppiVar7 = &piStack_18;
    if ((float)piStack_14 <= (float)piStack_18) goto LAB_005680ba;
  }
  if ((float)piStack_8 < (float)*ppiVar7 || (float)piStack_8 == (float)*ppiVar7) {
    ppiVar7 = &piStack_8;
  }
  piVar2 = *ppiVar7;
  if ((float)piStack_8 <= (float)piVar2) {
    if (((int *)*piVar1 == piVar1) || ((*(byte *)(*piVar1 + 0x10) & 4) != 0)) {
      if ((float)puStack_4 != _DAT_01150594) {
        if (0.0 < (float)piStack_8) {
          piStack_8 = piVar2;
          Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
          AnimationSequenceEntry_CopyRetained(this_00,this_01);
          FUN_005665d0(this_01);
          AnimationSequenceController_ActivateNext(this,&local_19);
          FUN_0056c240(*(int *)((int)this + 0x2c));
          goto LAB_00568111;
        }
        piStack_8 = piVar2;
        Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
        Animation_RetireSequenceEntry(this_01,(int)this,'\x01');
        piVar2 = piStack_8;
      }
    }
    else {
      piStack_8 = piVar2;
      Animation_RetireSequenceEntry(this_00,(int)this,'\x01');
      AnimationSequenceEntry_CopyRetained(this_00,this_01);
      FUN_005665d0(this_01);
      AnimationSequenceController_ActivateNext(this,&local_19);
LAB_00568111:
      FUN_0056c2b0(*(void **)((int)this + 0x2c),(undefined4 *)*this_00,(undefined4 *)*this_01,
                   piStack_8,0);
      piVar2 = piStack_8;
    }
  }
  piStack_8 = piVar2;
  if ((puStack_10 != (undefined4 *)0x0) &&
     (iVar6 = puStack_10[1], puStack_10[1] = iVar6 + -1, iVar6 + -1 == 0)) {
    puStack_10[1] = 1;
    (**(code **)*puStack_10)(1);
  }
LAB_00568274:
  uVar5 = FUN_0056c000(*(int *)((int)this + 0x2c));
  if ((char)uVar5 == '\0') {
    if ((*(int **)((int)this + 0x50) != (int *)0x0) && (local_19 == '\0')) {
      (**(code **)(**(int **)((int)this + 0x50) + 8))(deltaTime);
    }
  }
  else {
    (**(code **)(**(int **)((int)this + 0x2c) + 8))(deltaTime);
    uVar5 = FUN_0056c020(*(int *)((int)this + 0x2c));
    if ((char)uVar5 != '\0') {
      FUN_0056c240(*(int *)((int)this + 0x2c));
      Animation_RetireSequenceEntry((void *)((int)this + 0x3c),(int)this,'\x01');
    }
  }
  iVar6 = *(int *)((int)this + 4) + -1;
  *(int *)((int)this + 4) = iVar6;
  if (iVar6 == 0) {
    *(undefined4 *)((int)this + 4) = 1;
    (*(code *)**(undefined4 **)this)(1);
  }
  return;
}

