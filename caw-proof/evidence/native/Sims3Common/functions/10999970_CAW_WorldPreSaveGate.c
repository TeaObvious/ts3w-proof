/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 internal pre-save gate reached from WorldWrap_Save at 0x10999B39. It rejects missing
   world context or global service, traverses a collection of pending resources, conditionally
   schedules preparation, and pumps WorldWrap_Update plus scene draw until a completion byte
   changes; it returns a byte flag. This is preparatory behavior, not the full save writer. Ghidra
   variable names and scheduler states remain unverified. */

undefined1 __fastcall CAW_WorldPreSaveGate(int *param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  bool bVar6;
  bool bVar7;
  uint uVar8;
  void *pvVar9;
  uint uVar10;
  float10 fVar11;
  LARGE_INTEGER local_24;
  int *local_1c;
  uint local_18;
  LONG local_14;
  undefined4 local_10;
  undefined4 local_c;
  int local_8;
  
  pvVar9 = DAT_10c71150;
  if (((void *)param_1[8] == (void *)0x0) || (DAT_10c71150 == (void *)0x0)) {
    return 0;
  }
  local_1c = (int *)FUN_1023d040((void *)param_1[8],'\x01');
  uVar10 = local_1c[1] - *local_1c >> 2;
  bVar6 = false;
  local_24.s.LowPart = 0;
  if (uVar10 != 0) {
    do {
      iVar2 = *(int *)(*local_1c + local_24.s.LowPart * 4);
      if (iVar2 != 0) {
        uVar3 = *(undefined4 *)(iVar2 + 0x4c);
        uVar4 = *(undefined4 *)(iVar2 + 0x48);
        bVar7 = FUN_1032c3e0(pvVar9,uVar4,uVar3,4);
        if ((bVar7) &&
           (uVar8 = FUN_10339ef0(pvVar9,uVar4,uVar3,uVar4,uVar3,4,0,param_1), (char)uVar8 != '\0'))
        {
          bVar6 = true;
        }
      }
      local_24.s.LowPart = local_24.s.LowPart + 1;
    } while (local_24.s.LowPart < uVar10);
    if (bVar6) {
      *(undefined1 *)(param_1 + 9) = 0;
      FUN_10926ca0(&local_18,5,'\x01');
      pvVar9 = (void *)FUN_104de3a0();
      cVar1 = (char)param_1[9];
      while (cVar1 == '\0') {
        fVar11 = FUN_10926ab0(&local_18);
        local_1c = (int *)(float)fVar11;
        local_18 = 0;
        local_14 = 0;
        local_10 = 0;
        local_c = 0;
        if (local_8 == 1) {
          uVar5 = rdtsc();
          local_14 = (LONG)((ulonglong)uVar5 >> 0x20);
          local_18 = (uint)uVar5;
        }
        else {
          QueryPerformanceCounter(&local_24);
          local_14 = local_24.s.HighPart;
          local_18 = local_24.s.LowPart;
        }
        FUN_10386aa0(local_1c,0);
        WorldWrap_Update((void *)param_1[8],0.0,0.0);
        if (pvVar9 != (void *)0x0) {
          SceneManWrap_DrawScene(pvVar9);
        }
        cVar1 = (char)param_1[9];
      }
      return *(undefined1 *)((int)param_1 + 0x25);
    }
  }
  return 1;
}

