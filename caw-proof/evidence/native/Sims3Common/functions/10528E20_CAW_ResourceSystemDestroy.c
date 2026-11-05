/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Resource-system destructor clears the owned hash-table list
   nodes at+758 alongside other resource state. Original filename list is resource-system lifetime
   state; ordinary package closure and FlushCaches do not regenerate it. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __fastcall CAW_ResourceSystemDestroy(undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  
  *param_1 = &PTR_LAB_10b18fb0;
  param_1[2] = &PTR_LAB_10b18f10;
  param_1[0x76] = &PTR_LAB_10b18f04;
  piVar4 = (int *)FUN_1039a170();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x48))(L"Save streaming config");
  }
  FUN_10522fc0(param_1 + 0x1da);
  puVar3 = (undefined4 *)param_1[0x1d6];
  while (puVar3 != param_1 + 0x1d6) {
    puVar1 = (undefined4 *)*puVar3;
    FUN_10918e90((int)puVar3);
    puVar3 = puVar1;
  }
  iVar2 = param_1[0x1d1];
  if ((2 < (int)(param_1[0x1d3] - iVar2 & 0xfffffffeU)) && (iVar2 != 0)) {
    FUN_10918e90(iVar2);
  }
  FUN_101fafc0(param_1[0x1cd],param_1[0x1ce]);
  if (param_1[0x1cd] != 0) {
    FUN_10918e90(param_1[0x1cd]);
  }
  FUN_10842630((int *)param_1[0x1c9],(int *)param_1[0x1ca]);
  if (param_1[0x1c9] != 0) {
    FUN_10918e90(param_1[0x1c9]);
  }
  iVar2 = param_1[0x142];
  if (((2 < (int)(param_1[0x144] - iVar2 & 0xfffffffeU)) && (iVar2 != 0)) &&
     (iVar2 != param_1[0x146])) {
    FUN_10918e90(iVar2);
  }
  iVar2 = param_1[0xbb];
  if (((2 < (int)(param_1[0xbd] - iVar2 & 0xfffffffeU)) && (iVar2 != 0)) && (iVar2 != param_1[0xbf])
     ) {
    FUN_10918e90(iVar2);
  }
  puVar3 = (undefined4 *)param_1[0xb8];
  while (puVar3 != param_1 + 0xb8) {
    puVar1 = (undefined4 *)*puVar3;
    FUN_10918e90((int)puVar3);
    puVar3 = puVar1;
  }
  if (param_1[0xae] != 0) {
    FUN_10918e90(param_1[0xae]);
  }
  if (param_1[0xaa] != 0) {
    FUN_10918e90(param_1[0xaa]);
  }
  FUN_10916640((LPCRITICAL_SECTION)(param_1 + 0x9e));
  FUN_10916640((LPCRITICAL_SECTION)(param_1 + 0x92));
  FUN_10916640((LPCRITICAL_SECTION)(param_1 + 0x86));
  if (param_1[0x81] != 0) {
    FUN_10918e90(param_1[0x81]);
  }
  if (param_1[0x7d] != 0) {
    FUN_10918e90(param_1[0x7d]);
  }
  param_1[0x7a] = &PTR_LAB_10ab3a7c;
  param_1[0x76] = &PTR_LAB_10ab3a7c;
  FUN_108e8690(param_1 + 2);
  return;
}

