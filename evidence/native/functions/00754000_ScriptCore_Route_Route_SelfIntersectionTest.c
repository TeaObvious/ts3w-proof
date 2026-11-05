/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01161968 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SelfIntersectionTest [assembly=ScriptCore token=0x06001110; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst contract (PC 1.67):
   PC1.67 registered Route_SelfIntersectionTest, ScriptCore MethodDef06001110, UInt32 handle ->
   managed Boolean (no explicit return marshal descriptor). Native one DWORD at EBP+8/plainRET; only
   AL is normalized0/1. Missing global011D50C4 or unresolved typed route returnsAL0. After receiver
   virtual+10, iterate +E0 sentinel nodes and retain each child node+8 at refcount+4; virtual+DC
   supplies begin/end of48-byte records. Compare nonadjacent segments i/i+1 against j/j+1 withj>=i+2
   within the same child only. Four scratch Float32 pairs select record components0/2. Calls007CDCA0
   with null optional output and determinant threshold float0x3C23D70A (~0.01). First accepted pair
   releases child, calls receiver virtual+14 and returnsAL1; normal exhaustion also releases and
   calls+14, returnsAL0. Null child is not gracefully handled after conditional retain. Actual route
   bracket targets, point producer/axis naming, malformed arrays, concurrency and bridge Boolean ABI
   remain separate. Body546owned bytes in3ranges;12envelopegap bytes are excluded. Decompiler
   spills/fullEAX return expressions are artifacts; original instructions govern.
   
   Analyst contract (PC 1.67):
   Verified PC 1.67 registration table at 0x01161968 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SelfIntersectionTest [assembly=ScriptCore token=0x06001110; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst contract (PC 1.67):
   PC1.67 registered Route_SelfIntersectionTest, ScriptCore MethodDef06001110, UInt32 handle ->
   managed Boolean (no explicit return marshal descriptor). Native one DWORD at EBP+8/plainRET; only
   AL is normalized0/1. Missing global011D50C4 or unresolved typed route returnsAL0. After receiver
   virtual+10, iterate +E0 sentinel nodes and retain each child node+8 at refcount+4; virtual+DC
   supplies begin/end of48-byte records. Compare nonadjacent segments i/i+1 against j/j+1 withj>=i+2
   within the same child only. Four scratch Float32 pairs select record components0/2. Calls007CDCA0
   with null optional output and determinant threshold float0x3C23D70A (~0.01). First accepted pair
   releases child, calls receiver virtual+14 and returnsAL1; normal exhaustion also releases and
   calls+14, returnsAL0. Null child is not gracefully handled after conditional retain. For concrete
   objects constructed by75D540 (CreateRoute75DAD0 witness), primaryvtable100583C+10 targets5A96E0
   retaining count+0C and+14 targets750080 releasing the same count via adjusted+8 destructor
   interface; this is lifetime retention, not a mutex bracket. Unknown other host subtypes/later
   vtable replacements remain separate. CustomPath762430/820020/C95ED0 gives one originalVector3.x/z
   producer witness; other child producers/later geometry callbacks, malformed arrays, concurrency
   and Boolean bridge ABI remain separate. Body546owned bytes in3ranges;12envelopegap bytes are
   excluded. Decompiler spills/fullEAX return expressions are artifacts; original instructions
   govern. */

uint __cdecl ScriptCore.Route::Route_SelfIntersectionTest(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  uint in_EAX;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  uint uVar7;
  float *pfVar8;
  float *pfVar9;
  float *pfVar10;
  int *piStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar4 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 0x10))();
      piStack_b4 = (int *)piVar4[0x38];
      if (piStack_b4 != piVar4 + 0x38) {
        do {
          piVar3 = (int *)piStack_b4[2];
          if (piVar3 != (int *)0x0) {
            LOCK();
            piVar3[1] = piVar3[1] + 1;
            UNLOCK();
          }
          puVar5 = (undefined4 *)(**(code **)(*piVar3 + 0xdc))();
          pfVar10 = (float *)(puVar5[1] + -0x30);
          for (pfVar8 = (float *)*puVar5; pfVar8 < pfVar10; pfVar8 = pfVar8 + 0xc) {
            pfVar9 = pfVar8 + 0x18;
            if (pfVar9 < pfVar10) {
              fStack_80 = pfVar8[0xc];
              fStack_7c = pfVar8[0xd];
              fStack_78 = pfVar8[0xe];
              fStack_74 = pfVar8[0xf];
              fStack_60 = pfVar8[0xc];
              fStack_5c = pfVar8[0xd];
              fStack_58 = pfVar8[0xe];
              fStack_54 = pfVar8[0xf];
              fStack_40 = *pfVar8;
              fStack_3c = pfVar8[1];
              fStack_38 = pfVar8[2];
              fStack_34 = pfVar8[3];
              fStack_20 = *pfVar8;
              fStack_1c = pfVar8[1];
              fStack_18 = pfVar8[2];
              fStack_14 = pfVar8[3];
              do {
                fStack_a0 = *pfVar9;
                fStack_4c = pfVar9[1];
                fStack_9c = pfVar9[2];
                fStack_44 = pfVar9[3];
                fStack_b0 = pfVar9[0xc];
                fStack_8c = pfVar9[0xd];
                fStack_ac = pfVar9[0xe];
                fStack_84 = pfVar9[0xf];
                fStack_a8 = fStack_80;
                fStack_a4 = fStack_58;
                fStack_98 = fStack_40;
                fStack_94 = fStack_18;
                fStack_90 = fStack_b0;
                fStack_88 = fStack_ac;
                fStack_70 = fStack_b0;
                fStack_6c = fStack_8c;
                fStack_68 = fStack_ac;
                fStack_64 = fStack_84;
                fStack_50 = fStack_a0;
                fStack_48 = fStack_9c;
                fStack_30 = fStack_a0;
                fStack_2c = fStack_4c;
                fStack_28 = fStack_9c;
                fStack_24 = fStack_44;
                uVar6 = TryIntersectSegments2D
                                  (&fStack_98,&fStack_a8,&fStack_a0,&fStack_b0,(float *)0x0,0.01);
                if ((char)uVar6 != '\0') {
                  if (piVar3 != (int *)0x0) {
                    piVar1 = piVar3 + 1;
                    LOCK();
                    iVar2 = *piVar1;
                    *piVar1 = *piVar1 + -1;
                    UNLOCK();
                    if (iVar2 == 1) {
                      LOCK();
                      *piVar1 = 1;
                      UNLOCK();
                      (**(code **)*piVar3)(1);
                    }
                  }
                  uVar6 = (**(code **)(*piVar4 + 0x14))();
                  return CONCAT31((int3)((uint)uVar6 >> 8),1);
                }
                pfVar9 = pfVar9 + 0xc;
              } while (pfVar9 < pfVar10);
            }
          }
          piVar1 = piVar3 + 1;
          LOCK();
          iVar2 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*piVar3)(1);
          }
          piStack_b4 = (int *)*piStack_b4;
        } while (piStack_b4 != piVar4 + 0x38);
        uVar7 = (**(code **)(*piVar4 + 0x14))();
        return uVar7 & 0xffffff00;
      }
      in_EAX = (**(code **)(*piVar4 + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}

