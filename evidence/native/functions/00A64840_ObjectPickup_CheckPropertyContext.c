/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. AB0830 gates work. Object context comes from68F130. Nonnull
   context calls virtual+0C with literal90566B0E; after that call A64867 reloads [ESP+0C], pushes
   that word, ESI object and EAX result to A64790. Null-context branch pushes its stack word, object
   and zero. Getter cleanup and the third-argument meaning are not established by this body alone.
   CCD330 treats a nonzero return as rejection; deeper predicate semantics remain separate. */

undefined1 __cdecl ObjectPickup_CheckPropertyContext(void *param_1,void *param_2)

{
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  void *pvVar4;
  
  cVar1 = ObjectPickup_IsContextGateEnabled();
  if (cVar1 == '\0') {
    return 0;
  }
  piVar3 = (int *)FUN_0068f130((int)param_1);
  if (piVar3 != (int *)0x0) {
    pvVar4 = (void *)(**(code **)(*piVar3 + 0xc))(0x90566b0e);
    uVar2 = ObjectPickup_CheckContextAtObjectLocation(pvVar4,param_1,param_1);
    return uVar2;
  }
  uVar2 = ObjectPickup_CheckContextAtObjectLocation((void *)0x0,param_1,param_2);
  return uVar2;
}

