/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  void *_Dst;
  ushort **ppuVar3;
  int *piVar4;
  ushort *puVar5;
  int iVar6;
  ushort *puVar7;
  int *piVar8;
  int iVar9;
  bool bVar10;
  int *local_58;
  int *local_54;
  int local_50 [2];
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
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_58 = (int *)((uint)local_58 & 0xffffff00);
  local_10 = DAT_00f998f8;
  local_c = DAT_0103fd88;
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
  _Dst = (void *)FUN_004e4500(10,"Scratch/MonoscriptHost/LoadImage/BuildStr8",0);
  local_38 = (int)_Dst + 10;
  local_40 = _Dst;
  local_3c = _Dst;
  memmove(_Dst,&DAT_00fcd770,9);
  local_3c = (undefined1 *)((int)_Dst + 9);
  *local_3c = 0;
  local_30 = (ushort *)&DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_24 = "Scratch/MonoscriptHost/LoadImage/BuildStr16";
  local_28 = &DAT_011c8e56;
  ppuVar3 = FUN_004f3c90(local_50,&local_40);
  if (ppuVar3 != &local_30) {
    FUN_00408d60(&local_30,*ppuVar3,ppuVar3[1]);
  }
  if ((2 < (int)(local_48 - local_50[0] & 0xfffffffeU)) && (local_50[0] != 0)) {
    FUN_004e44e0(local_50[0]);
  }
  local_54 = (int *)FUN_004afe80();
  iVar9 = *local_1c;
  piVar8 = local_1c;
  if (iVar9 == 0) {
    piVar8 = local_1c + 1;
    iVar9 = local_1c[1];
    while (iVar9 == 0) {
      piVar8 = piVar8 + 1;
      iVar9 = *piVar8;
    }
    iVar9 = *piVar8;
  }
  local_50[0] = local_1c[local_18];
  if (iVar9 != local_50[0]) {
    do {
      local_58 = (int *)0x0;
      cVar2 = (**(code **)(*local_54 + 0x18))(iVar9,&local_58,0,0,0,0);
      if (cVar2 == '\0') {
LAB_00d75ff8:
        if (local_58 != (int *)0x0) {
          (**(code **)(*local_58 + 4))();
        }
      }
      else if (local_58 != (int *)0x0) {
        piVar4 = (int *)(**(code **)(*local_58 + 0xc))(0xaac61b8d);
        if (piVar4 != (int *)0x0) {
          (**(code **)*piVar4)();
          puVar5 = (ushort *)piVar4[0xd];
          if (puVar5 == (ushort *)piVar4[0xe]) {
            puVar5 = (ushort *)0x0;
          }
          puVar7 = local_30;
          if (puVar5 == (ushort *)0x0) {
LAB_00d7602d:
            (**(code **)(*piVar4 + 4))();
            if (local_58 != (int *)0x0) {
              (**(code **)(*local_58 + 4))();
            }
            if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) &&
               (local_30 != (ushort *)0x0)) {
              FUN_004e44e0((int)local_30);
            }
            if ((1 < local_38 - (int)local_40) && (local_40 != (void *)0x0)) {
              FUN_004e44e0((int)local_40);
            }
            FUN_00b305a0((int)local_1c,local_18);
            local_14 = 0;
            if (1 < local_18) {
              FUN_004e44e0((int)local_1c);
            }
            return false;
          }
          do {
            uVar1 = *puVar5;
            bVar10 = uVar1 < *puVar7;
            if (uVar1 != *puVar7) {
LAB_00d75fe6:
              iVar6 = (1 - (uint)bVar10) - (uint)(bVar10 != 0);
              goto LAB_00d75feb;
            }
            if (uVar1 == 0) break;
            uVar1 = puVar5[1];
            bVar10 = uVar1 < puVar7[1];
            if (uVar1 != puVar7[1]) goto LAB_00d75fe6;
            puVar5 = puVar5 + 2;
            puVar7 = puVar7 + 2;
          } while (uVar1 != 0);
          iVar6 = 0;
LAB_00d75feb:
          if (iVar6 != 0) goto LAB_00d7602d;
          (**(code **)(*piVar4 + 4))();
        }
        goto LAB_00d75ff8;
      }
      iVar9 = *(int *)(iVar9 + 0x10);
      while (iVar9 == 0) {
        piVar4 = piVar8 + 1;
        piVar8 = piVar8 + 1;
        iVar9 = *piVar4;
      }
    } while (iVar9 != local_50[0]);
  }
  if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (ushort *)0x0)) {
    FUN_004e44e0((int)local_30);
  }
  if ((1 < local_38 - (int)local_40) && (local_40 != (void *)0x0)) {
    FUN_004e44e0((int)local_40);
  }
  FUN_00b305a0((int)local_1c,local_18);
  local_14 = 0;
  if (1 < local_18) {
    FUN_004e44e0((int)local_1c);
  }
  return true;
}

