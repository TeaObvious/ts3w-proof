/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX scene object plus aligned32-byte bounds pointer, RET04. Two MOVAPS
   loads/stores copy original rows into object+50/+60, then call006FC960 before return. No
   range/finiteness/null guard, dirty-queue append, rollback or current packet array semantics are
   added. Actual006F5D50 and its006F6020 resource fallback both use this bound-publication consumer.
    */

void __thiscall SceneObject_SetLocalBoundsAndRefresh(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = param_1[1];
  uVar2 = param_1[2];
  uVar3 = param_1[3];
  *(undefined4 *)((int)this + 0x50) = *param_1;
  *(undefined4 *)((int)this + 0x54) = uVar1;
  *(undefined4 *)((int)this + 0x58) = uVar2;
  *(undefined4 *)((int)this + 0x5c) = uVar3;
  uVar1 = param_1[5];
  uVar2 = param_1[6];
  uVar3 = param_1[7];
  *(undefined4 *)((int)this + 0x60) = param_1[4];
  *(undefined4 *)((int)this + 100) = uVar1;
  *(undefined4 *)((int)this + 0x68) = uVar2;
  *(undefined4 *)((int)this + 0x6c) = uVar3;
  SceneObject_RefreshWorldBoundsAndSpatialOwner(this);
  return;
}

