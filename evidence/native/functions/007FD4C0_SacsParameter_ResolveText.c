/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX value wrapper, one stack word RET4, EAX
   UTF16 pointer. Two representation branches. Existing string returned; when resolve flag nonzero
   and text absent but underlying hash+28 nonzero,007FD280 lazily fills text storage (+38 shared or
   +4 local). Missing conversion remains null. Own allocation/free paths elsewhere remain bounded.
   This is not C# exception-on-missing policy. */

undefined4 __thiscall SacsParameter_ResolveText(void *this,char param_1)

{
  int iVar1;
  short *psVar2;
  
  if (*(int *)((int)this + 8) == 0) {
    iVar1 = *(int *)this;
    if (((param_1 != '\0') && (*(int *)(iVar1 + 0x38) == 0)) && (*(int *)(iVar1 + 0x28) != 0)) {
      psVar2 = SacsHash_ResolveAndWidenName();
      *(short **)(iVar1 + 0x38) = psVar2;
    }
    return *(undefined4 *)(iVar1 + 0x38);
  }
  if (((param_1 != '\0') && (*(int *)((int)this + 4) == 0)) && (*(int *)(*(int *)this + 0x28) != 0))
  {
    psVar2 = SacsHash_ResolveAndWidenName();
    *(short **)((int)this + 4) = psVar2;
  }
  return *(undefined4 *)((int)this + 4);
}

