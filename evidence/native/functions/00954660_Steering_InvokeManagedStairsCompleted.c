/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Steering interface vtable0x010455a8 +0x58 at0x01045600 contains this
   entry0x00954660. Constructor0x00955a30 assigns this vtable to full component+8; ECX here is that
   interface subobject, owner pointer atthis-4. AnimatedStairsBody_Transition0x008542e0 calls this
   slot with body+a0 request in state10 and failure/completion branches. Original RET4 establishes
   one stack request pointer; no null guard before reading request+0x1c/+0x20. Boolean success is
   DWORD equality of those two request fields. Cleanup0x00953720(fullcomponent=this-8) happens
   before obtaining global host0x00769390. If host is null, return without managed invocation.
   Three32-byte engine variants marshal requestGUID at+8/+c, ownerGUID atowner+8/+c, then success
   byte. Uint64 writer0x004f6020 uses type word12 atvariant+a and twoDWORD payload at+10/+14;
   Boolean uses type word1/payloadbyte+10. Host vtable+0x138 receives resultvariant, original class
   Sims3.Gameplay.Core.Stairs,Sims3GameplaySystems, method OnStairsCompleted, argumentarray, count3.
   Existing managed signature establishes (stairsGUID,followerGUID,bool). This is original stair
   traversal completion, not world travel. Variants cleaned after call using their ownership flags.
   Callback itself returns void; host native return ignored. Function recovered at verified prologue
   after previous RET/INT3 and exact RET4 through0x00954814; originalbytes unchanged.
   Decompiler artifact: final variant cleanup loop shows register0x00000010; original009547dc loads
   ESI=ESP+0xa0, then SUBESI0x20 and iterates exactly3 stack variants. This synthetic register
   expression is not an original pointer value. */

void __thiscall Steering_InvokeManagedStairsCompleted(void *this,void *stairsRequest)

{
  int iVar1;
  int iVar2;
  undefined4 *this_00;
  undefined4 *puVar3;
  undefined **local_8c [2];
  ushort local_84;
  undefined2 local_82;
  undefined1 local_7c;
  int *local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined **local_60 [2];
  undefined2 local_58;
  undefined2 local_56;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  iVar1 = *(int *)((int)stairsRequest + 0x1c);
  iVar2 = *(int *)((int)stairsRequest + 0x20);
  FUN_00953720((int)this + -8);
  local_6c = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_6c != (int *)0x0) {
    local_8c[0] = &PTR_FUN_00fba6f4;
    local_84 = 0;
    local_82 = 0;
    Variant_AssignUInt64(local_8c,(ulonglong *)((int)stairsRequest + 8));
    local_60[0] = &PTR_FUN_00fba6f4;
    local_58 = 0;
    local_56 = 0;
    FUN_004f64b0(local_60,(int)local_8c);
    local_8c[0] = &PTR_FUN_00fba6f4;
    if ((local_84 & 4) != 0) {
      FUN_004f5760(local_8c,'\0');
    }
    local_68 = *(undefined4 *)(*(int *)((int)this + -4) + 8);
    local_64 = *(undefined4 *)(*(int *)((int)this + -4) + 0xc);
    local_8c[0] = &PTR_FUN_00fba6f4;
    local_84 = 0;
    local_82 = 0;
    Variant_AssignUInt64(local_8c,(ulonglong *)&local_68);
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    FUN_004f64b0(local_40,(int)local_8c);
    local_8c[0] = &PTR_FUN_00fba6f4;
    if ((local_84 & 4) != 0) {
      FUN_004f5760(local_8c,'\0');
    }
    local_8c[0] = &PTR_FUN_00fba6f4;
    local_82 = 1;
    local_84 = 0;
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    local_7c = iVar1 == iVar2;
    FUN_004f64b0(local_20,(int)local_8c);
    local_8c[0] = &PTR_FUN_00fba6f4;
    if ((local_84 & 4) != 0) {
      FUN_004f5760(local_8c,'\0');
    }
    (**(code **)(*local_6c + 0x138))
              (local_6c,local_8c,"Sims3.Gameplay.Core.Stairs,Sims3GameplaySystems",
               "OnStairsCompleted",local_60,3);
    local_8c[0] = &PTR_FUN_00fba6f4;
    if ((local_84 & 4) != 0) {
      FUN_004f5760(local_8c,'\0');
    }
    iVar2 = 2;
    puVar3 = (undefined4 *)register0x00000010;
    do {
      this_00 = puVar3 + -8;
      *this_00 = &PTR_FUN_00fba6f4;
      if ((*(byte *)(puVar3 + -6) & 4) != 0) {
        FUN_004f5760(this_00,'\0');
      }
      iVar2 = iVar2 + -1;
      puVar3 = this_00;
    } while (-1 < iVar2);
  }
  return;
}

