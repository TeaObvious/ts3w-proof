/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX context,two stack dwords RET8; wrapper
   forwards original driver pointer and actual key/default to00801BA0. Decompiled void return
   misleading; tail transfer preserves EAX hash. No text conversion or package lookup in this
   adapter. */

void __thiscall SacsContext_ReadParameterHash(void *this,int param_1,int param_2)

{
  SacsDriver_ReadHashOrDefinitionDefault(*(void **)this,param_1,param_2);
  return;
}

