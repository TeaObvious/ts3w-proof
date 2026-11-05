/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX placement helper, three key POINTER stack words, RET0C void. Copies16bytes diffuse key
   to38/3C/40/44; specular to48/4C/50/54; saved design COMP key to28/2C/30/34. They are independent
   full resource-key lanes; COMP is not a third texture. Attempts resource-broker lookup for the
   supplied design key and interface05DE1935, replaces retained helper+10 with reference
   acquisition/release. Actual C's always-zero piVar5/output aliases are virtual-call/local-stack
   propagation artifacts, not proof the lookup result can never exist. Bound copies and
   reference-call order are established from instructions; concrete broker/interface ownership is a
   separate scope. */

void __thiscall
WallPlacementHelper_InstallFinishKeys(void *this,uint *diffuseKey,uint *specularKey,uint *designKey)

{
  int *piVar1;
  uint *puVar2;
  char cVar3;
  int *piVar4;
  int *piVar5;
  
  puVar2 = designKey;
  *(uint *)((int)this + 0x38) = *diffuseKey;
  *(uint *)((int)this + 0x3c) = diffuseKey[1];
  *(uint *)((int)this + 0x40) = diffuseKey[2];
  *(uint *)((int)this + 0x44) = diffuseKey[3];
  *(uint *)((int)this + 0x48) = *specularKey;
  *(uint *)((int)this + 0x4c) = specularKey[1];
  *(uint *)((int)this + 0x50) = specularKey[2];
  *(uint *)((int)this + 0x54) = specularKey[3];
  *(uint *)((int)this + 0x28) = *designKey;
  *(uint *)((int)this + 0x2c) = designKey[1];
  *(uint *)((int)this + 0x30) = designKey[2];
  *(uint *)((int)this + 0x34) = designKey[3];
  piVar4 = (int *)FUN_004afe80();
  piVar5 = (int *)0x0;
  diffuseKey = (uint *)0x0;
  cVar3 = (**(code **)(*piVar4 + 0xc))(puVar2,&diffuseKey,0,0,0,0);
  if (cVar3 != '\0') {
    if (piVar5 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)(**(code **)(*piVar5 + 0xc))(0x5de1935);
    }
    piVar1 = *(int **)((int)this + 0x10);
    if (piVar4 != piVar1) {
      if (piVar4 != (int *)0x0) {
        (**(code **)*piVar4)();
      }
      *(int **)((int)this + 0x10) = piVar4;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
  }
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 4))();
  }
  return;
}

