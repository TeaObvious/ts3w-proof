/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   Receiver ECX is manager; four stackwords RET10: two grid dimensions passed by address to95D5D0, low-byte recursion flag, optional filter callback. Recursion uses manager virtual58/4C. Selected world wrapper supplies1,1,0,null. Do not read pointer types in AutoCluster pseudo as additional manager inputs. */
void __thiscall FUN_00c6dcd0(void *this,int param_1,int param_2,uint param_3,int *param_4)

{
  uint uVar1;
  int *piVar2;
  uint uVar3;
  void *this_00;
  
  piVar2 = param_4;
  uVar1 = param_3;
  if ((char)param_3 != '\0') {
    uVar3 = (**(code **)(*(int *)this + 0x58))();
    param_3 = 0;
    if (uVar3 != 0) {
      do {
        this_00 = (void *)(**(code **)(*(int *)this + 0x4c))(&param_3);
        FUN_00c6dcd0(this_00,param_1,param_2,uVar1,piVar2);
        param_3 = param_3 + 1;
      } while (param_3 < uVar3);
    }
  }
  TreeManager_AutoCluster(this,&param_1,&param_2,piVar2);
  return;
}

