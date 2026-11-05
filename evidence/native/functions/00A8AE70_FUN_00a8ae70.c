/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. ECX64-byte pattern quad plus one pointer RET4; full EAX0 when all four resource keys equal,1 otherwise. First12dwords compare three keys; fourth at+30 through54E0A0. Not equality=true and not only first catalog key. No resource lookup or ownership action. */

undefined4 __thiscall FUN_00a8ae70(void *this,int *param_1)

{
  undefined4 uVar1;
  
  if (((((*param_1 == *(int *)this) && (param_1[2] == *(int *)((int)this + 8))) &&
       (param_1[3] == *(int *)((int)this + 0xc))) &&
      ((((param_1[1] == *(int *)((int)this + 4) && (param_1[4] == *(int *)((int)this + 0x10))) &&
        ((param_1[6] == *(int *)((int)this + 0x18) &&
         ((param_1[7] == *(int *)((int)this + 0x1c) && (param_1[5] == *(int *)((int)this + 0x14)))))
        )) && (param_1[8] == *(int *)((int)this + 0x20))))) &&
     (((param_1[10] == *(int *)((int)this + 0x28) && (param_1[0xb] == *(int *)((int)this + 0x2c)))
      && (param_1[9] == *(int *)((int)this + 0x24))))) {
    uVar1 = FUN_0054e0a0(param_1 + 0xc,(int *)((int)this + 0x30));
    if ((char)uVar1 == '\0') {
      return 0;
    }
  }
  return 1;
}
