/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component; original16-bit code-unit name,flags,related
   object RET12; returns child UInt32 EAX unchanged. Converts into64-byte stack buffer with
   CodeUnits16_EncodeBoundedBytes(capacity64,inputUnitLimitFFFFFFFF), ignores required byte count,
   then calls admission with existingSoundId0. No null-name guard in this wrapper. Conversion helper
   treats each16-bit code unit independently; not full Unicode scalar/surrogate-pair conversion. */

uint __thiscall
ObjectSound_StartWideName(void *this,ushort *soundNameCodeUnits,uint flags,void *relatedObject)

{
  uint uVar1;
  byte local_40 [64];
  
  CodeUnits16_EncodeBoundedBytes(local_40,soundNameCodeUnits,0x40,0xffffffff);
  uVar1 = ObjectSound_StartWithAdmissionChecks(this,local_40,flags,relatedObject,0);
  return uVar1;
}

