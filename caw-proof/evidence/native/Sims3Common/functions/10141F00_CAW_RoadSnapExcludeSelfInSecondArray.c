/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Searches the first candidate array before the second,
   excluding the moving object by identity only in the second. The dispatcher supplies matching
   intersections first and splines second for both moving splines and intersections.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

uint CAW_RoadSnapExcludeSelfInSecondArray
               (int *param_1,int *param_2,undefined4 param_3,int param_4,undefined4 param_5,
               int *param_6,undefined4 *param_7)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint in_EAX;
  undefined4 *puVar4;
  int *piVar5;
  
  piVar5 = param_1;
  puVar4 = (undefined4 *)*param_1;
  if (puVar4 != (undefined4 *)param_1[1]) {
    do {
      piVar1 = (int *)*puVar4;
      in_EAX = (**(code **)(*piVar1 + 0x20))(param_3,param_5,&param_1);
      if ((char)in_EAX != '\0') {
        *param_6 = (int)piVar1;
        *param_7 = param_1;
        return CONCAT31((int3)((uint)param_1 >> 8),1);
      }
      puVar4 = puVar4 + 1;
    } while (puVar4 != (undefined4 *)piVar5[1]);
  }
  iVar3 = param_4;
  piVar1 = param_2;
  piVar5 = (int *)*param_2;
  if (piVar5 != (int *)param_2[1]) {
    do {
      piVar2 = (int *)*piVar5;
      if ((piVar2[2] != iVar3) &&
         (in_EAX = (**(code **)(*piVar2 + 0x20))(param_3,param_5,&param_1), (char)in_EAX != '\0')) {
        *param_6 = (int)piVar2;
        *param_7 = param_1;
        return CONCAT31((int3)((uint)param_6 >> 8),1);
      }
      piVar5 = piVar5 + 1;
    } while (piVar5 != (int *)piVar1[1]);
  }
  return in_EAX & 0xffffff00;
}

