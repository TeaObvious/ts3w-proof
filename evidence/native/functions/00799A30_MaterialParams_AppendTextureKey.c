/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX parameter builder; stack hash plus five payload DWORDs; RET0x18. Build
   five-word local payload, invoke append with kind4/count5. Terrain callers supply four
   resource-key words plus0. This is material record construction, not decoded texture storage. Role
   name is descriptive, not a recovered original symbol. */

void __thiscall
MaterialParams_AppendTextureKey
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_14 = param_2;
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_5;
  local_4 = param_6;
  MaterialParams_AppendEntryPayload(this,param_1,4,&local_14,5);
  return;
}

