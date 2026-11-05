/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Call A4DBA0 then branch on AL; perform selected level/model operations, replace
   stored vector and conditionally clear clock+submit immediately. Helper comparison semantics are
   supporting context outside selected pairs; preserve loops/callback/partial mutation and do not
   replace with SamePartInputs. */

void __thiscall CeilingRenderManager_SetUndersideLevels(void *this,int *param_1)

{
  int iVar1;
  char *pcVar2;
  char *pcVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  bool bVar8;
  undefined4 uVar9;
  void *this_00;
  int iVar10;
  char cVar11;
  int iVar12;
  int *piVar13;
  char *pcVar14;
  char *pcVar15;
  int *piVar16;
  int *piVar17;
  int *piVar18;
  
  uVar9 = FUN_00a4dba0((int *)((int)this + 100),param_1);
  if ((char)uVar9 == '\0') {
    this_00 = LoadPump_ReadFrameServiceGlobal();
    iVar1 = *(int *)(*(int *)((int)this + 0x18) + 0x6c);
    bVar8 = false;
    for (iVar12 = *(int *)(*(int *)((int)this + 0x18) + 0x68); iVar12 <= iVar1; iVar12 = iVar12 + 1)
    {
      pcVar2 = *(char **)((int)this + 0x68);
      pcVar14 = *(char **)((int)this + 100);
      cVar11 = (char)iVar12;
      iVar10 = (int)pcVar2 - (int)pcVar14;
      while (iVar7 = iVar10, 0 < iVar7) {
        iVar10 = iVar7 >> 1;
        if (pcVar14[iVar10] < cVar11) {
          pcVar14 = pcVar14 + iVar10 + 1;
          iVar10 = iVar7 + (-1 - iVar10);
        }
      }
      if (((pcVar14 == pcVar2) || (cVar11 < *pcVar14)) || (pcVar14 == pcVar14 + 1)) {
        pcVar14 = pcVar2;
      }
      pcVar3 = (char *)param_1[1];
      pcVar15 = (char *)*param_1;
      iVar10 = (int)pcVar3 - (int)pcVar15;
      while (iVar7 = iVar10, 0 < iVar7) {
        iVar10 = iVar7 >> 1;
        if (pcVar15[iVar10] < cVar11) {
          pcVar15 = pcVar15 + iVar10 + 1;
          iVar10 = iVar7 + (-1 - iVar10);
        }
      }
      if (((pcVar15 == pcVar3) || (cVar11 < *pcVar15)) || (pcVar15 == pcVar15 + 1)) {
        pcVar15 = pcVar3;
      }
      if (pcVar15 == pcVar3) {
        if (pcVar14 == pcVar2) {
          bVar8 = true;
        }
      }
      else if (pcVar14 != pcVar2) {
        piVar4 = *(int **)((int)this + 0x20);
        for (piVar16 = *(int **)((int)this + 0x1c); piVar16 != piVar4; piVar16 = piVar16 + 4) {
          if ((piVar16[2] + 1 == iVar12) && ((int *)*piVar16 != (int *)0x0)) {
            FUN_006e82f0(this_00,(int *)*piVar16);
            piVar13 = (int *)*piVar16;
            if (piVar13 != (int *)0x0) {
              *piVar16 = 0;
              (**(code **)(*piVar13 + 4))();
            }
          }
        }
        piVar16 = *(int **)((int)this + 0x20);
        for (piVar13 = *(int **)((int)this + 0x1c); piVar13 != piVar16; piVar13 = piVar13 + 4) {
          if (*piVar13 == 0) {
            piVar18 = piVar13;
            if (piVar13 != piVar16) {
              while (piVar18 = piVar18 + 4, piVar18 != piVar16) {
                if (*piVar18 != 0) {
                  FUN_00a4dc30(piVar13,piVar18);
                  piVar13 = piVar13 + 4;
                }
              }
            }
            break;
          }
        }
        piVar16 = *(int **)((int)this + 0x20);
        piVar18 = piVar13;
        if (piVar4 != piVar16) {
          piVar17 = piVar4 + 2;
          do {
            piVar5 = (int *)piVar17[-2];
            piVar6 = (int *)*piVar18;
            if (piVar5 != piVar6) {
              if (piVar5 != (int *)0x0) {
                (**(code **)*piVar5)();
              }
              *piVar18 = (int)piVar5;
              if (piVar6 != (int *)0x0) {
                (**(code **)(*piVar6 + 4))();
              }
            }
            piVar5 = (int *)piVar17[-1];
            piVar6 = (int *)piVar18[1];
            if (piVar5 != piVar6) {
              if (piVar5 != (int *)0x0) {
                (**(code **)(*piVar5 + 4))();
              }
              piVar18[1] = (int)piVar5;
              if (piVar6 != (int *)0x0) {
                (**(code **)(*piVar6 + 8))();
              }
            }
            *(int *)(((int)piVar13 - (int)piVar4) + (int)piVar17) = *piVar17;
            piVar18[3] = piVar17[1];
            piVar5 = piVar17 + 2;
            piVar18 = piVar18 + 4;
            piVar17 = piVar17 + 4;
          } while (piVar5 != piVar16);
        }
        FUN_00a4e080(piVar18,*(int **)((int)this + 0x20));
        *(int *)((int)this + 0x20) =
             *(int *)((int)this + 0x20) + ((int)piVar4 - (int)piVar13 >> 4) * -0x10;
      }
    }
    FUN_00608c10((void *)((int)this + 100),param_1);
    if (bVar8) {
      *(undefined4 *)((int)this + 0x30) = 0;
      *(undefined4 *)((int)this + 0x34) = 0;
      *(undefined4 *)((int)this + 0x38) = 0;
      *(undefined4 *)((int)this + 0x3c) = 0;
      CeilingRenderManager_SubmitRoomRequest((int)this);
    }
  }
  return;
}

