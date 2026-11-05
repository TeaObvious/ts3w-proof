/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified analyst note: ECXdriver plus hash RET4; scans16byte rows+20/+24, exact first key returns row+4; otherwise driver+C machine definition lookup7FD860 then801A90 admission and800010 lookup. Missing machine/definition returnsnull. Lazy admission/reallocation/private failures belong callees; not a generic dynamic-parameter registry. */
int * __thiscall FUN_00801b00(void *this,int param_1)

{
  int iVar1;
  int *piVar2;
  
  piVar2 = *(int **)((int)this + 0x20);
  do {
    if (piVar2 == *(int **)((int)this + 0x24)) {
LAB_00801b29:
      if ((*(int *)((int)this + 0xc) == 0) ||
         (iVar1 = FUN_007fd860(*(int *)((int)this + 0xc)), iVar1 == 0)) {
        return (int *)0x0;
      }
      FUN_00801a90(this,iVar1);
      piVar2 = FUN_00800010(this,param_1);
      return piVar2;
    }
    if (*piVar2 == param_1) {
      if (piVar2 + 1 != (int *)0x0) {
        return piVar2 + 1;
      }
      goto LAB_00801b29;
    }
    piVar2 = piVar2 + 4;
  } while( true );
}

