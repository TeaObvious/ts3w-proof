/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: FrameDrawable_GetPropertyContext.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00522D95 [EOL]: ECX is secondary interface object+4; complete receiver is ECX-4, copied into output+4.
 * 00522D9B [EOL]: Output descriptor pointer FBD910 contains rowsFBD8D4/count3 and class ID030D54B9.
 * 00522DAD [EOL]: Invoke secondary virtual+14 for class ID; output+C receives EAX, distinct from function return semantics.
 * 00522DB3 [EOL]: RET4 consumes one output pointer; output context aliases receiver storage and does not retain it.
 */



/* Analyst-assigned FrameDrawable property-context producer; original PC1.67, existing
   owned00522D90..00522DB5 (38bytes/12instructions), unchanged. ECX is the secondary interface
   installed at completeobject+4 by initializer523830, not the complete receiver. Stack+4 points to
   writable fourDWORD output. Stores output={FBD910,ECX-4,1,secondaryvirtual+14 result};
   primary/secondary vtable and class metadata connect the last slot to030D54B9 via candidate522C40.
   RET4 consumes output pointer; no semantic EAX return is established. The generic Get/Set property
   frontends queryEEC58382 and invoke this interface virtual+10 before511CA0 descriptor lookup. No
   allocation/refcount/ownership transfer, null/capacity guard, property change or notification
   occurs in this body. Output receiver remains an alias requiring completeobject lifetime.
   Undefined query/class-ID leaves are separately captured candidates; no function/body/signature
   repair inferred. */

void __thiscall FrameDrawable_GetPropertyContext(void *this,undefined4 *outPropertyContext)

{
  undefined4 classId;
  
  outPropertyContext[1] = (int)this + -4;
  *outPropertyContext = &DAT_00fbd910;
  outPropertyContext[2] = 1;
  classId = (**(code **)(*(int *)this + 0x14))();
  outPropertyContext[3] = classId;
  return;
}

