/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX driver,two stack dwords RET8,EAX32bit.
   Lookup00801B00; missing slot returns caller default. Existing slot nonzero hash+8 wins; zero
   stored hash returns definition default+34. Current initialized dictionary can return literal
   hash0 and unknown keys; native zero/default distinction must not be hidden by C# allocation
   semantics. */

int __thiscall SacsDriver_ReadHashOrDefinitionDefault(void *this,int param_1,int param_2)

{
  int *piVar1;
  
  piVar1 = FUN_00801b00(this,param_1);
  if (piVar1 == (int *)0x0) {
    return param_2;
  }
  if (piVar1[2] != 0) {
    return piVar1[2];
  }
  return *(int *)(*piVar1 + 0x34);
}

