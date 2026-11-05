/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 39;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* WARNING: Removing unreachable block (ram,0x00764b58) */
/* WARNING: Removing unreachable block (ram,0x00764b64) */
/* WARNING: Removing unreachable block (ram,0x00764b74) */
/* WARNING: Removing unreachable block (ram,0x00764b8e) */
/* WARNING: Removing unreachable block (ram,0x00764bc0) */
/* WARNING: Removing unreachable block (ram,0x00764ba6) */
/* WARNING: Removing unreachable block (ram,0x00764bb3) */
/* WARNING: Removing unreachable block (ram,0x00764bd3) */
/* WARNING: Removing unreachable block (ram,0x00764bd7) */
/* WARNING: Removing unreachable block (ram,0x00764be6) */
/* WARNING: Removing unreachable block (ram,0x00764bf7) */
/* WARNING: Removing unreachable block (ram,0x00764b70) */
/* WARNING: Removing unreachable block (ram,0x00764c04) */
/* WARNING: Removing unreachable block (ram,0x00764c7d) */
/* WARNING: Removing unreachable block (ram,0x00764cfa) */
/* WARNING: Removing unreachable block (ram,0x00764d10) */
/* WARNING: Removing unreachable block (ram,0x00764de8) */
/* WARNING: Removing unreachable block (ram,0x00764dec) */
/* WARNING: Removing unreachable block (ram,0x00764e6b) */
/* WARNING: Removing unreachable block (ram,0x00764e7c) */
/* WARNING: Removing unreachable block (ram,0x00764e87) */
/* WARNING: Removing unreachable block (ram,0x00764e8f) */
/* WARNING: Removing unreachable block (ram,0x00764e97) */
/* WARNING: Removing unreachable block (ram,0x00764ea6) */
/* WARNING: Removing unreachable block (ram,0x00764eb1) */
/* WARNING: Removing unreachable block (ram,0x00764eb9) */
/* WARNING: Removing unreachable block (ram,0x00764ee0) */
/* WARNING: Removing unreachable block (ram,0x00764ee9) */
/* WARNING: Removing unreachable block (ram,0x00764f04) */
/* WARNING: Removing unreachable block (ram,0x00764f0d) */
/* WARNING: Removing unreachable block (ram,0x00764f16) */
/* WARNING: Removing unreachable block (ram,0x00764f3d) */
/* WARNING: Removing unreachable block (ram,0x00764f46) */
/* Verified PC 1.67 registration table at 0x01161c60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_PlaceGroupSocialImpl [assembly=ScriptCore token=0x06001062;
   groupedScriptHandles: System.UInt64[], singleScriptHandles: System.UInt64[], positionArray:
   System.Single[]&, orientArray: System.Single[]&, fSeparation: System.Single;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 contract: resolves grouped/single object handles, invokes the group-position
   solver, and on its physical success path passes position/orientation triples to two host output
   setters. Success writes AL=1 at 00764F0D; refusal writes AL=0. Upper EAX is not normalized, and
   the original managed import consumes an I1 Boolean. Setter outcomes are not tested, so AL=1 alone
   proves neither completed placement nor successful copying.
   
   Current C removes 33 blocks, including the real success branch. Original stack operands bind the
   second host +68h output to the following data-pointer test; a concrete provider can publish
   nonnull data. This is a conditional alias/projection diagnosis, not a proved NoReturn cause or
   ABI repair. Native refusal does not explicitly initialize outputs; the outer SimIFace wrapper
   substitutes empty Vector3 arrays only on normal false return. Solver, conversion, allocation and
   host-copy lifetimes remain open. */

uint __cdecl
ScriptCore.RouteManager::RouteManager_PlaceGroupSocialImpl
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4,
          float param_5)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  uint extraout_EAX;
  uint uVar5;
  int unaff_EBX;
  int iVar6;
  undefined4 uStack_164;
  int *piStack_160;
  int *local_15c;
  undefined4 local_158;
  undefined4 local_154;
  int *local_150;
  int *local_14c;
  int *local_148;
  undefined4 local_144;
  void *local_140;
  undefined4 local_13c;
  int *local_138;
  void *local_134;
  int *local_12c;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = 0;
  if (piVar3 != (int *)0x0) {
    local_12c = piVar3;
    local_134 = ObjectRegistry_GetGlobal();
    uVar5 = 0;
    if (local_134 != (void *)0x0) {
      local_144 = 0;
      local_140 = (void *)0x0;
      local_13c = 0;
      local_138 = (int *)0x1005a3c;
      local_154 = 0;
      local_150 = (int *)0x0;
      local_14c = (int *)0x0;
      local_148 = (int *)0x1005a3c;
      local_15c = (int *)0x0;
      local_158 = 0;
      (**(code **)(*piVar3 + 0x68))(param_1,&local_15c,&local_158);
      if (unaff_EBX == 0) {
        FUN_00be7d50(piStack_160,local_15c);
        if (piStack_160 != (int *)0x0) {
          Memory_FreeIfNonNull(piStack_160);
        }
      }
      else {
        iVar6 = 0;
        if (0 < uStack_164) {
          do {
            puVar4 = ObjectRegistry_FindBorrowed
                               (local_140,
                                CONCAT44(*(undefined4 *)(unaff_EBX + 4 + iVar6 * 8),
                                         *(undefined4 *)(unaff_EBX + iVar6 * 8)));
            if (puVar4 != (undefined4 *)0x0) {
              piVar3 = puVar4 + 1;
              LOCK();
              *piVar3 = *piVar3 + 1;
              UNLOCK();
              if (local_14c < local_148) {
                piVar2 = local_14c + 1;
                if (local_14c != (int *)0x0) {
                  *local_14c = (int)puVar4;
                  LOCK();
                  *piVar3 = *piVar3 + 1;
                  UNLOCK();
                }
              }
              else {
                FUN_00876270(&local_150,local_14c,(int *)((int)register0x00000010 + -0x16c));
                piVar2 = local_14c;
              }
              local_14c = piVar2;
              if (puVar4 != (undefined4 *)0x0) {
                piVar3 = puVar4 + 1;
                LOCK();
                iVar1 = *piVar3;
                *piVar3 = *piVar3 + -1;
                UNLOCK();
                if (iVar1 == 1) {
                  LOCK();
                  *piVar3 = 1;
                  UNLOCK();
                  (**(code **)*puVar4)(1);
                }
              }
            }
            iVar6 = iVar6 + 1;
          } while (iVar6 < uStack_164);
          piVar3 = local_138;
        }
        uStack_164 = 0;
        (**(code **)(*piVar3 + 0x68))(param_2,(int)register0x00000010 + -0x168,&uStack_164);
        FUN_00be7d50(piStack_160,local_15c);
        if (piStack_160 != (int *)0x0) {
          Memory_FreeIfNonNull(piStack_160);
        }
      }
      FUN_00be7d50(local_150,local_14c);
      uVar5 = 0;
      if (local_150 != (int *)0x0) {
        Memory_FreeIfNonNull(local_150);
        uVar5 = extraout_EAX;
      }
    }
  }
  return uVar5 & 0xffffff00;
}

