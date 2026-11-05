/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service+EIGHT stack words RET20hex, AL
   Boolean. Lock at+40.7D8310 selects mounted key candidate. If outSlot!=0,7286D0 clears/replaces
   old slot using supplied callback. Manager+58 and container+18 can yield an existing resource;
   resource+0C(interfaceWord) result goes straight to slot, missing interface invokes resource+4 and
   returnsfalse. Otherwise pop/allocate request node from+398, prepare load729750, on null load
   store2/recycle/false. Accepted load links36-byte node
   {links0/4,slot8,interfaceC,load10,job14,client18,cookie1C,word20} into load+B8 list and publishes
   node|1; true means request represented, not resident texture. Request-node allocation failure
   returnsfalse without guaranteed slot2 write. Client virtual0 sees originalkey,cookie,result.
   Callsite ABI overrides preserve exact ECX/stack counts, removing earlier fakeunaff_EBX/wrongarg
   aliases. No mount precedence or total latency proof from this alone. */

bool __thiscall
ResourceRequests_SubmitKeyToSlot
          (void *this,uint *key,uint interfaceWord,uint *outSlot,void *clientWord,uint clientCookie,
          void *callback,uint replaceWord,uint requestWord)

{
  LPCRITICAL_SECTION this_00;
  int *outJob;
  bool bVar1;
  int *piVar2;
  void *pvVar3;
  int *piVar4;
  int *piStack_14;
  uint local_10 [4];
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x40);
  FUN_004e1c00(this_00,(uint *)&DAT_00ffe344);
  ResourceKey_CopyWithMountedCandidate(local_10,key);
  if (*outSlot != 0) {
    ResourceRequests_ClearSlot(this,outSlot,callback);
  }
  piVar2 = (int *)FUN_004afe80();
  piVar2 = (**(code **)(*piVar2 + 0x58))(piVar2,local_10);
  if (piVar2 != (int *)0x0) {
    bVar1 = (**(code **)(*piVar2 + 0x18))(piVar2,local_10,&piStack_14);
    if (bVar1) {
      pvVar3 = (**(code **)(*piStack_14 + 0xc))(piStack_14,interfaceWord);
      if (pvVar3 == (void *)0x0) {
        (**(code **)(*piStack_14 + 4))(piStack_14);
      }
      *outSlot = (uint)pvVar3;
      if (clientWord != (void *)0x0) {
        (*(code *)**(undefined4 **)clientWord)(clientWord,key,clientCookie,pvVar3);
      }
      FUN_004e1cc0(this_00);
      return pvVar3 != (void *)0x0;
    }
  }
  piVar4 = *(int **)((int)this + 0x398);
  piVar2 = (int *)((int)this + 0x398);
  if (piVar4 == (int *)0x0) {
    piVar4 = (int *)FUN_007271b0(piVar2);
    if (piVar4 == (int *)0x0) {
      if (clientWord != (void *)0x0) {
        (*(code *)**(undefined4 **)clientWord)(clientWord,key,clientCookie,(void *)0x0);
      }
      FUN_004e1cc0(this_00);
      return false;
    }
  }
  *piVar2 = *piVar4;
  outJob = piVar4 + 5;
  *outJob = 0;
  pvVar3 = (void *)*outJob;
  if (pvVar3 != (void *)0x0) {
    *outJob = 0;
    Job_ReleaseReference(pvVar3);
  }
  pvVar3 = ResourceRequests_PrepareLoad(this,local_10,0,outJob,replaceWord,0,requestWord);
  if (pvVar3 == (void *)0x0) {
                    /* Tree texture review: Load preparation failed: slot literal2. Distinct from
                       request-record allocation failure, which returnsfalse without this store. */
    *outSlot = 2;
    FUN_00727db0(this,key,3,0);
    if (clientWord != (void *)0x0) {
      (*(code *)**(undefined4 **)clientWord)(clientWord,key,clientCookie,(void *)0x0);
    }
    if ((void *)*outJob != (void *)0x0) {
      Job_ReleaseReference((void *)*outJob);
    }
    *piVar4 = *piVar2;
    *piVar2 = (int)piVar4;
    FUN_004e1cc0(this_00);
    return false;
  }
  piVar4[6] = (int)clientWord;
  piVar4[3] = interfaceWord;
  piVar4[4] = (int)pvVar3;
  piVar4[8] = replaceWord;
  piVar4[2] = (int)outSlot;
  piVar4[7] = clientCookie;
  piVar4[1] = *(int *)((int)pvVar3 + 0xbc);
  *piVar4 = (int)pvVar3 + 0xb8;
  *(int **)((int)pvVar3 + 0xbc) = piVar4;
  *(int **)piVar4[1] = piVar4;
                    /* Tree texture review: Publish pending request: OR ESI,1 then *outSlot=ESI.
                       Predicate false here is pending, not a null resource lookup. */
  *outSlot = (uint)piVar4 | 1;
  FUN_004e1cc0(this_00);
  return true;
}

