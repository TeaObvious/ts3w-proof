/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163440 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_CanSeeSkyFromPosImpl [assembly=ScriptCore token=0x0600078F; pos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.World::World_CanSeeSkyFromPosImpl(float param_1,float param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  float local_70;
  float fStack_6c;
  undefined4 uStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  undefined4 uStack_58;
  float fStack_54;
  float local_50 [19];
  
  iVar1 = CollisionService_GetGlobal();
  if (iVar1 == 0) {
    return false;
  }
  fStack_6c = param_2 + 30.0;
  local_60 = param_1;
  fStack_5c = param_2;
  uStack_58 = param_3;
  fStack_54 = param_1;
  local_70 = param_1;
  uStack_68 = param_3;
  fStack_64 = param_1;
  uVar2 = CollisionService_QuerySegment(&local_60,&local_70,0x10,local_50,'\x01');
  return (bool)('\x01' - ((char)uVar2 != '\0'));
}

