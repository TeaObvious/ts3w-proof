/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. ECX lot pointer plus lot-ID low/high words in two
   stack slots, RET8; no return-value contract claimed. Build stream from lot+3A8 and require
   nonnull reader/sticky status; obtain existing routing interface via828CF0. Within scoped tracker,
   compute DWORDlot+408==1 and+40C==50hex predicate, explicitly normalize fullECX0/1 by XOR/SETNZ,
   and push it as loadContext into82C4A0 atAB30A5. Existing82C4A0 forwards it unchanged to63D100,
   which retains fullcontext at lotrecord+170 and stores low16context+4 at+16C. Therefore
   selectedcomponent4 is ordinary and5 commercial diving; this is not a min-floor-derived index.
   Release scoped tracker and stream auxiliary. Pointer-looking GUID parameter in C is inferred;
   actual two DWORD stack loads/PUSHes andRET8 establish physical transport.
   Complete148bytes/47instructions, no ABI/types/bytes edited. */

void __thiscall Lot_LoadRoutingResources(void *this,ushort *param_1,uint param_2)

{
  byte bVar1;
  void *this_00;
  int local_20 [2];
  int local_18 [5];
  char local_4;
  
  FUN_007d7950(local_18,(undefined4 *)((int)this + 0x3a8));
  if (((local_18[0] != 0) && (local_4 != '\0')) &&
     (this_00 = (void *)thunk_FUN_00835d40(), this_00 != (void *)0x0)) {
    FUN_007d3170(local_20,0x46c3520,0x46c3526,this);
    bVar1 = 1;
    if ((*(int *)((int)this + 0x408) != 1) || (*(int *)((int)this + 0x40c) != 0x50)) {
      bVar1 = 0;
    }
    LotRouting_ReadLotDataResources(this_00,(uint)param_1,param_2,local_18,(uint)bVar1);
    FUN_007d31b0(local_20);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return;
}

