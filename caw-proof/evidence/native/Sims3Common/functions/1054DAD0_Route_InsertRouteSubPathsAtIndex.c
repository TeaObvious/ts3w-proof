/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_InsertRouteSubPathsAtIndex. Export
   ordinal(s): 670. Entry VA: 0x1054dad0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000189. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Route_InsertRouteSubPathsAtIndex(uint param_1,int param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int *piStack_24;
  int *piStack_20;
  
  if (DAT_10c78944 == (void *)0x0) {
    piStack_24 = (int *)0x0;
LAB_1054a59a:
    piStack_20 = (int *)0x0;
  }
  else {
    piStack_24 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piStack_24 != (int *)0x0) {
      (**(code **)(*piStack_24 + 0x10))();
    }
    if (DAT_10c78944 == (void *)0x0) goto LAB_1054a59a;
    piStack_20 = (int *)FUN_1053c0f0(DAT_10c78944,param_3);
    if (piStack_20 != (int *)0x0) {
      (**(code **)(*piStack_20 + 0x10))();
    }
  }
  if (piStack_24 != (int *)0x0) {
    if (piStack_20 == (int *)0x0) goto LAB_1054a6d1;
    piVar4 = piStack_24 + 0x38;
    iVar8 = param_2;
    for (piVar9 = (int *)piStack_24[0x38]; piVar9 != piVar4; piVar9 = (int *)*piVar9) {
      if (iVar8 == 0) {
        if (piVar9 != piVar4) {
          FUN_10542580(piVar4,(int)piVar9,(undefined4 *)piStack_20[0x38],piStack_20 + 0x38);
          goto LAB_1054a4fa;
        }
        break;
      }
      iVar8 = iVar8 + -1;
    }
    for (piVar9 = (int *)piStack_20[0x38]; piVar9 != piStack_20 + 0x38; piVar9 = (int *)*piVar9) {
      puVar6 = (undefined4 *)FUN_10918eb0(0xc,piStack_24[0x3a],0);
      if (puVar6 + 2 != (int *)0x0) {
        iVar8 = piVar9[2];
        puVar6[2] = iVar8;
        if (iVar8 != 0) {
          LOCK();
          *(int *)(iVar8 + 4) = *(int *)(iVar8 + 4) + 1;
          UNLOCK();
        }
      }
      *puVar6 = piVar4;
      puVar6[1] = piStack_24[0x39];
      *(undefined4 **)piStack_24[0x39] = puVar6;
      piStack_24[0x39] = (int)puVar6;
    }
    iVar8 = piStack_20[0x41];
    iVar7 = piStack_20[0x42];
    iVar5 = piStack_20[0x43];
    piStack_24[0x40] = piStack_20[0x40];
    piStack_24[0x41] = iVar8;
    piStack_24[0x42] = iVar7;
    piStack_24[0x43] = iVar5;
    iVar8 = piStack_20[0x45];
    iVar7 = piStack_20[0x46];
    iVar5 = piStack_20[0x47];
    piStack_24[0x44] = piStack_20[0x44];
    piStack_24[0x45] = iVar8;
    piStack_24[0x46] = iVar7;
    piStack_24[0x47] = iVar5;
    iVar8 = piStack_20[0x49];
    iVar7 = piStack_20[0x4a];
    iVar5 = piStack_20[0x4b];
    piStack_24[0x48] = piStack_20[0x48];
    piStack_24[0x49] = iVar8;
    piStack_24[0x4a] = iVar7;
    piStack_24[0x4b] = iVar5;
    iVar8 = piStack_20[0x4d];
    iVar7 = piStack_20[0x4e];
    iVar5 = piStack_20[0x4f];
    piStack_24[0x4c] = piStack_20[0x4c];
    piStack_24[0x4d] = iVar8;
    piStack_24[0x4e] = iVar7;
    piStack_24[0x4f] = iVar5;
    *(undefined1 *)((int)piStack_24 + 0x141) = *(undefined1 *)((int)piStack_20 + 0x141);
    *(char *)(piStack_24 + 0x50) = (char)piStack_20[0x50];
LAB_1054a4fa:
    piVar9 = (int *)*piVar4;
    if (piVar9 != piVar4) {
      do {
        piVar2 = (int *)piVar9[2];
        if (piVar2 != (int *)0x0) {
          LOCK();
          piVar2[1] = piVar2[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar2 + 0x10))(piStack_24 + 0x56);
        iVar7 = (**(code **)(*piVar2 + 0xc))();
        iVar8 = piStack_24[0xf];
        puVar6 = (undefined4 *)FUN_1060e130(iVar7);
        FUN_10650fa0(piVar2,puVar6,iVar8);
        piVar3 = piVar2 + 1;
        LOCK();
        iVar8 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*piVar2)(1);
        }
        piVar9 = (int *)*piVar9;
      } while (piVar9 != piVar4);
      puVar6 = (undefined4 *)*piVar4;
      for (piVar9 = (int *)*puVar6; piVar9 != piVar4; piVar9 = (int *)*piVar9) {
        piVar2 = (int *)puVar6[2];
        if (piVar2 != (int *)0x0) {
          LOCK();
          piVar2[1] = piVar2[1] + 1;
          UNLOCK();
        }
        piVar3 = (int *)piVar9[2];
        if (piVar3 != (int *)0x0) {
          LOCK();
          piVar3[1] = piVar3[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar2 + 0x78))(piVar3);
        (**(code **)(*piVar3 + 0x80))(piVar2);
        piVar1 = piVar3 + 1;
        LOCK();
        iVar8 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar3)(1);
        }
        piVar3 = piVar2 + 1;
        LOCK();
        iVar8 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        if (iVar8 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*piVar2)(1);
        }
        puVar6 = (undefined4 *)*puVar6;
      }
    }
    FUN_105415a0((int)piStack_24);
    iVar8 = piStack_24[0x3c];
    if (-1 < iVar8) {
      if (param_2 <= iVar8) {
        iVar7 = 0;
        for (piVar4 = (int *)piStack_20[0x38]; piVar4 != piStack_20 + 0x38; piVar4 = (int *)*piVar4)
        {
          iVar7 = iVar7 + 1;
        }
        iVar8 = iVar8 + iVar7;
      }
      if (iVar8 != piStack_24[0x3c]) {
        piStack_24[0x3c] = iVar8;
        FUN_10548960(piStack_24);
      }
    }
  }
  if (piStack_20 != (int *)0x0) {
    (**(code **)(*piStack_20 + 0x14))();
  }
LAB_1054a6d1:
  if (piStack_24 != (int *)0x0) {
    (**(code **)(*piStack_24 + 0x14))();
  }
  return;
}

