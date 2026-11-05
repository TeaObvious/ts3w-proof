/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. No stack arguments, boolean AL
   return. Builds10 original S3SA(type073faa07) resource-key entries in a set; expected version
   string literal at00fcd770 is0.2.0.209. Resource-manager+18 lookup then interface keyaac61b8d;
   present interface exposes UTF16 version buffer+34/+38. Missing version or mismatch returnsAL0
   after releases; failed lookups or absent interface are skipped. This routine does not itself
   establish resource-to-CLR conversion, cryptographic verification or complete assembly trust
   policy. */

bool MonoScriptHost_CheckCoreAssemblyResourceVersions(void)

{
  ushort uVar1;
  char cVar2;
  void *pvVar3;
  ushort **ppuVar4;
  int *piVar5;
  ushort *puVar6;
  int iVar7;
  ushort *puVar8;
  int *piVar9;
  bool bVar10;
  int *local_58;
  int *local_54;
  void *local_50 [2];
  int local_48;
  void *local_40;
  undefined1 *local_3c;
  int local_38;
  char *local_34;
  ushort *local_30;
  undefined1 *local_2c;
  undefined2 *local_28;
  char *local_24;
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  undefined4 local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_10 = 1.0;
  local_c = 0x40000000;
  local_4 = "Scratch/MonoscriptHost/SignedAssemblyKeyHashSet";
  local_18 = 1;
  local_1c = &DAT_0114d900;
  local_14 = 0;
  local_8 = 0;
  local_30 = (ushort *)0x304d0c4f;
  local_2c = (undefined1 *)0x78cf6cf5;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0x6acba941;
  local_2c = (undefined1 *)0x2821ff5;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0xb70add42;
  local_2c = (undefined1 *)0xc356df69;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0xddc99fb1;
  local_2c = (undefined1 *)0x600f9ea1;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0xebdba826;
  local_2c = (undefined1 *)0xac981e6c;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_30 = (ushort *)0x3ce868c;
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_2c = (undefined1 *)0x3d6c8d9;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0x6793bc0a;
  local_2c = (undefined1 *)0xb9c90fdc;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0x96d4e765;
  local_2c = (undefined1 *)0xf7c3ade8;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0xc99c09c7;
  local_2c = (undefined1 *)0xce8e043;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_30 = (ushort *)0x1e05b2b3;
  local_2c = (undefined1 *)0xcae1c36;
  local_28 = (undefined2 *)0x73faa07;
  local_24 = (char *)0x0;
  FUN_00549670(local_20,local_50,(uint *)&local_30);
  local_40 = (void *)0x0;
  local_3c = (undefined1 *)0x0;
  local_38 = 0;
  local_34 = "Scratch/MonoscriptHost/LoadImage/BuildStr8";
  pvVar3 = (void *)FUN_004e4500(10,"Scratch/MonoscriptHost/LoadImage/BuildStr8",0);
  local_38 = (int)pvVar3 + 10;
  local_40 = pvVar3;
  local_3c = pvVar3;
  memmove(pvVar3,&DAT_00fcd770,9);
  local_3c = (undefined1 *)((int)pvVar3 + 9);
  *local_3c = 0;
  local_30 = (ushort *)&DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_24 = "Scratch/MonoscriptHost/LoadImage/BuildStr16";
  local_28 = &DAT_011c8e56;
  ppuVar4 = FUN_004f3c90(local_50,&local_40);
  if (ppuVar4 != &local_30) {
    FUN_00408d60(&local_30,*ppuVar4,ppuVar4[1]);
  }
  if ((2 < (int)(local_48 - (int)local_50[0] & 0xfffffffeU)) && (local_50[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_50[0]);
  }
  local_54 = (int *)FUN_004afe80();
  pvVar3 = (void *)*local_1c;
  piVar9 = local_1c;
  if (pvVar3 == (void *)0x0) {
    piVar9 = local_1c + 1;
    iVar7 = local_1c[1];
    while (iVar7 == 0) {
      piVar9 = piVar9 + 1;
      iVar7 = *piVar9;
    }
    pvVar3 = (void *)*piVar9;
  }
  local_50[0] = (void *)local_1c[local_18];
  if (pvVar3 != local_50[0]) {
    do {
      local_58 = (int *)0x0;
      cVar2 = (**(code **)(*local_54 + 0x18))(pvVar3,&local_58,0,0,0,0);
      if (cVar2 == '\0') {
LAB_00d75ff8:
        if (local_58 != (int *)0x0) {
          (**(code **)(*local_58 + 4))();
        }
      }
      else if (local_58 != (int *)0x0) {
        piVar5 = (int *)(**(code **)(*local_58 + 0xc))(0xaac61b8d);
        if (piVar5 != (int *)0x0) {
          (**(code **)*piVar5)();
          puVar6 = (ushort *)piVar5[0xd];
          if (puVar6 == (ushort *)piVar5[0xe]) {
            puVar6 = (ushort *)0x0;
          }
          if (puVar6 == (ushort *)0x0) {
LAB_00d7602d:
            (**(code **)(*piVar5 + 4))();
            if (local_58 != (int *)0x0) {
              (**(code **)(*local_58 + 4))();
            }
            if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) &&
               (local_30 != (ushort *)0x0)) {
              Memory_FreeIfNonNull(local_30);
            }
            if ((1 < local_38 - (int)local_40) && (local_40 != (void *)0x0)) {
              Memory_FreeIfNonNull(local_40);
            }
            FUN_00b305a0((int)local_1c,local_18);
            local_14 = 0;
            if (1 < local_18) {
              Memory_FreeIfNonNull(local_1c);
            }
            return false;
          }
          puVar8 = local_30;
          do {
            uVar1 = *puVar6;
            bVar10 = uVar1 < *puVar8;
            if (uVar1 != *puVar8) {
LAB_00d75fe6:
              iVar7 = (1 - (uint)bVar10) - (uint)(bVar10 != 0);
              goto LAB_00d75feb;
            }
            if (uVar1 == 0) break;
            uVar1 = puVar6[1];
            bVar10 = uVar1 < puVar8[1];
            if (uVar1 != puVar8[1]) goto LAB_00d75fe6;
            puVar6 = puVar6 + 2;
            puVar8 = puVar8 + 2;
          } while (uVar1 != 0);
          iVar7 = 0;
LAB_00d75feb:
          if (iVar7 != 0) goto LAB_00d7602d;
          (**(code **)(*piVar5 + 4))();
        }
        goto LAB_00d75ff8;
      }
      pvVar3 = *(void **)((int)pvVar3 + 0x10);
      while (pvVar3 == (void *)0x0) {
        piVar5 = piVar9 + 1;
        piVar9 = piVar9 + 1;
        pvVar3 = (void *)*piVar5;
      }
    } while (pvVar3 != local_50[0]);
  }
  if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (ushort *)0x0)) {
    Memory_FreeIfNonNull(local_30);
  }
  if ((1 < local_38 - (int)local_40) && (local_40 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_40);
  }
  FUN_00b305a0((int)local_1c,local_18);
  local_14 = 0;
  if (1 < local_18) {
    Memory_FreeIfNonNull(local_1c);
  }
  return true;
}

