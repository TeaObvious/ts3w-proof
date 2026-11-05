/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; Scrollbar primaryFBFBC8 slot24. Physical thiscall complete window
   plus one context stack word, RET4; all normal exits AL1 only. Drawable+204 nonnull submits exact
   components0,4,3,1,6,2,5 via primary virtualA4, reloading vtable each time. Null drawable instead
   invokes base Window514640. This call order does not prove every polymorphic drawable paints every
   component. Concrete ScrollbarDrawable537880 intentionally emits nothing for0/2/5. */

bool __thiscall UiScrollbar_DrawComponents(void *this,void *drawContext)

{
  if (*(int *)((int)this + 0x204) != 0) {
    (**(code **)(*(int *)this + 0xa4))(drawContext,0);
    (**(code **)(*(int *)this + 0xa4))(drawContext,4);
    (**(code **)(*(int *)this + 0xa4))(drawContext,3);
    (**(code **)(*(int *)this + 0xa4))(drawContext,1);
    (**(code **)(*(int *)this + 0xa4))(drawContext,6);
    (**(code **)(*(int *)this + 0xa4))(drawContext,2);
    (**(code **)(*(int *)this + 0xa4))(drawContext,5);
    return true;
  }
  FUN_00514640(this,drawContext);
  return true;
}

