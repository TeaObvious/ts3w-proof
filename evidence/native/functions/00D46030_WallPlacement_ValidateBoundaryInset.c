/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX context plus locator/unused product/errors three stackwords RET0C, lowAL Boolean. Both
   signed adjacent tiles must be live in-bounds and both endpoint coordinates within inclusive0.999f
   .. dimension-0.999f. Exact binary32 inset loaded atFF0A34. Failure emits7D WallInLockedArea when
   errors present. AX/EAX upper bits on selected returns are not Boolean semantics. */

bool __thiscall
WallPlacement_ValidateBoundaryInset(void *this,char *param_1,undefined4 param_2,void *param_3)

{
  int iVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  char local_54;
  char cStack_53;
  char local_52;
  undefined1 local_51;
  float local_50 [19];
  
  local_54 = -1;
  cStack_53 = -1;
  local_51 = 0xff;
  local_52 = '\0';
  WallLocator_QueryFirstAdjacentTile(param_1,(undefined2 *)&local_54);
  cVar4 = local_52;
  cVar3 = cStack_53;
  cVar2 = local_54;
  WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,(undefined2 *)&local_54);
  iVar1 = *(int *)((int)this + 8);
  if (((((-1 < cVar2) && ((int)cVar2 < *(int *)(iVar1 + 0x174))) && (-1 < cVar3)) &&
      (((int)cVar3 < *(int *)(iVar1 + 0x178) && (*(int *)(iVar1 + 0x17c) <= (int)cVar4)))) &&
     ((int)cVar4 <= *(int *)(iVar1 + 0x180))) {
    if (((-1 < local_54) && ((int)local_54 < *(int *)(iVar1 + 0x174))) &&
       ((-1 < cStack_53 &&
        ((((int)cStack_53 < *(int *)(iVar1 + 0x178) && (*(int *)(iVar1 + 0x17c) <= (int)local_52))
         && ((int)local_52 <= *(int *)(iVar1 + 0x180))))))) {
      if (((0.999 <= (float)(int)*param_1) && (0.999 <= (float)(int)param_1[1])) &&
         (((float)(int)*param_1 <= (float)*(int *)(iVar1 + 0x174) - 0.999 &&
          ((float)(int)param_1[1] <= (float)*(int *)(iVar1 + 0x178) - 0.999)))) {
        if (((0.999 <= (float)(int)param_1[3]) && (0.999 <= (float)(int)param_1[4])) &&
           (((float)(int)param_1[3] <= (float)*(int *)(iVar1 + 0x174) - 0.999 &&
            ((float)(int)param_1[4] <= (float)*(int *)(iVar1 + 0x178) - 0.999)))) {
          return true;
        }
      }
    }
  }
  if (param_3 != (void *)0x0) {
    FUN_00ad68b0(local_50,0x7d,iVar1,param_1,'\0');
    FUN_00ad8570(param_3,local_50);
    FUN_00ad70d0((int)local_50);
    return false;
  }
  return false;
}

