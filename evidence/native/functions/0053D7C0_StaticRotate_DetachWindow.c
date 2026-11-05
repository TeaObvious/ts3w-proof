/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d7c0. Calls supplied object virtual98 before finding/removing actual
   attached-set entry. Physical ECX plus one word/RET4. Complete67B body excludes adjacent alignment
   and set-helper implementations. */

void __thiscall StaticRotate_DetachWindow(int *param_1,int *param_2)

{
  int *piStack_4;
  
  piStack_4 = param_1;
  (**(code **)(*param_2 + 0x98))();
  FUN_005ca6f0(param_1 + 9,(int *)&piStack_4,(uint *)&param_2);
  if (piStack_4 != param_1 + 10) {
    FUN_0053d750(param_1 + 9,&param_2,piStack_4);
  }
  return;
}

