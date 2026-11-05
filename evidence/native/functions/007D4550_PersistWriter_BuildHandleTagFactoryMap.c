/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). Physical ECX is the writer although DB
   projects no parameters. Enumerates interface 0519E079 factories, queries each count at +10h and
   tag in AL at +14h, and populates the writer tag-to-factory map at +7Ch. Selected factory
   enumeration and map ownership only; no prototype change or general serialized-type coverage
   claim. */

void PersistWriter_BuildHandleTagFactoryMap(void)

{
  int iVar1;
  byte bVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  byte **ppbVar6;
  byte *pbVar7;
  uint unaff_EBX;
  undefined4 *puVar8;
  char *pcStack_60;
  uint uStack_58;
  int iStack_54;
  char *pcStack_4c;
  byte *local_48;
  int iStack_44;
  byte *pbStack_40;
  int iStack_3c;
  byte abStack_38 [4];
  undefined4 uStack_34;
  byte *apbStack_30 [3];
  undefined4 *puStack_24;
  undefined4 *apuStack_18 [5];
  
  piVar3 = (int *)FUN_00593930();
  uVar4 = (**(code **)*piVar3)();
  pcStack_4c = "Services/PersistWriter";
  FUN_00d4c330(apuStack_18,uVar4,&pcStack_4c);
  uVar5 = uVar4;
  puVar8 = apuStack_18[0];
  if (uVar4 != 0) {
    for (; uVar5 != 0; uVar5 = uVar5 - 1) {
      *puVar8 = 0;
      puVar8 = puVar8 + 1;
    }
  }
  uVar5 = (**(code **)(*piVar3 + 4))(0x519e079,apuStack_18[0],uVar4);
  if (uVar5 < uVar4) {
    uVar4 = uVar5;
    unaff_EBX = uVar5;
  }
  uStack_58 = 0;
  puVar8 = apuStack_18[0];
  if (uVar4 != 0) {
    do {
      piVar3 = (int *)puVar8[uStack_58];
      pcStack_4c = (char *)(**(code **)(*piVar3 + 0x10))();
      pcStack_60 = (char *)0x0;
      if (pcStack_4c != (char *)0x0) {
        do {
          bVar2 = (**(code **)(*piVar3 + 0x14))(pcStack_60);
          uVar5 = *(uint *)(iStack_54 + 0x84);
          iVar1 = *(int *)(iStack_54 + 0x80);
          for (pbVar7 = *(byte **)(iVar1 + ((uint)bVar2 % uVar5) * 4); pbVar7 != (byte *)0x0;
              pbVar7 = *(byte **)(pbVar7 + 8)) {
            if (bVar2 == *pbVar7) {
              local_48 = pbVar7;
              iStack_44 = iVar1 + ((uint)bVar2 % uVar5) * 4;
              ppbVar6 = &local_48;
              goto LAB_007d4635;
            }
          }
          iStack_3c = iVar1 + uVar5 * 4;
          pbStack_40 = *(byte **)(iVar1 + uVar5 * 4);
          ppbVar6 = &pbStack_40;
LAB_007d4635:
          pbVar7 = *ppbVar6;
          if (*ppbVar6 == *(byte **)(iVar1 + uVar5 * 4)) {
            uStack_34 = 0;
            abStack_38[0] = bVar2;
            FUN_007d40f0((void *)(iStack_54 + 0x7c),apbStack_30,abStack_38);
            pbVar7 = apbStack_30[0];
          }
          *(int **)(pbVar7 + 4) = piVar3;
          pcStack_60 = pcStack_60 + 1;
          uVar4 = unaff_EBX;
          puVar8 = puStack_24;
        } while (pcStack_60 < pcStack_4c);
      }
      uStack_58 = uStack_58 + 1;
    } while (uStack_58 < uVar4);
  }
  if (puVar8 != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(puVar8);
  }
  return;
}

