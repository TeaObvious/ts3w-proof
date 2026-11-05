/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 resolved-command dispatch admission; analyst-assigned name. ECXmanager and one
   physical stack command/frame pointer, RET4. Existing metadata remains untouched.
   
   Locks manager+48 via004E1C00, reads frame+4 identity and looks it up in the UInt32 map, then
   requires manager+44 dispatcher. On admitted entry: atomic XCHG frame+D8 with1; dispatcher
   virtual+8 receives frame; unlock004E1CC0; explicit MOVEAX,1. Thus this admission result is1
   independently of the dispatch callback's returned register value. It is not the original managed
   CommandHandler's arbitrary Int32 result.
   
   Missing map entry or dispatcher: XCHG frame+D8 with2, unlock, return the PREVIOUS status captured
   by XCHG. Do not simplify this branch to a constantfalse or2 return without its caller's
   constructor/status precondition. Dispatcher queue/backend/threading and actual script callback
   execution remain separate children. No type/ABI/byte change; lock and physical instruction order
   govern over decompiler extraout values. */

undefined4 __thiscall ConsoleCommandManager_DispatchResolved(void *this,uint param_1)

{
  LPCRITICAL_SECTION this_00;
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int *extraout_EAX;
  undefined1 local_8 [8];
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x48);
  FUN_004e1c00(this_00,(uint *)&DAT_00fccf1c);
  uVar3 = param_1;
  param_1 = *(uint *)(param_1 + 4);
  iVar2 = *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4);
  UInt32PairMap_Find((void *)((int)this + 4),local_8,&param_1);
  if ((*extraout_EAX == iVar2) || (*(int *)((int)this + 0x44) == 0)) {
    LOCK();
    uVar1 = *(undefined4 *)(uVar3 + 0xd8);
    *(undefined4 *)(uVar3 + 0xd8) = 2;
    UNLOCK();
    FUN_004e1cc0(this_00);
    return uVar1;
  }
  LOCK();
  *(undefined4 *)(uVar3 + 0xd8) = 1;
  UNLOCK();
  (**(code **)(**(int **)((int)this + 0x44) + 8))(uVar3);
  FUN_004e1cc0(this_00);
  return 1;
}

