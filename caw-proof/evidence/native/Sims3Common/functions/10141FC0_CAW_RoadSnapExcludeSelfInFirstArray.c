/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Searches the first candidate array before the second,
   excluding the moving object by identity only in the first. The dispatcher supplies matching
   intersections first and splines second. This helper does not reverse candidate priority.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

uint CAW_RoadSnapExcludeSelfInFirstArray
               (int *param_1,undefined4 *param_2,undefined4 param_3,int param_4,undefined4 param_5,
               int *param_6,undefined4 *param_7)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  uint in_EAX;
  int *piVar5;
  undefined4 *puVar6;
  
  iVar4 = param_4;
  piVar2 = param_1;
  piVar5 = (int *)*param_1;
  if (piVar5 != (int *)param_1[1]) {
    do {
      piVar1 = (int *)*piVar5;
      if ((piVar1[2] != iVar4) &&
         (in_EAX = (**(code **)(*piVar1 + 0x20))(param_3,param_5,&param_1), (char)in_EAX != '\0')) {
        *param_6 = (int)piVar1;
        *param_7 = param_1;
        return CONCAT31((int3)((uint)param_1 >> 8),1);
      }
      piVar5 = piVar5 + 1;
    } while (piVar5 != (int *)piVar2[1]);
  }
  puVar3 = param_2;
  puVar6 = (undefined4 *)*param_2;
  if (puVar6 != (undefined4 *)param_2[1]) {
    do {
      piVar5 = (int *)*puVar6;
      in_EAX = (**(code **)(*piVar5 + 0x20))(param_3,param_5,&param_1);
      if ((char)in_EAX != '\0') {
        *param_6 = (int)piVar5;
        *param_7 = param_1;
        return CONCAT31((int3)((uint)param_6 >> 8),1);
      }
      puVar6 = puVar6 + 1;
    } while (puVar6 != (undefined4 *)puVar3[1]);
  }
  return in_EAX & 0xffffff00;
}

