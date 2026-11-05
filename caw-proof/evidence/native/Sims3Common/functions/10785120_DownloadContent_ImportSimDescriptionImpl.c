/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ImportSimDescriptionImpl. Export
   ordinal(s): 393. Entry VA: 0x10785120. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600118B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint DownloadContent_ImportSimDescriptionImpl(void)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int local_54 [2];
  int iStack_4c;
  int aiStack_48 [11];
  int *piStack_1c;
  byte bStack_14;
  undefined4 uStack_8;
  
                    /* 0x785120  393  DownloadContent_ImportSimDescriptionImpl */
  FUN_1055dbb0(&stack0x00000004,local_54);
  piVar2 = (int *)FUN_1055b120();
  piVar3 = (int *)FUN_108e50d0();
  uVar4 = 0;
  if (piVar3 != (int *)0x0) {
    uVar4 = (**(code **)(*piVar3 + 0xc))();
    if ((char)uVar4 != '\0') {
      if (&stack0x00000000 != (undefined1 *)0x58) {
        piVar3 = (int *)(*pcRam0000000c)();
        if (piVar3 != (int *)0x0) {
          (**(code **)*piVar3)();
          iVar5 = (**(code **)(piVar3[0x12] + 0x1c))();
          if (iVar5 != 0) {
            (**(code **)(*piVar2 + 0x80))();
            if (piVar3[0x13] == 0) {
              uVar6 = 0;
            }
            else {
              uVar6 = *(undefined4 *)(piVar3[0x13] + 8);
            }
            (**(code **)(*piVar2 + 0x98))(uStack_8,uVar6,0);
            FUN_109140f0(aiStack_48,(void *)0x0,(piVar3[0xb] - piVar3[10] >> 4) * 0x10 + 4,'\0',1,
                         (int *)0x0,"Scratch/DownloadContent/KeyTable");
            FUN_105cc2a0(&stack0xffffffa0,aiStack_48,1);
            if ((bStack_14 & 1) != 0) {
              FUN_1009ca90(piVar3 + 10,(ushort *)piVar3[0x1e]);
            }
            cVar1 = FUN_105cb8c0(piVar3 + 10,(int)&stack0xffffffa0);
            if (cVar1 != '\0') {
              (**(code **)(*piVar2 + 0x80))();
              if (iStack_4c == 0) {
                uVar6 = 0;
              }
              else {
                uVar6 = *(undefined4 *)(iStack_4c + 8);
              }
              (**(code **)(*piVar2 + 0x98))(uStack_8,uVar6,0);
              piVar7 = piStack_1c;
              (**(code **)(*piVar2 + 0x88))(piStack_1c,piVar3[0xf] - piVar3[0xe] >> 3);
              (**(code **)(*piVar2 + 0xa0))(piStack_1c,piVar3[0xe],0,piVar3[0xf] - piVar3[0xe] >> 3)
              ;
              FUN_105ca900((int)&stack0xffffff70);
              FUN_1001e1d0((undefined4 *)&stack0xffffff88);
              uVar6 = (**(code **)(*piVar3 + 4))();
              if (piVar7 != (int *)0x0) {
                uVar6 = (**(code **)(*piVar7 + 4))();
              }
              return CONCAT31((int3)((uint)uVar6 >> 8),1);
            }
            FUN_105ca900((int)&stack0xffffffa0);
            FUN_1001e1d0(aiStack_48);
          }
          uVar4 = (**(code **)(*piVar3 + 4))();
          if (&stack0x00000000 != (undefined1 *)0x54) {
            uVar4 = (**(code **)(local_54[0] + 4))();
          }
          return uVar4 & 0xffffff00;
        }
        uVar4 = 0;
        if (&stack0x00000000 != (undefined1 *)0x54) {
          uVar4 = (**(code **)(local_54[0] + 4))();
        }
      }
      return uVar4 & 0xffffff00;
    }
    if (&stack0x00000000 != (undefined1 *)0x58) {
      uVar4 = (*_DAT_00000004)();
    }
  }
  return uVar4 & 0xffffff00;
}

