/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified original PC 1.67 native preparation. Traverses native part/destination/step data,
   allocates compositor or fabric resources, calls 005BA4A0 for operation-property construction, and
   recursively visits child nodes. Enabled text is expanded by 005B92A0 before the selected gate:
   005C2599 compares against literal false; 005C25A5-005C25B2 requires exact length five before
   omitting the step. The comparer uses CRT byte tolower. This differs from managed Metadata
   TextureStep.CreateTextureStep, which omits malformed nonempty Boolean text. Full initial
   object/wall caller selection is not established. Current decompiler parameter recovery is
   incomplete; no ABI/type changes were made. */

char __thiscall
ComplateNative_CompileDestinationTree
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 *puVar2;
  byte *pbVar3;
  byte bVar4;
  char cVar5;
  char *pcVar6;
  undefined4 *puVar7;
  int *piVar8;
  byte *pbVar9;
  int iVar10;
  char *pcVar11;
  uint uVar12;
  uint uVar13;
  undefined4 uVar14;
  byte *pbVar15;
  char *pcVar16;
  int *piVar17;
  int *piVar18;
  int iVar19;
  bool bVar20;
  int unaff_retaddr;
  int *piStack_6a0;
  int *local_698;
  int iStack_694;
  int iStack_690;
  int iStack_68c;
  int *local_684;
  int iStack_680;
  int iStack_67c;
  int *piStack_678;
  int iStack_674;
  int local_670 [5];
  uint uStack_65c;
  int iStack_658;
  int iStack_654;
  int iStack_650;
  int *apiStack_64c [3];
  int *apiStack_640 [3];
  byte *pbStack_634;
  byte *local_630;
  byte *local_62c;
  byte **local_628;
  byte local_620 [508];
  byte *pbStack_424;
  byte *local_420;
  byte *local_41c;
  char **local_418;
  byte local_410 [512];
  char *local_210;
  char *local_20c;
  char local_200 [512];
  
  if (*(int *)((int)this + 0x60) == 0) {
    return '\0';
  }
  FUN_004afe80();
  FUN_006023d0(local_670);
  local_210 = local_200;
  local_630 = local_620;
  local_420 = local_410;
  local_628 = &local_420;
  local_418 = &local_210;
  local_200[0] = '\0';
  local_620[0] = 0;
  local_410[0] = 0;
  piVar8 = *(int **)(*(int *)((int)this + 0x60) + 0x58);
  piVar18 = *(int **)(*(int *)((int)this + 0x60) + 0x5c);
  local_698 = piVar8;
  local_684 = piVar18;
  local_62c = local_630;
  local_41c = local_420;
  local_20c = local_210;
  if (piVar8 != piVar18) {
    do {
      local_698 = piVar8;
      pcVar6 = (char *)(**(code **)(*piVar8 + 8))(0x5ffa86a6);
      if (local_210 != pcVar6) {
        pcVar11 = pcVar6;
        if (local_210 != local_20c) {
          *local_210 = '\0';
          local_20c = local_210;
        }
        do {
          pcVar16 = pcVar11;
          pcVar11 = pcVar16 + 1;
        } while (*pcVar16 != '\0');
        FUN_0058f880(&local_210,pcVar6,pcVar16);
      }
      FUN_005b92a0((int *)&local_210);
      iStack_674 = FUN_005c0850((int *)&local_210);
      piStack_678 = (int *)piVar8[7];
      piStack_6a0 = (int *)piVar8[6];
      if (piStack_6a0 != piStack_678) {
        do {
          if (*(char *)(*(int *)((int)this + 0x60) + 0x85) == '\0') {
            puVar7 = (undefined4 *)FUN_004e4500(0x68,"CAS/Complate/TextureCompositorResource",0);
            if (puVar7 == (undefined4 *)0x0) goto LAB_005c2a1a;
            piVar8 = (int *)FUN_00600a30(puVar7);
          }
          else {
            puVar7 = (undefined4 *)FUN_004e4500(0x68,"CAS/Complate/TextureFabricResource",0);
            if (puVar7 == (undefined4 *)0x0) goto LAB_005c2a1a;
            piVar8 = FUN_00600ad0(puVar7);
          }
          if ((piVar8 == (int *)0x0) || ((**(code **)*piVar8)(), piVar8 == (int *)0x0))
          goto LAB_005c2a1a;
          piVar8[0x16] = iStack_674;
          piVar8[0x15] = (uint)(*(char *)(*(int *)((int)this + 0x60) + 0x84) != '\0');
          FUN_005feaf0(piVar8,(piStack_6a0[7] - piStack_6a0[6]) / 0x1c);
          piVar18 = (int *)piStack_6a0[6];
          piVar1 = (int *)piStack_6a0[7];
          if (piVar18 != piVar1) {
            iStack_680 = 5;
            do {
              pbVar9 = (byte *)(**(code **)(*piVar18 + 8))(0xf8cbbf4c);
              if (local_630 != pbVar9) {
                pbVar3 = pbVar9;
                if (local_630 != local_62c) {
                  *local_630 = 0;
                  local_62c = local_630;
                }
                do {
                  pbVar15 = pbVar3;
                  pbVar3 = pbVar15 + 1;
                } while (*pbVar15 != 0);
                FUN_0058f880(&local_630,pbVar9,pbVar15);
              }
              FUN_005b92a0((int *)&local_630);
              iVar19 = (int)local_62c - (int)local_630;
              iStack_67c = iVar19;
              piVar17 = &iStack_680;
              if (iVar19 < 6) {
                piVar17 = &iStack_67c;
              }
              iVar10 = Bytes_CompareCaseFolded(local_630,(byte *)"false",*piVar17);
              if (((iVar10 != 0) || (iVar19 < 5)) || (5 < iVar19)) {
                FUN_00601100(local_670);
                bVar4 = ComplateNative_CompileStep(piVar18,*(void **)((int)this + 0x60),local_670);
                if (bVar4 == 0) {
                  (**(code **)(*piVar8 + 4))();
                  FUN_006023e0(local_670);
                  return '\0';
                }
                FUN_006070a0(piVar8,local_670);
              }
              piVar18 = piVar18 + 7;
            } while (piVar18 != piVar1);
          }
          if (*(int *)((int)this + 0x24) == 0) {
            pbVar9 = (byte *)(**(code **)(*piStack_6a0 + 8))(0xd90fdeef);
            if (pbStack_424 != pbVar9) {
              pbVar3 = pbVar9;
              if (pbStack_424 != local_420) {
                *pbStack_424 = 0;
                local_420 = pbStack_424;
              }
              do {
                pbVar15 = pbVar3;
                pbVar3 = pbVar15 + 1;
              } while (*pbVar15 != 0);
              FUN_0058f880(&pbStack_424,pbVar9,pbVar15);
            }
            pbVar9 = pbStack_424;
            if (pbStack_424 < local_420) {
              do {
                iVar19 = tolower((uint)*pbVar9);
                *pbVar9 = (byte)iVar19;
                pbVar9 = pbVar9 + 1;
              } while (pbVar9 < local_420);
            }
            pbVar3 = local_420;
            pbVar9 = pbStack_424;
            if (((uint)((int)local_420 - (int)pbStack_424) < 4) ||
               (pbVar15 = (byte *)FUN_004ae640((char *)pbStack_424,(char *)local_420,"spec",""),
               pbVar15 == pbVar3)) {
              iVar19 = -1;
            }
            else {
              iVar19 = (int)pbVar15 - (int)pbVar9;
            }
            FUN_005b7750();
            FUN_00930fa0(&pbStack_634,"%s_%s_%s");
            uVar12 = HashLowercasedBufferFNV1((int)pbStack_634,(int)local_630 - (int)pbStack_634);
            if ((char)param_2 != '\0') {
              FUN_005c0900(&uStack_65c,0x33a1435);
              if (iStack_654 == 0) goto LAB_005c2a10;
              piVar8[2] = uStack_65c;
              piVar8[3] = iStack_658;
              piVar8[4] = iStack_654;
              piVar8[5] = iStack_650;
              iVar10 = *piStack_6a0;
              uVar14 = (**(code **)(*piVar8 + 0xc))(0x2269ed1,1);
              (**(code **)(iVar10 + 0x5c))(uVar14);
            }
            piVar18 = *(int **)((int)param_1 + 4);
            if (piVar18 < *(int **)((int)param_1 + 8)) {
              *(int **)((int)param_1 + 4) = piVar18 + 3;
              if (piVar18 != (int *)0x0) {
                *piVar18 = 0;
              }
            }
            else {
              apiStack_64c[0] = (int *)0x0;
              FUN_005c1400(param_1,piVar18,(int *)apiStack_64c);
              if (apiStack_64c[0] != (int *)0x0) {
                (**(code **)(*apiStack_64c[0] + 4))();
              }
            }
            iVar10 = *(int *)((int)param_1 + 4);
            *(uint *)(iVar10 + -8) = uVar12;
            piVar18 = *(int **)(iVar10 + -0xc);
            if (piVar8 != piVar18) {
              (**(code **)*piVar8)();
              *(int **)(iVar10 + -0xc) = piVar8;
              if (piVar18 != (int *)0x0) {
                (**(code **)(*piVar18 + 4))();
              }
            }
            *(bool *)(iVar10 + -4) = iVar19 != -1;
          }
          else {
            puVar7 = FUN_005f5610();
            pbVar9 = (byte *)(**(code **)(**(int **)((int)param_1 + 0x60) + 8))(0xa323a08e);
            if (pbStack_634 != pbVar9) {
              pbVar3 = pbVar9;
              if (pbStack_634 != local_630) {
                *pbStack_634 = 0;
                local_630 = pbStack_634;
              }
              do {
                pbVar15 = pbVar3;
                pbVar3 = pbVar15 + 1;
              } while (*pbVar15 != 0);
              FUN_0058f880(&pbStack_634,pbVar9,pbVar15);
            }
            pcVar6 = (char *)*puVar7;
            do {
              pcVar11 = pcVar6;
              pcVar6 = pcVar11 + 1;
            } while (*pcVar11 != '\0');
            FUN_0058f880(&pbStack_634,(char *)*puVar7,pcVar11);
            uVar12 = HashLowercasedBufferFNV1((int)pbStack_634,(int)local_630 - (int)pbStack_634);
            local_698 = (int *)0x0;
            iStack_694 = 0;
            iStack_690 = 0;
            iStack_68c = 0;
            uVar13 = FUN_005b82f0(*(void **)(unaff_retaddr + 0x60),uVar12,&local_698);
            if ((char)uVar13 == '\0') {
LAB_005c2a10:
              (**(code **)(*piVar8 + 4))();
LAB_005c2a1a:
              FUN_006023e0(local_670);
              return '\0';
            }
            piVar8[2] = (int)local_698;
            piVar8[3] = iStack_694;
            piVar8[4] = iStack_690;
            piVar8[5] = iStack_68c;
            if ((char)param_2 != '\0') {
              iVar19 = *piStack_6a0;
              uVar14 = (**(code **)(*piVar8 + 0xc))(0x2269ed1,1);
              (**(code **)(iVar19 + 0x5c))(uVar14);
            }
            piVar18 = *(int **)((int)param_1 + 4);
            if (piVar18 < *(int **)((int)param_1 + 8)) {
              *(int **)((int)param_1 + 4) = piVar18 + 3;
              if (piVar18 != (int *)0x0) {
                *piVar18 = 0;
              }
            }
            else {
              apiStack_640[0] = (int *)0x0;
              FUN_005c1400(param_1,piVar18,(int *)apiStack_640);
              if (apiStack_640[0] != (int *)0x0) {
                (**(code **)(*apiStack_640[0] + 4))();
              }
            }
            iVar19 = *(int *)((int)param_1 + 4);
            *(uint *)(iVar19 + -8) = uVar12;
            piVar18 = *(int **)(iVar19 + -0xc);
            if (piVar8 != piVar18) {
              (**(code **)*piVar8)();
              *(int **)(iVar19 + -0xc) = piVar8;
              if (piVar18 != (int *)0x0) {
                (**(code **)(*piVar18 + 4))();
              }
            }
            *(undefined1 *)(iVar19 + -4) = 0;
          }
          (**(code **)(*piVar8 + 4))();
          piStack_6a0 = piStack_6a0 + 10;
          piVar18 = local_684;
          piVar8 = local_698;
        } while (piStack_6a0 != piStack_678);
      }
      piVar8 = piVar8 + 10;
      local_698 = piVar8;
    } while (piVar8 != piVar18);
  }
  puVar7 = *(undefined4 **)((int)this + 0x28);
  puVar2 = *(undefined4 **)((int)this + 0x2c);
  cVar5 = '\x01';
  while ((puVar7 != puVar2 && (bVar20 = cVar5 != '\0', cVar5 = '\0', bVar20))) {
    cVar5 = ComplateNative_CompileDestinationTree((void *)*puVar7,this,param_2,param_3);
    puVar7 = puVar7 + 1;
  }
  FUN_006023e0(local_670);
  return cVar5;
}

