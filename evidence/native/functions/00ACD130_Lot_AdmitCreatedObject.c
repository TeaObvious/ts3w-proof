/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: original DATA vtable target010662D0 pointsACD130, exact entry recovered by
   instruction flow without clearing bytes. ECXlot +1stackobject/RET4, ALsuccess. Eligibility
   virtual74, ACC2B0 admission; success AB2D40 completion/event9 then AL1; failure C6FF70 retirement
   then AL0. Full original caller798D90 supplies event0B after successful virtual30. Metadata only;
   original bytes unchanged.
   
   PC1.67 original static instructions. Exact original DATApointer010662D0 recoveredentry;
   ECXlot+1stackobject RET4 lowAL. Calls virtual74 (original vtableslot01066314 ->C71160), then
   ACC2B0 tiles/lot admission. Success AB2D40 completion/event9 then AL1; failure after eligible
   genericadmission invokes C6FF70(managerremove) thenAL0. Caller798D90 emits event0B only after
   this returns success. No native general snapshot rollback/managed exception compensation
   inferred. */

bool __thiscall Lot_AdmitCreatedObject(void *this,void *object)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = (**(code **)(*(int *)this + 0x74))(object);
  if (cVar1 != '\0') {
    uVar2 = Lot_InsertObjectTileMembership(this,object);
    if ((char)uVar2 != '\0') {
      Lot_CompleteObjectAdmission(this,object);
      return true;
    }
    ObjectManager_RemoveOwnedObject(this,object,'\0');
  }
  return false;
}

