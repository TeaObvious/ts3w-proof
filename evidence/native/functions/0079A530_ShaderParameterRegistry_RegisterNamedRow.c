/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX registry; char name plus UInt32 word and UInt16 kind, RET0C. Calls char hash7D00F0 then
   find/create79A3C0. EAX index survives and is stored by weather and water callers, despite
   existing undefined return projection. Sets row+8 word and row+6 kind. Numeric pairs are not
   sampler preset IDs. */

void __thiscall
ShaderParameterRegistry_RegisterNamedRow
          (void *this,char *param_1,undefined4 param_2,undefined2 param_3)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = HashLowercasedCStringFNV1(param_1);
  iVar2 = ShaderParameterRegistry_FindOrCreateHashRowIndex(this,uVar1);
  iVar2 = iVar2 * 0x10 + *(int *)((int)this + 4);
  *(undefined4 *)(iVar2 + 8) = param_2;
  *(undefined2 *)(iVar2 + 6) = param_3;
  return;
}

