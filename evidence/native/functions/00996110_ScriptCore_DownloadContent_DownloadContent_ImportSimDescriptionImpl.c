/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* Verified PC 1.67 registration table at 0x01181688 (TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ImportSimDescriptionImpl [assembly=ScriptCore
   token=0x060000AA; key: Sims3.SimIFace.ResourceKey, pKeyTable: System.Byte[]&, pIdTable:
   System.UInt64[]&, pScriptData: System.Byte[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: cdecl 16-byte managedkey and3output-array handles; BooleanAL. Reorderskey,
   resolvesresource viaresourcehost+0c, getscontent interface04f88964 and exports bytekey table,
   uint64 IDs and byte script data. Keytable serialization count*16+4 andobject ID count/stride8
   verifiedASM. Decompiler stackcleanup warning remains; apparent nulladdressglobals are artifacts
   ofindirecthostcalls, notoriginalmemoryaccess. */

bool __cdecl
ScriptCore.DownloadContent::DownloadContent_ImportSimDescriptionImpl
          (TravelManagedResourceKey key,void *keyTableOut,void *objectIdsOut,void *scriptDataOut)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  int local_54 [2];
  int iStack_4c;
  int aiStack_48 [11];
  int *piStack_1c;
  byte bStack_14;
  undefined4 uStack_8;
  
  FUN_0076c0e0(&key,local_54);
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar3 = (int *)FUN_004afe80();
  if (piVar3 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar3 + 0xc))();
    if (cVar1 != '\0') {
      if (&stack0x00000000 != (undefined1 *)0x58) {
        piVar3 = (int *)(*pcRam0000000c)();
        if (piVar3 != (int *)0x0) {
          (**(code **)*piVar3)();
          iVar4 = (**(code **)(piVar3[0x12] + 0x1c))();
          if (iVar4 != 0) {
            (**(code **)(*piVar2 + 0x80))();
            if (piVar3[0x13] == 0) {
              uVar5 = 0;
            }
            else {
              uVar5 = *(undefined4 *)(piVar3[0x13] + 8);
            }
            (**(code **)(*piVar2 + 0x98))(uStack_8,uVar5,0);
            FUN_004df4c0(aiStack_48,(void *)0x0,(piVar3[0xb] - piVar3[10] >> 4) * 0x10 + 4,'\0',1,
                         (int *)0x0,"Scratch/DownloadContent/KeyTable");
            FUN_007d93e0(&stack0xffffffa0,aiStack_48,1);
            if ((bStack_14 & 1) != 0) {
              FUN_00ad6310(piVar3 + 10,(ushort *)piVar3[0x1e]);
            }
            cVar1 = FUN_007d8a00(piVar3 + 10,(int)&stack0xffffffa0);
            if (cVar1 != '\0') {
              (**(code **)(*piVar2 + 0x80))();
              if (iStack_4c == 0) {
                uVar5 = 0;
              }
              else {
                uVar5 = *(undefined4 *)(iStack_4c + 8);
              }
              (**(code **)(*piVar2 + 0x98))(uStack_8,uVar5,0);
              piVar6 = piStack_1c;
              (**(code **)(*piVar2 + 0x88))(piStack_1c,piVar3[0xf] - piVar3[0xe] >> 3);
              (**(code **)(*piVar2 + 0xa0))(piStack_1c,piVar3[0xe],0,piVar3[0xf] - piVar3[0xe] >> 3)
              ;
              FUN_007d7990((int)&stack0xffffff70);
              FUN_00455b30((undefined4 *)&stack0xffffff88);
              (**(code **)(*piVar3 + 4))();
              if (piVar6 != (int *)0x0) {
                (**(code **)(*piVar6 + 4))();
              }
              return true;
            }
            FUN_007d7990((int)&stack0xffffffa0);
            FUN_00455b30(aiStack_48);
          }
          (**(code **)(*piVar3 + 4))();
          if (&stack0x00000000 != (undefined1 *)0x54) {
            (**(code **)(local_54[0] + 4))();
          }
          return false;
        }
        if (&stack0x00000000 != (undefined1 *)0x54) {
          (**(code **)(local_54[0] + 4))();
        }
      }
      return false;
    }
    if (&stack0x00000000 != (undefined1 *)0x58) {
      (*_DAT_00000004)();
    }
  }
  return false;
}

