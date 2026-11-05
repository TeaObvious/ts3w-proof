/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 parameter-table instruction contract. ECX Animation component; TWO explicit stack
   words:16-byte key pointer and low-byte followup flag, RET8. Clears component+20 and releases old
   reference BEFORE manager virtual+0C(key,outResource,0,0,0,0). Correct six-word call-site ABI
   makes actual returned resource visible; old one-word/virtual prototypes falsely removed the query
   branch. On successful load, query IID8EAF13DE, retain chosen new interface, assign+20, release
   displaced reference; optional93DF40 occurs if followup lowbyte nonzero even after loadfailure.
   Finally release temporary resource. Does not preserve old rig on failure; manager
   null/preconditions and full downstream state/event semantics open. */

void __thiscall
AnimationComponent_AssignRigResourceKey(void *this,uint *resourceKey16,byte runFollowup)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  int *local_4;
  
  local_4 = this;
  piVar2 = (int *)FUN_004afe80();
  piVar3 = *(int **)((int)this + 0x20);
  *(undefined4 *)((int)this + 0x20) = 0;
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 4))();
  }
  local_4 = (int *)0x0;
                    /* ECX resource manager plus SIX stack words. Correct outResource
                       pointer/cleanup prevents false constant-null decompiler state. */
  bVar1 = (**(code **)(*piVar2 + 0xc))(piVar2,resourceKey16,&local_4,0,0,0,0);
  if (bVar1) {
    if (local_4 == (int *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (**(code **)(*local_4 + 0xc))(local_4,0x8eaf13de);
    }
    piVar2 = *(int **)((int)this + 0x20);
    if (piVar3 != piVar2) {
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
      *(int **)((int)this + 0x20) = piVar3;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
  }
  if (runFollowup != 0) {
    AnimationComponent_NotifyRigAndEnsureLookAt((int)this);
  }
  if (local_4 != (int *)0x0) {
    (**(code **)(*local_4 + 4))();
  }
  return;
}

