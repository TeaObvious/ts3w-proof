/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162930 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_CreateFromBuffer [assembly=ScriptCore token=0x06001038; data:
   System.Byte[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing body owns only007758F0, one byte; canonical224-byte window
   remains bounded evidence, not a complete defined function. No body/instruction/prototype/storage
   repair. Bounded path null-checks incoming array, calls script-interface virtual+0x70 with array
   plus two stack output addresses, allocates/configures a stream, tests stream virtual+0x20 in AL,
   copies the returned bytes, calls004DEE40 with float0 and registers via00774EC0 before final
   virtual+0x8. Decompiler stack outputs, apparent memcpy length and unaff_ESI are artifacts
   requiring instruction accounting, not recovered source ABI. Concrete
   manager/configuration/lifetime and failure/unwind effects remain unproved. */

int ScriptCore_StreamHost__StreamHost_CreateFromBuffer(void *param_1)

{
  char cVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  undefined4 unaff_ESI;
  void *_Src;
  undefined1 auStack_4 [4];
  
  _Src = param_1;
  if (param_1 != (void *)0x0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar2 + 0x70))(_Src,auStack_4);
    pvVar3 = (void *)FUN_004e4500(0x2c,"Scripting/MemoryStream",0);
    if (pvVar3 != (void *)0x0) {
      piVar2 = FUN_004df460(pvVar3,0,0,0);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
        FUN_004dee40(piVar2,1,1.0);
        cVar1 = (**(code **)(*piVar2 + 0x20))(unaff_ESI);
        if (cVar1 != '\0') {
          if (piVar2[1] == 0) {
            pvVar3 = (void *)0x0;
          }
          else {
            pvVar3 = *(void **)(piVar2[1] + 8);
          }
          memcpy(pvVar3,_Src,(size_t)&param_1);
          FUN_004dee40(piVar2,1,0.0);
          iVar4 = FUN_00774ec0(piVar2);
          (**(code **)(*piVar2 + 8))();
          return iVar4;
        }
        (**(code **)(*piVar2 + 8))();
      }
    }
  }
  return 0;
}

