/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161c50 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec
   [assembly=ScriptCore token=0x06001055; simObjID: System.UInt64, animSpec:
   Sims3.SimIFace.RouteAnimationSpec; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_RouteManager__RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec
                  (undefined4 param_1,undefined4 param_2,uint param_3,uint param_4,uint param_5,
                  uint param_6)

{
  char cVar1;
  int iVar2;
  void *pvVar3;
  uint uVar4;
  float *pfVar5;
  int iVar6;
  float10 fVar7;
  float fStack_1d8;
  int iStack_1d4;
  float fStack_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1b8;
  int iStack_1b4;
  int *piStack_1b0;
  int *piStack_1a8;
  int *piStack_19c;
  uint uStack_160;
  uint uStack_15c;
  int iStack_158;
  int iStack_154;
  char cStack_14f;
  int *piStack_138;
  int *piStack_134;
  int *piStack_130;
  char *pcStack_12c;
  int *piStack_128;
  int aiStack_124 [42];
  int aiStack_7c [10];
  int *piStack_54;
  int *piStack_50;
  
  iVar2 = FUN_00937570();
  if (iVar2 != 0) {
    pvVar3 = (void *)FUN_00937f80(iVar2);
    if (pvVar3 == (void *)0x0) {
      iStack_1d4 = 0;
    }
    else {
      iStack_1d4 = FUN_00934260(pvVar3,DAT_011dd484);
    }
    pvVar3 = DAT_011da140;
    fStack_1d0 = DAT_01150628;
    FUN_007515c0(&iStack_1b4);
    cVar1 = FUN_008443f0(pvVar3,param_3,param_4,param_5,param_6,&iStack_1b4);
    if ((cVar1 != '\0') && (iStack_1d4 != 0)) {
      piStack_138 = aiStack_124;
      piStack_130 = aiStack_7c;
      pcStack_12c = "EASTL fixed_vector";
      piStack_134 = piStack_138;
      piStack_128 = piStack_138;
      uVar4 = FUN_00844140(pvVar3,param_3,param_4 | param_6,(uint *)&piStack_138);
      if (cStack_14f != '\0') {
        fStack_1d0 = _DAT_00fb35b4;
      }
      fStack_1c0 = 0.0;
      fStack_1bc = 0.0;
      fStack_1c4 = 0.0;
      fStack_1d8 = 0.0;
      fStack_1cc = 0.0;
      if (0 < (int)uVar4) {
        iVar2 = (int)piStack_134 - (int)piStack_138 >> 0x1f;
        iVar6 = ((int)piStack_134 - (int)piStack_138) / 0x1c + iVar2;
        if ((iVar6 != iVar2) && ((int)uVar4 < iVar6 - iVar2)) {
          FUN_00843eb0(pvVar3,piStack_138[6],uStack_160,uStack_15c,iStack_158,iStack_154,&iStack_1b4
                       ,'\x01');
          FUN_007515c0(aiStack_7c);
          if (0 < (int)uVar4) {
            iVar2 = 0x1c;
            do {
              cVar1 = FUN_00843eb0(pvVar3,*(uint *)(iVar2 + 0x18 + (int)piStack_138),uStack_160,
                                   uStack_15c,iStack_158,iStack_154,aiStack_7c,'\x01');
              if (cVar1 != '\0') {
                if ((piStack_54 != (int *)0x0) &&
                   (cVar1 = (**(code **)(*piStack_54 + 0x10))(), cVar1 == '\0')) {
                  fVar7 = FUN_0084a990(iStack_1d4 + 8,piStack_54,&fStack_1b8,'\0');
                  fStack_1c4 = (float)(fVar7 + (float10)fStack_1c4);
                }
                if ((piStack_50 != (int *)0x0) &&
                   (cVar1 = (**(code **)(*piStack_50 + 0x10))(), cVar1 == '\0')) {
                  fVar7 = FUN_0084a990(iStack_1d4 + 8,piStack_50,&fStack_1c8,'\0');
                  fStack_1d8 = (float)(fVar7 + (float10)fStack_1d8);
                }
              }
              iVar2 = iVar2 + 0x1c;
              uVar4 = uVar4 - 1;
            } while (uVar4 != 0);
          }
          FUN_00754230(aiStack_7c);
        }
      }
      if (piStack_1b0 != (int *)0x0) {
        fVar7 = FUN_0084a990(iStack_1d4 + 8,piStack_1b0,&fStack_1c8,'\0');
        fStack_1c0 = (float)fVar7;
      }
      if (piStack_1a8 != (int *)0x0) {
        fVar7 = FUN_0084a990(iStack_1d4 + 8,piStack_1a8,&fStack_1c8,'\0');
        fStack_1bc = (float)fVar7;
      }
      if (piStack_19c != (int *)0x0) {
        fVar7 = FUN_0084a990(iStack_1d4 + 8,piStack_19c,&fStack_1c8,'\0');
        fStack_1cc = (float)fVar7;
        if (fVar7 == (float10)DAT_01005198) {
          fStack_1cc = 0.0;
        }
      }
      fStack_1d0 = (fStack_1d8 + fStack_1c4 + fStack_1bc + fStack_1c0) * fStack_1d0;
      pfVar5 = &fStack_1cc;
      if (fStack_1cc <= fStack_1d0) {
        pfVar5 = &fStack_1d0;
      }
      fStack_1d0 = *pfVar5;
      FUN_007594a0(piStack_138,piStack_134);
      if ((piStack_138 != (int *)0x0) && (piStack_138 != piStack_128)) {
        FUN_004e44e0((int)piStack_138);
      }
      FUN_00754230(&iStack_1b4);
      return (float10)fStack_1d0;
    }
    FUN_00754230(&iStack_1b4);
  }
  return (float10)0;
}

