/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __fastcall FUN_00783a10(undefined4 *param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  int *piVar3;
  bool bVar4;
  
  puVar1 = param_1 + 1;
  *param_1 = &PTR_FUN_0100fbbc;
  *puVar1 = &PTR_LAB_0100fbb4;
  pvVar2 = (void *)FUN_007ecf80();
  if (pvVar2 != (void *)0x0) {
    FUN_007ecf90(0);
    FUN_007ed580((int)pvVar2);
    Memory_FreeIfNonNull(pvVar2);
  }
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  DAT_011d7988 = 0;
  FUN_00782d70(param_1[3],param_1[4]);
  pvVar2 = DAT_011d798c;
  bVar4 = DAT_011d798c != (void *)0x0;
  param_1[5] = 0;
  if (bVar4) {
    FUN_007424d0((int)pvVar2);
    pvVar2 = DAT_011d798c;
    if (DAT_011d798c != (void *)0x0) {
      FUN_00742630((int)DAT_011d798c);
      Memory_FreeIfNonNull(pvVar2);
    }
    DAT_011d798c = (void *)0x0;
  }
  piVar3 = (int *)FUN_007693a0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x2c))(puVar1,0xf0707d65,0xffffd8f1);
    (**(code **)(*piVar3 + 0x2c))(puVar1,0x7983246,0xffffd8f1);
    (**(code **)(*piVar3 + 0x2c))(puVar1,0xfbc9b988,0);
    (**(code **)(*piVar3 + 0x2c))(puVar1,0xe777fb0d,0);
    (**(code **)(*piVar3 + 0x2c))(puVar1,0x49afd6a0,0);
  }
  FUN_0077f9c0((int *)param_1[0x12],(int *)param_1[0x13]);
  if ((void *)param_1[0x12] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[0x12]);
  }
  FUN_00782d70(param_1[3],param_1[4]);
  param_1[5] = 0;
  if (1 < (uint)param_1[4]) {
    Memory_FreeIfNonNull((void *)param_1[3]);
  }
  *puVar1 = &PTR_LAB_00fb3ccc;
  *param_1 = &PTR_LAB_00fdf6c0;
  return;
}

