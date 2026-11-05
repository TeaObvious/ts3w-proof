/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163268 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetTerrainTypeImpl [assembly=ScriptCore token=0x0600074A; x:
   System.Single, z: System.Single, level: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_GetTerrainTypeImpl(float param_1,float param_2,int param_3)

{
  void *this;
  char cVar1;
  void *pvVar2;
  undefined4 uVar3;
  float10 fVar4;
  float local_1c;
  float local_18;
  char local_14 [8];
  float local_c;
  float local_8;
  undefined4 local_4;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    if (param_3 == 0) {
      fVar4 = FUN_00c6a090(DAT_011edbc4,param_1,param_2,0,'\x01','\0',(undefined1 *)0x0,
                           (undefined1 *)0x0,'\0','\0');
      if (fVar4 < (float10)*(float *)(*(int *)((int)this + 0x60) + 0x14)) {
        return 2;
      }
      pvVar2 = FUN_00c60880(this,param_1,param_2,'\x01');
      if (pvVar2 != (void *)0x0) {
        return 8;
      }
    }
    pvVar2 = FUN_00c687d0(this,param_1,param_2);
    if (pvVar2 != (void *)0x0) {
      local_1c = 0.0;
      local_18 = 0.0;
      FUN_00ab6e40(pvVar2,param_1,param_2,&local_1c,&local_18);
      local_14[0] = -1;
      local_14[1] = 0xff;
      local_14[3] = 0xff;
      local_c = local_1c;
      local_8 = local_18;
      local_4 = 0;
      local_14[2] = 0;
      FUN_00af7db0(&local_c,local_14);
      FUN_00784eb0(pvVar2,local_14);
      cVar1 = FUN_00ad0d70(pvVar2,(undefined2 *)local_14,1,1);
      if ((cVar1 != '\0') ||
         (uVar3 = FUN_00ad0d00(pvVar2,local_14,1,1,(undefined1 *)0x0), (char)uVar3 != '\0')) {
        return 0x40;
      }
      uVar3 = FUN_00ab0080(pvVar2,local_14,(byte)local_14._3_4_);
      if ((char)uVar3 != '\0') {
        return 0x80;
      }
      if ((*(void **)((int)pvVar2 + 0x290) != (void *)0x0) &&
         (cVar1 = FUN_00a8e0b0(*(void **)((int)pvVar2 + 0x290),local_14,(byte)local_14._3_4_,'\x01')
         , cVar1 != '\0')) {
        return 0x20;
      }
      return 0x10;
    }
    uVar3 = FUN_00b865c0(*(void **)((int)this + 0x5c),param_1,param_2,'\0','\0');
    if ((char)uVar3 != '\0') {
      return 4;
    }
  }
  return 1;
}

