/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX owner. Reference replacement new virtual4/store/old virtual8; 8cube volume creation,
   one-time512-byte RNG fill with seed11B7A/boundFF, row8/slice40 upload. Retains discontiguous
   function body gaps. Numeric creationF is not SMPS preset15. Full RNG byte equivalence unresolved.
    */

void __fastcall WeatherResources_CreateNoiseVolume(int param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  undefined1 *puVar7;
  int iStack_4;
  
  iStack_4 = param_1;
  puVar2 = (undefined4 *)FUN_004e4500(0x34,"World/Weathermanager",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = Texture_Construct(puVar2);
  }
  piVar1 = *(int **)(param_1 + 0x1c0);
  if (piVar3 != piVar1) {
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
    }
    *(int **)(param_1 + 0x1c0) = piVar3;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  uVar4 = Texture_CreateVolume(*(void **)(param_1 + 0x1c0),8,8,8,1,0xf,2);
  if ((char)uVar4 != '\0') {
    if (DAT_0119327c != '\0') {
      DAT_0119327c = '\0';
      FUN_004fa9f0(&iStack_4,-1);
      FUN_004fa9f0(&iStack_4,0x11b7a);
      puVar7 = &DAT_011ef300;
      do {
        iVar5 = 8;
        do {
          iVar6 = 0;
          do {
            uVar4 = FUN_004faa30(&iStack_4,0xff);
            puVar7[iVar6] = (char)uVar4;
            iVar6 = iVar6 + 1;
          } while (iVar6 < 8);
          puVar7 = puVar7 + 8;
          iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
      } while ((int)puVar7 < 0x11ef500);
    }
    Texture_CopyMipRowsVolume(*(void **)(param_1 + 0x1c0),0,&DAT_011ef300,8,0x40);
  }
  return;
}

