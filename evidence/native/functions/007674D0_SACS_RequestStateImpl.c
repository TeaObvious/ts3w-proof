/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 ScriptCore.SACS::SACS_RequestStateImpl, MethodDef 0x06000D6C.
   The original declaration has seven 32-bit native arguments, in order:
   driverHandle, actorHash, stateHash, flags, simTickTimeout,
   bridgeDriverHandle, bridgeActorHash.

   Raw x86 stack proof (S = ESP on entry, [S] = return address):
     007674D7 mov ecx,[esp+0x0c]  ESP=S-8  -> [S+4]  arg1 driverHandle
     007674F6 mov eax,[esp+0x20]  ESP=S-8  -> [S+24] arg6 bridgeDriverHandle
     00767510 mov esi,[esp+0x1c]  ESP=S-12 -> [S+16] arg4 flags
     00767519 mov ebp,[esp+0x1c]  ESP=S-16 -> [S+12] arg3 stateHash
     0076752D mov ecx,[esp+0x2c]  ESP=S-16 -> [S+28] arg7 bridgeActorHash
     00767533 mov edx,[esp+0x24]  ESP=S-16 -> [S+20] arg5 simTickTimeout
     0076753B mov ecx,[esp+0x28]  ESP=S-32 -> [S+8]  arg2 actorHash
     00767555 mov edx,[esp+0x18]  ESP=S-16 -> [S+8]  arg2 actorHash
     00767566 test esi,0x200     ESI=arg4 -> EnsureAnimation flag
   Source lookup failure returns -2. A nonzero bridge handle is looked up;
   only a resolved destination creates a retained state watch. The constructor
   call at 0076754C receives, in source-order, 0, 0, source driver, actor hash,
   state hash, flags, zero float, timeout, destination driver, bridge actor hash.
   Its raw reads at 00767230..00767278 consume arguments 1, 2, 5, 9, 10;
   it stores state hash at callback +0x18, retained destination driver at
   +0x1c, and destination actor hash at +0x20. It never reads the timeout.
   The core call at 00767561 receives actor hash, state hash, flags, callback,
   and literal zero; its result is returned unchanged. flags bit 0x200 dispatches
   EnsureAnimation after core submission even if that result is negative.
   WARNING: Ghidra stack flow across indirect host lookups is inaccurate:
   current pseudocode labels the bridge-driver lookup as simTickTimeout and
   the 0x200 test as stateHash. Use the original instructions above for ABI
   conclusions. A plain RET is compatible with caller cleanup; managed
   CallingConventionWinApi metadata alone does not prove the native x86 ABI.
   Original byte witnesses:
   evidence/native/functions/007674D0_SACS_RequestStateImpl.asm;
   guides/sacs/native/disassembly/bridge-watch-constructor-767220.objdump.txt;
   original PC 1.67 TS3W.exe. */

int __cdecl
SACS_RequestStateImpl
          (uint driverHandle,uint actorHash,uint stateHash,uint flags,uint simTickTimeout,
          uint bridgeDriverHandle,uint bridgeActorHash)

{
  int *piVar1;
  void *this;
  undefined4 *this_00;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(driverHandle);
  if (this == (void *)0x0) {
    return -2;
  }
  iVar2 = 0;
  if (simTickTimeout != 0) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(simTickTimeout);
  }
  piVar1 = (int *)0x0;
  if (iVar2 != 0) {
    this_00 = FUN_0076ae20();
    if (this_00 == (undefined4 *)0x0) {
      piVar1 = (int *)0x0;
    }
    else {
      piVar1 = SACS_BridgeWatchConstructor_767220(this_00,0,0,this,driverHandle,actorHash);
    }
  }
  iVar2 = SACS_CoreRequestState_803e20(this,driverHandle,actorHash,stateHash,piVar1,0);
  if ((stateHash & 0x200) != 0) {
    SACS_ScheduleDriverImmediate(DAT_011d9d40,(int)this,1);
  }
  return iVar2;
}
