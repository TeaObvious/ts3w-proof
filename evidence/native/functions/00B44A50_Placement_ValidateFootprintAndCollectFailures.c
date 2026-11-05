/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 held footprint gate. cdecl context/optionalFailures, Boolean AL only. Invokes
   selected object gateB44480 and surrounding validation children in original order. Each false
   returns immediately when failuresNULL; with nonnull failures records false and CONTINUES
   following checks. context98 nonzero skips most surrounding children but still runs object gate.
   Additional error records E8/35or36 derive selected child AL; full semantic meanings/record
   allocation unexpanded. context1C catalog is dereferenced on full path without local null guard.
   Debug draw calls gated11EDBC1 may occur on failure and final success; colors/constants not new
   geometry requirements. Several old C child signatures dropped physically pushed optionalFailures;
   scoped cdecl two-pointer overrides restore those caller arguments. No complete placement/routing
   acceptance or parallel execution claim. */

bool __cdecl
Placement_ValidateFootprintAndCollectFailures(void *candidateContext,void *optionalFailures)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  float local_5c;
  undefined4 local_58;
  int local_54;
  float local_50 [19];
  
  bVar1 = true;
  if ((*(int *)((int)candidateContext + 0x98) == 0) &&
     (uVar3 = FUN_00b3d480((int)candidateContext,optionalFailures), (char)uVar3 == '\0')) {
    if (DAT_011edbc1 != '\0') {
      FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xffff6600,0.23);
    }
    if (optionalFailures == (void *)0x0) {
      return false;
    }
    bVar1 = false;
  }
  bVar2 = Placement_TestObjectsForHeldFootprint(candidateContext,optionalFailures);
                    /* Consume AL only. Failure collector NULL means first failure returns false;
                       collector nonnull retains false and continues later checks. */
  if (!bVar2) {
    if (DAT_011edbc1 != '\0') {
      FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xffff0000,0.28);
    }
    if (optionalFailures == (void *)0x0) {
      return false;
    }
    bVar1 = false;
  }
  if (*(int *)((int)candidateContext + 0x98) == 0) {
    uVar3 = FUN_00b3c5b0(candidateContext,optionalFailures);
    if ((char)uVar3 == '\0') {
      if (DAT_011edbc1 != '\0') {
        FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xffff6600,0.22);
      }
      if (optionalFailures == (void *)0x0) {
        return false;
      }
      bVar1 = false;
    }
    bVar2 = FUN_00b3d840(candidateContext,optionalFailures);
    if (!bVar2) {
      if (DAT_011edbc1 != '\0') {
        FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xffff0000,0.26);
      }
      if (optionalFailures == (void *)0x0) {
        return false;
      }
      BuildEditErrorRecord_InitializeAtLotPoint
                (local_50,0xe8,*(undefined **)((int)candidateContext + 4),
                 (LotPaintPoint *)((int)candidateContext + 8),0,0);
      FUN_00ad8570(optionalFailures,local_50);
      bVar1 = false;
      FUN_00ad70d0((int)local_50);
    }
    bVar2 = FUN_00b3f8c0(candidateContext,optionalFailures);
    if (!bVar2) {
      if (DAT_011edbc1 != '\0') {
        FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xffcc0066,0.27);
      }
      if (optionalFailures == (void *)0x0) {
        return false;
      }
      bVar1 = false;
    }
    uVar3 = FUN_00b3c450((int)candidateContext,optionalFailures);
    if ((char)uVar3 == '\0') {
      if (optionalFailures == (void *)0x0) {
        return false;
      }
      bVar1 = false;
    }
    if (((*(uint *)(*(int *)((int)candidateContext + 0x1c) + 0x98) >> 10 & 1) == 0) &&
       (bVar2 = FUN_00b3c520(candidateContext,optionalFailures), !bVar2)) {
      local_5c = *(float *)((int)candidateContext + 8);
      local_58 = *(undefined4 *)((int)candidateContext + 0xc);
      local_54 = *(int *)((int)candidateContext + 0x10) + -1;
      uVar3 = FUN_00b05240(*(void **)((int)candidateContext + 4),&local_5c);
      if (optionalFailures == (void *)0x0) {
        return false;
      }
      BuildEditErrorRecord_InitializeAtLotPoint
                (local_50,((char)uVar3 != '\0') + 0x35,*(undefined **)((int)candidateContext + 4),
                 (LotPaintPoint *)((int)candidateContext + 8),0,0);
      FUN_00ad8570(optionalFailures,local_50);
      FUN_00ad70d0((int)local_50);
      return false;
    }
    if ((bVar1) && (DAT_011edbc1 != '\0')) {
      FUN_00b3b460((int)candidateContext,(int *)((int)candidateContext + 0xa0),0xff00ff00,0.3);
    }
  }
  return bVar1;
}

