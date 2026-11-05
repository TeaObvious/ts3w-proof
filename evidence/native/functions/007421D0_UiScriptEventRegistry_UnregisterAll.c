/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX registry one word/RET 4. Lookup actual window key in
   registry+4. If found tail-dispatch window virtual 0x10C with stored procedure, preserving caller
   stack convention; otherwiseRET 4. Procedure shutdown callback and identity-checked registry
   retirement happen synchronously in downstream742320/742220. No direct key erase in this body. */

void __thiscall UiScriptEventRegistry_UnregisterAll(void *this,void *windowInterface)

{
  int iVar1;
  int local_8 [2];
  
  UInt32PairMap_Find((void *)((int)this + 4),local_8,(uint *)&windowInterface);
  if (local_8[0] != *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    iVar1 = *(int *)windowInterface;
    windowInterface = *(void **)(local_8[0] + 4);
                    /* WARNING: Could not recover jumptable at 0x0074220e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(iVar1 + 0x10c))();
    return;
  }
  return;
}

