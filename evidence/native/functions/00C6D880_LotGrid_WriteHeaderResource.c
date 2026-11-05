/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Build-state header writer: opens resource type 0xB125533A with the supplied group/lot key; writes
   decimal version 1 and three retained dimensions, accumulating status. Failure closes; only AL
   status is established. The deck group is established by callers 0x00AC4FA0 and 0x00AC91D0.
   
   PC1.67 basementwriterusage confirmed: ECXgrid+context/group/GUIDlow/high RET10hex statusAL.
   OpensB125533A selectedgroup andlotkey, WRITESversion1,width,depth,levels asfourDWORDs.
   Version1writer doesnot implyA97260validatesreadversion. No host-levelcap8, exactEOF or
   empty-layer normalization inferred.
   
   Additional PC1.67 floor-feature usage: generic B125533A writer for byte flags group00333E35 and
   ushort masks group00333E36 uses retained dimension fields+4/+8/+C, version1 and caller context
   byte order. Header writing does not infer reader version validation or EOF; body and description
   version remain enclosing owners. */

bool __thiscall
LotGrid_WriteHeaderResource
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  byte bVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0xb125533a;
  local_4 = param_2;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),1,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 4),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 8),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0xc),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    if (*(char *)((int)param_1 + 0x14) == '\0') {
      ResourceStreamContext_Close(param_1);
    }
  }
  return (bool)*(undefined1 *)((int)param_1 + 0x14);
}

