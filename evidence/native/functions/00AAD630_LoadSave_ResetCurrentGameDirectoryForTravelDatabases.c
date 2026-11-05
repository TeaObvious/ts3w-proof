/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: clears SimStoragepaths, resolves user-save directory, operates
   CurrentGame.sims3 then rebinds009ca420 via00aad150(1,1). Two bounded retry loops each10 attempts
   and500 millisecond wait via004e1830; this is filesystem retry rather than gameplay routing wait.
   Exact file helper contracts remainopen. */

uint LoadSave_ResetCurrentGameDirectoryForTravelDatabases(void)

{
  char cVar1;
  void *pvVar2;
  int *piVar3;
  ushort *puVar4;
  LPCWSTR pWVar5;
  undefined3 extraout_var;
  uint uVar6;
  uint uVar7;
  short *psVar8;
  undefined3 extraout_var_00;
  undefined4 uVar9;
  DWORD DStack_414;
  undefined2 local_410 [520];
  
  pvVar2 = DownloadContent_GetOwnerFromGlobalLink();
  if ((pvVar2 != (void *)0x0) && (*(void **)((int)pvVar2 + 0x664) != (void *)0x0)) {
    SimStorage_ConfigureTravelAndExportPaths
              (*(void **)((int)pvVar2 + 0x664),(undefined4 *)0x0,(short *)0x0,1);
  }
  FUN_004ec7e0(local_410);
  piVar3 = (int *)FUN_0072f140();
  puVar4 = (ushort *)(**(code **)(*piVar3 + 0x24))();
  if ((puVar4 == (ushort *)0x0) || (*puVar4 == 0)) {
LAB_00aad695:
    return (uint)puVar4 & 0xffffff00;
  }
  FUN_004edf60(local_410,puVar4);
  pWVar5 = (LPCWSTR)FUN_007e51a0(local_410);
  cVar1 = FUN_004dd2f0(pWVar5);
  puVar4 = (ushort *)CONCAT31(extraout_var,cVar1);
  if (cVar1 == '\0') goto LAB_00aad695;
  FUN_004ee400(local_410,(short *)PTR_u_CurrentGame_sims3_01183ddc,0);
  pWVar5 = (LPCWSTR)FUN_007e51a0(local_410);
  uVar6 = FUN_004dc130(pWVar5);
  if ((char)uVar6 != '\0') {
    uVar6 = 0;
    while( true ) {
      cVar1 = '\x01';
      pWVar5 = (LPCWSTR)FUN_007e51a0(local_410);
      uVar7 = FUN_004dcf00(pWVar5,cVar1);
      if ((char)uVar7 != '\0') break;
      DStack_414 = 500;
      uVar7 = FUN_004e1830(&DStack_414);
      uVar6 = uVar6 + 1;
      if (9 < uVar6) {
        return uVar7 & 0xffffff00;
      }
    }
    if (9 < uVar6) goto LAB_00aad752;
  }
  uVar6 = 0;
  while( true ) {
    psVar8 = (short *)FUN_007e51a0(local_410);
    cVar1 = FUN_004dd040(psVar8);
    uVar7 = CONCAT31(extraout_var_00,cVar1);
    if (cVar1 != '\0') break;
    DStack_414 = 500;
    uVar7 = FUN_004e1830(&DStack_414);
    uVar6 = uVar6 + 1;
    if (9 < uVar6) {
      return uVar7 & 0xffffff00;
    }
  }
  if (uVar6 < 10) {
    uVar9 = LoadSave_ConfigureCurrentTravelDatabases('\x01',1);
    return CONCAT31((int3)((uint)uVar9 >> 8),1);
  }
LAB_00aad752:
  return uVar7 & 0xffffff00;
}

