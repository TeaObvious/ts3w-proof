/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. cdecl two words/plainRET/AL status. Require lot,
   inclusive localX/Z extents and signedlevel min..max; only after those checks does context+29
   ignore-restrictions return1. Special level1 branch, detailed footprint/wall/room tests and
   feedback remain original responsibilities. MoveObjects is not an unconditional valid placement
   result outside the lot.
   
   Additional PC1.67 wall-flag caller boundary: B45590 pushes optional diagnostics and context,
   calls B404B0 and cleans8bytes; AL test controls admission. Prior context+98 nonzero returns
   retained result before wall flags; context byte+81 bypasses wall-flag test. Diagnostics-null
   failures stop immediately; diagnostics mode preserves aggregate0 while later checks run. This
   caller context is separate from project spatial opening scores and wall material-span union. */

undefined1 __cdecl ObjectPlacement_TestLotAdmission(int *param_1,void *param_2)

{
  float *pfVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  bool bVar5;
  byte bVar6;
  undefined1 uVar7;
  undefined4 uVar8;
  float local_50 [19];
  
  iVar2 = param_1[1];
  if (iVar2 == 0) {
    return 0;
  }
  if (((((float)param_1[2] < 0.0) || ((float)*(int *)(iVar2 + 0x174) < (float)param_1[2])) ||
      ((float)param_1[3] < 0.0)) || ((float)*(int *)(iVar2 + 0x178) < (float)param_1[3])) {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    uVar8 = 2;
  }
  else {
    iVar3 = param_1[4];
    if ((*(int *)(iVar2 + 0x17c) <= iVar3) && (iVar3 <= *(int *)(iVar2 + 0x180))) {
      if ((param_1[7] == 0) ||
         (uVar8 = FUN_0054e0a0((int *)(param_1[7] + 0x168),&DAT_011ec8d0), (char)uVar8 == '\0')) {
        bVar5 = false;
      }
      else {
        bVar5 = true;
      }
      if ((iVar3 != 1) || (!bVar5)) {
LAB_00b45537:
        if (*(char *)((int)param_1 + 0x29) != '\0') {
          return 1;
        }
        uVar7 = 1;
        if ((*param_1 == 0) || (bVar5 = FUN_00afc7c0(*param_1), !bVar5)) {
          cVar4 = FUN_00b450f0(param_1,param_2);
        }
        else {
          cVar4 = FUN_00b452b0(param_1,param_2);
        }
        if (cVar4 == '\0') {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar7 = 0;
        }
        if (param_1[0x26] != 0) {
          return uVar7;
        }
        if ((*(char *)((int)param_1 + 0x81) == '\0') &&
           (bVar6 = Placement_TestWallFlagConstraints(param_1,param_2), bVar6 == 0)) {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar7 = 0;
        }
        uVar8 = FUN_00b3c9c0((int)param_1,param_2);
        if ((char)uVar8 == '\0') {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar7 = 0;
        }
        cVar4 = FUN_00b40c50(param_1,param_2);
        if (cVar4 == '\0') {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          return 0;
        }
        return uVar7;
      }
      if (*(char *)((int)param_1 + 0x29) != '\0') {
        return 1;
      }
      if (*(void **)(iVar2 + 0x290) == (void *)0x0) goto LAB_00b45537;
      pfVar1 = (float *)(param_1 + 2);
      cVar4 = FUN_00a8cfa0(*(void **)(iVar2 + 0x290),pfVar1);
      if ((cVar4 == '\0') || (param_2 == (void *)0x0)) goto LAB_00b45537;
      if ((param_1[7] == 0) || ((*(uint *)(param_1[7] + 0x9c) >> 0x16 & 1) == 0)) {
        FUN_00ad6720(local_50,0x45,param_1[1],pfVar1,0,0);
      }
      else {
        FUN_00ad6720(local_50,0x53,param_1[1],pfVar1,0,0);
      }
      goto LAB_00b455f2;
    }
    if (param_2 == (void *)0x0) {
      return 0;
    }
    uVar8 = 3;
  }
  FUN_00ad6720(local_50,uVar8,iVar2,(float *)(param_1 + 2),0,0);
LAB_00b455f2:
  FUN_00ad8570(param_2,local_50);
  FUN_00ad70d0((int)local_50);
  return 0;
}

