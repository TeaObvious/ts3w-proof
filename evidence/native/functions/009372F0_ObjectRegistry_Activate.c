/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. ECX service becomes global DAT_011dd350; registers resource
   factories, then optional forceRefresh flag. This is activation, not allocation. */

void __thiscall ObjectRegistry_Activate(void *this)

{
  char cVar1;
  
  DAT_011dd350 = this;
  FUN_00936140();
  cVar1 = FUN_0058b460(L"forceRefresh",0);
  if (cVar1 != '\0') {
    *(undefined1 *)((int)this + 0x11e4) = 1;
  }
  return;
}

