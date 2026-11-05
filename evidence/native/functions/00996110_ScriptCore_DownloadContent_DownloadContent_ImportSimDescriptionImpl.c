/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  undefined1 uStack00000000;
  int *piVar6;
  int iStack_7c;
  int local_54 [2];
  int iStack_4c;
  undefined4 auStack_48 [11];
  int *piStack_1c;
  byte bStack_14;
  undefined4 uStack_8;
  
  UIResourceKey_CopyManagedToNative(&key,local_54);
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar3 = (int *)FUN_004afe80();
  if (piVar3 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar3 + 0xc))();
    if (cVar1 != '\0') {
      if (&uStack00000000 != (undefined1 *)0x58) {
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
            FUN_004df4c0(auStack_48,(void *)0x0,(piVar3[0xb] - piVar3[10] >> 4) * 0x10 + 4,'\0',1,
                         (int *)0x0,"Scratch/DownloadContent/KeyTable");
            StreamReader_Construct(local_54 + -3,auStack_48,1);
            if ((bStack_14 & 1) != 0) {
              FUN_00ad6310(piVar3 + 10,(ushort *)piVar3[0x1e]);
            }
            cVar1 = FUN_007d8a00(piVar3 + 10,(int)(local_54 + -3));
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
              StreamReader_ReleaseAuxiliary(local_54 + -0xf);
              FUN_00455b30(local_54 + -9);
              (**(code **)(*piVar3 + 4))();
              if (piVar6 != (int *)0x0) {
                (**(code **)(*piVar6 + 4))();
              }
              return true;
            }
            StreamReader_ReleaseAuxiliary(local_54 + -3);
            FUN_00455b30(auStack_48);
          }
          (**(code **)(*piVar3 + 4))();
          if (&uStack00000000 != (undefined1 *)0x54) {
            (**(code **)(local_54[0] + 4))();
          }
          return false;
        }
        if (&uStack00000000 != (undefined1 *)0x54) {
          (**(code **)(local_54[0] + 4))();
        }
      }
      return false;
    }
    if (&uStack00000000 != (undefined1 *)0x58) {
      (*_DAT_00000004)();
    }
  }
  return false;
}

