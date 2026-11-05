/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll PE export WorldWrap_Save (RVA 0x999AF0). Pristine CSHostWrap
   declares int WorldWrap_Save(IntPtr world, LPWStr saveFilePath, int endianType); WorldWrap.Save
   tests result == 1. Native instructions allocate a save context, call preparatory 0x10999970,
   submit a task, then repeatedly update the world/scene while task state is outside {6,7}; at
   0x10999C7A–0x10999C9A they return integer 1 only for state 6 and 0 otherwise. The path and
   endian words are copied into task arguments at 0x10999B8A–0x10999B9E. Treat task states 6/7 as
   observed numeric states until their enum is proven. Ghidra's bool rendering is a simplification
   of the 32-bit native result; no on-disk save/reopen is claimed by static analysis. */

bool __cdecl WorldWrap_Save(void *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined8 uVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  float10 fVar6;
  int local_34;
  float fStack_30;
  LARGE_INTEGER LStack_2c;
  void *pvStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  uint uStack_18;
  LONG LStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  int iStack_8;
  
                    /* 0x999af0  2692  WorldWrap_Save */
  piVar3 = (int *)FUN_10918eb0(0x28,"WorldWrap/WorldWrap_Save/ThumbnailCreationHelper",0);
  if (piVar3 == (int *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    FUN_10325520(piVar3);
    *piVar3 = (int)&PTR_FUN_10b97c18;
    piVar3[8] = (int)param_1;
    *(undefined1 *)(piVar3 + 9) = 0;
    *(undefined1 *)((int)piVar3 + 0x25) = 0;
    (**(code **)(*piVar3 + 4))();
  }
  cVar2 = CAW_WorldPreSaveGate(piVar3);
  if (cVar2 != '\0') {
    piVar4 = (int *)FUN_103935f0();
    local_34 = 0;
    cVar2 = (**(code **)(*piVar4 + 0x10))(&local_34);
    if (cVar2 != '\0') {
      uStack_1c = param_3;
      uStack_20 = param_2;
      pvStack_24 = param_1;
      *(undefined4 *)(local_34 + 0x20) = 4;
      *(undefined1 **)(local_34 + 8) = &LAB_10998500;
      *(void ***)(local_34 + 0xc) = &pvStack_24;
      FUN_103947d0(local_34);
      FUN_10926ca0(&uStack_18,5,'\x01');
      while( true ) {
        iVar5 = FUN_103936b0(local_34);
        if (iVar5 - 6U < 2) break;
        fVar6 = FUN_10926ab0(&uStack_18);
        fStack_30 = (float)fVar6;
        uStack_18 = 0;
        LStack_14 = 0;
        uStack_10 = 0;
        uStack_c = 0;
        if (iStack_8 == 1) {
          uVar1 = rdtsc();
          LStack_14 = (LONG)((ulonglong)uVar1 >> 0x20);
          uStack_18 = (uint)uVar1;
        }
        else {
          QueryPerformanceCounter(&LStack_2c);
          LStack_14 = LStack_2c.s.HighPart;
          uStack_18 = LStack_2c.s.LowPart;
        }
        FUN_10386aa0(fStack_30,0);
        WorldWrap_Update(param_1,0.0,0.0);
        iVar5 = FUN_104de3a0();
        if (iVar5 != 0) {
          FUN_104de5a0(iVar5);
        }
      }
      iVar5 = FUN_103936b0(local_34);
      if (local_34 != 0) {
        FUN_10394e10(local_34);
      }
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 8))();
      }
      return iVar5 == 6;
    }
    if (local_34 != 0) {
      FUN_10394e10(local_34);
    }
  }
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 8))();
  }
  return false;
}

