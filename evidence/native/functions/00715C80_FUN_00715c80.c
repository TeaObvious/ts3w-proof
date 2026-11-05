/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined4 FUN_00715c80(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)FUN_004afe80();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  puVar2 = FUN_004e4760(0x10,"SpeedTree/Factory",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    ResourceFactory_ConstructIdentity(puVar2,0xb552ea,0xb55254);
    *puVar2 = &PTR_FUN_00ffccf8;
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_004e4760(8,"SpeedTree/DataFactory",0);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = &PTR_LAB_00fb31f4;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_00ffce10;
    uVar3 = (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  uVar3 = (**(code **)(*piVar1 + 0x28))(1,0,0);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

