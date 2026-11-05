/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool/plainRET. Held admission precedes current rotation1CC→05AED103,
   wall-height1CD→storedF8 or ordinary05AED102. Other empty-tool and cursor-side UI flag80
   branches remain distinct. This reads current1CC, not stickyB0. */

void __fastcall ObjectTool_UpdateHeldCursor(int param_1)

{
  code *pcVar1;
  char cVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  
  iVar6 = *(int *)(param_1 + 0x1d4);
  iVar3 = FUN_00cceb20();
  if (*(char *)(param_1 + 0x2f7) == '\0') {
    iVar5 = *(int *)(param_1 + 0x5c);
  }
  else {
    iVar5 = *(int *)(param_1 + 0x60);
  }
  if (iVar5 != 0) {
    uVar4 = FUN_00d25de0(iVar5);
    if ((char)uVar4 != '\0') {
      if (*(char *)(param_1 + 0x1cc) == '\0') {
        if (*(char *)(param_1 + 0x1cd) == '\0') {
          iVar6 = 0x5aed102;
        }
        else {
          iVar6 = *(int *)(param_1 + 0xf8);
        }
      }
      else {
        iVar6 = 0x5aed103;
      }
      goto LAB_00cfc8c6;
    }
  }
  if (*(char *)(param_1 + 0x8a) != '\0') {
    cVar2 = FUN_00790ef0();
    if (cVar2 != '\0') {
      iVar6 = 0x653e100;
    }
  }
LAB_00cfc8c6:
  if (iVar3 != 0) {
    pcVar1 = *(code **)(*(int *)(iVar3 + 4) + 0x74);
    if (iVar6 == 0x5aed103) {
      (*pcVar1)(0x80,1);
      FUN_00ccea10();
      return;
    }
    (*pcVar1)(0x80,0);
  }
  FUN_00ccea10();
  return;
}

