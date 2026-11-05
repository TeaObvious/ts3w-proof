/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Open metadata database and select exact
   resource type628A788F,group0,instance1. This is not first arbitrary live resource or lowest typed
   instance. Factory read owns stream/status and constructed metadata. */

undefined4 __thiscall
LoadSaveMetadata_OpenReadDatabase(void *this,undefined4 *param_1,undefined4 *param_2)

{
  void *pvVar1;
  char cVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  wchar_t *pwVar5;
  undefined4 *puVar6;
  void *pvVar7;
  undefined4 uVar8;
  int *piVar9;
  int iVar10;
  undefined4 *unaff_ESI;
  undefined4 *puVar11;
  void *unaff_EDI;
  undefined4 uStack_438;
  tm *local_434;
  undefined8 local_430;
  undefined4 local_418 [261];
  
  FUN_004ec7e0((undefined2 *)local_418);
  puVar6 = param_1;
  puVar11 = local_418;
  for (iVar10 = 0x104; iVar10 != 0; iVar10 = iVar10 + -1) {
    *puVar11 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar11 = puVar11 + 1;
  }
  pWVar3 = (LPCWSTR)FUN_007e51a0(local_418);
  uVar4 = FUN_004dc130(pWVar3);
  iVar10 = 0x104;
  puVar6 = local_418;
  if ((char)uVar4 == '\0') {
    puVar11 = param_1 + 0x318;
  }
  else {
    puVar11 = param_1 + 0x41c;
  }
  for (; iVar10 != 0; iVar10 = iVar10 + -1) {
    *puVar6 = *puVar11;
    puVar11 = puVar11 + 1;
    puVar6 = puVar6 + 1;
  }
  iVar10 = 2;
  pwVar5 = (wchar_t *)FUN_007e51a0(local_418);
  local_430 = FUN_004dbec0(pwVar5,iVar10);
  local_434 = _localtime64(&local_430);
  puVar6 = FUN_004e4760(0xb0,"World/LoadSaveManager/MetadataDB",0);
  if (puVar6 == (undefined4 *)0x0) {
    pvVar7 = (void *)0x0;
  }
  else {
    pvVar7 = FUN_0072cc50(puVar6,0);
  }
  pvVar1 = *(void **)((int)this + 0x2c);
  if (pvVar7 != pvVar1) {
    if (pvVar7 != (void *)0x0) {
      (*(code *)**(undefined4 **)((int)pvVar7 + 4))();
    }
    *(void **)((int)this + 0x2c) = pvVar7;
    if (pvVar1 != (void *)0x0) {
      (**(code **)(*(int *)((int)pvVar1 + 4) + 4))();
    }
  }
  cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 4))();
  if (cVar2 != '\0') {
    iVar10 = **(int **)((int)this + 0x2c);
    uVar8 = FUN_007e51a0(local_418);
    (**(code **)(iVar10 + 0x2c))(uVar8);
    cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 0x18))(1,3,0);
    if (cVar2 != '\0') {
      uStack_438 = 1;
      local_434 = (tm *)0x0;
      local_430._0_4_ = 0x628a788f;
      local_430._4_4_ = 0;
      piVar9 = (int *)FUN_004afe80();
      cVar2 = (**(code **)(*piVar9 + 0xc))
                        (&uStack_438,&stack0xfffffbb8,0,*(undefined4 *)((int)this + 0x2c),0,0);
      if (cVar2 != '\0') {
        *param_2 = unaff_EDI;
        uVar8 = FUN_0059dc80(unaff_EDI,(short)unaff_ESI[2],(short)unaff_ESI[1],(short)*unaff_ESI,
                             (short)unaff_ESI[3],(short)unaff_ESI[4] + 1,(short)unaff_ESI[5] + 0x76c
                            );
        return CONCAT31((int3)((uint)uVar8 >> 8),1);
      }
    }
    (**(code **)(**(int **)((int)this + 0x2c) + 8))();
  }
  iVar10 = *(int *)((int)this + 0x2c);
  uVar4 = 0;
  if (iVar10 != 0) {
    *(undefined4 *)((int)this + 0x2c) = 0;
    uVar4 = (**(code **)(*(int *)(iVar10 + 4) + 4))();
  }
  return uVar4 & 0xffffff00;
}

