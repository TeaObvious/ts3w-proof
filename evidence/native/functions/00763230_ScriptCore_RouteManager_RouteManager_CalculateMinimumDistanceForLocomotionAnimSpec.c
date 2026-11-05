/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01161c50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar2;
  uint uVar3;
  float *pfVar4;
  int iVar5;
  int iVar6;
  float10 fVar7;
  float fStack_1d8;
  void *pvStack_1d4;
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
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
    if (pvVar2 == (void *)0x0) {
      pvStack_1d4 = (void *)0x0;
    }
    else {
      pvStack_1d4 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
    }
    pvVar2 = DAT_011da140;
    fStack_1d0 = DAT_01150628;
    FUN_007515c0(&iStack_1b4);
    cVar1 = ResolveLocomotionStyleForAttributes(pvVar2,param_3,param_4,param_5,param_6,&iStack_1b4);
    if ((cVar1 != '\0') && (pvStack_1d4 != (void *)0x0)) {
      piStack_138 = aiStack_124;
      piStack_130 = aiStack_7c;
      pcStack_12c = "EASTL fixed_vector";
      piStack_134 = piStack_138;
      piStack_128 = piStack_138;
      uVar3 = FindOrBuildLocomotionVariantSequence
                        (pvVar2,param_3,param_4 | param_6,(uint *)&piStack_138);
      if (cStack_14f != '\0') {
        fStack_1d0 = 0.001;
      }
      fStack_1c0 = 0.0;
      fStack_1bc = 0.0;
      fStack_1c4 = 0.0;
      fStack_1d8 = 0.0;
      fStack_1cc = 0.0;
      if (0 < (int)uVar3) {
        iVar6 = (int)piStack_134 - (int)piStack_138 >> 0x1f;
        iVar5 = ((int)piStack_134 - (int)piStack_138) / 0x1c + iVar6;
        if ((iVar5 != iVar6) && ((int)uVar3 < iVar5 - iVar6)) {
          ResolveLocomotionStyleRecordWithFallback
                    (pvVar2,piStack_138[6],uStack_160,uStack_15c,iStack_158,iStack_154,&iStack_1b4,
                     '\x01');
          FUN_007515c0(aiStack_7c);
          if (0 < (int)uVar3) {
            iVar6 = 0x1c;
            do {
              cVar1 = ResolveLocomotionStyleRecordWithFallback
                                (pvVar2,*(uint *)(iVar6 + 0x18 + (int)piStack_138),uStack_160,
                                 uStack_15c,iStack_158,iStack_154,aiStack_7c,'\x01');
              if (cVar1 != '\0') {
                if ((piStack_54 != (int *)0x0) &&
                   (cVar1 = (**(code **)(*piStack_54 + 0x10))(), cVar1 == '\0')) {
                  fVar7 = FUN_0084a990((int)pvStack_1d4 + 8,piStack_54,&fStack_1b8,'\0');
                  fStack_1c4 = (float)(fVar7 + (float10)fStack_1c4);
                }
                if ((piStack_50 != (int *)0x0) &&
                   (cVar1 = (**(code **)(*piStack_50 + 0x10))(), cVar1 == '\0')) {
                  fVar7 = FUN_0084a990((int)pvStack_1d4 + 8,piStack_50,&fStack_1c8,'\0');
                  fStack_1d8 = (float)(fVar7 + (float10)fStack_1d8);
                }
              }
              iVar6 = iVar6 + 0x1c;
              uVar3 = uVar3 - 1;
            } while (uVar3 != 0);
          }
          FUN_00754230(aiStack_7c);
        }
      }
      if (piStack_1b0 != (int *)0x0) {
        fVar7 = FUN_0084a990((int)pvStack_1d4 + 8,piStack_1b0,&fStack_1c8,'\0');
        fStack_1c0 = (float)fVar7;
      }
      if (piStack_1a8 != (int *)0x0) {
        fVar7 = FUN_0084a990((int)pvStack_1d4 + 8,piStack_1a8,&fStack_1c8,'\0');
        fStack_1bc = (float)fVar7;
      }
      if (piStack_19c != (int *)0x0) {
        fVar7 = FUN_0084a990((int)pvStack_1d4 + 8,piStack_19c,&fStack_1c8,'\0');
        fStack_1cc = (float)fVar7;
        if (fVar7 == (float10)3.4028235e+38) {
          fStack_1cc = 0.0;
        }
      }
      fStack_1d0 = (fStack_1d8 + fStack_1c4 + fStack_1bc + fStack_1c0) * fStack_1d0;
      pfVar4 = &fStack_1cc;
      if (fStack_1cc <= fStack_1d0) {
        pfVar4 = &fStack_1d0;
      }
      fStack_1d0 = *pfVar4;
      FUN_007594a0(piStack_138,piStack_134);
      if ((piStack_138 != (int *)0x0) && (piStack_138 != piStack_128)) {
        Memory_FreeIfNonNull(piStack_138);
      }
      FUN_00754230(&iStack_1b4);
      return (float10)fStack_1d0;
    }
    FUN_00754230(&iStack_1b4);
  }
  return (float10)0;
}

