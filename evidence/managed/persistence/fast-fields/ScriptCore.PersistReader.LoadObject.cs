/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: Overloads MethodDef06000D30/06000D31. In06000D31 IL028C calls fast reader, IL0296 BGE0 continues; only a negative native result returns at0298. Native0 does not trigger this condition. */

using System;
using System.IO;
using System.Reflection;
using Sims3.SimIFace;

private object LoadObject(int i, ObjectLoadMode loadMode)
{
	int num = i >> 8;
	int num2 = i & 0xFF;
	object[] array = mObjectTables[num];
	if (loadMode != ObjectLoadMode.Create)
	{
		object obj = array[num2];
		if (obj != null)
		{
			return obj;
		}
	}
	int[] array2 = mObjectOffsetTables[num];
	if (array2[num2] < 0)
	{
		return array[num2];
	}
	int position = mReader.Position;
	mReader.Seek(array2[num2], SeekOrigin.Begin);
	if (loadMode == ObjectLoadMode.Reference)
	{
		loadMode = ObjectLoadMode.Precreate;
	}
	if (loadMode != ObjectLoadMode.Precreate)
	{
		array2[num2] = -1;
	}
	PersistedTypeCode saveType = (PersistedTypeCode)mReader.ReadByte();
	LoadObject(saveType, ref array[num2], loadMode);
	mReader.Seek(position, SeekOrigin.Begin);
	return array[num2];
}
private void LoadObject(PersistedTypeCode saveType, ref object obj, ObjectLoadMode loadMode)
{
	//IL_08b1: Unknown result type (might be due to invalid IL or missing references)
	//IL_08b7: Unknown result type (might be due to invalid IL or missing references)
	//IL_0230: Unknown result type (might be due to invalid IL or missing references)
	//IL_0236: Unknown result type (might be due to invalid IL or missing references)
	//IL_08ef: Unknown result type (might be due to invalid IL or missing references)
	//IL_0374: Unknown result type (might be due to invalid IL or missing references)
	//IL_0378: Unknown result type (might be due to invalid IL or missing references)
	int num2;
	int num12;
	long num3;
	PersistedClass persistedClass4;
	PersistedTypeCode persistedTypeCode;
	switch (saveType)
	{
	case PersistedTypeCode.Null:
		obj = null;
		break;
	case PersistedTypeCode.Boolean:
		obj = mReader.ReadBoolean();
		break;
	case PersistedTypeCode.Byte:
		obj = mReader.ReadByte();
		break;
	case PersistedTypeCode.Char:
		obj = mReader.ReadChar();
		break;
	case PersistedTypeCode.DateTime:
		obj = new DateTime(mReader.ReadInt64());
		break;
	case PersistedTypeCode.Decimal:
		obj = mReader.ReadDecimal();
		break;
	case PersistedTypeCode.Double:
		obj = mReader.ReadDouble();
		break;
	case PersistedTypeCode.Int16:
		obj = mReader.ReadInt16();
		break;
	case PersistedTypeCode.Int32:
		obj = mReader.ReadInt32();
		break;
	case PersistedTypeCode.Int64:
		obj = mReader.ReadInt64();
		break;
	case PersistedTypeCode.SByte:
		obj = mReader.ReadSByte();
		break;
	case PersistedTypeCode.Single:
		obj = mReader.ReadSingle();
		break;
	case PersistedTypeCode.UInt16:
		obj = mReader.ReadUInt16();
		break;
	case PersistedTypeCode.UInt32:
		obj = mReader.ReadUInt32();
		break;
	case PersistedTypeCode.UInt64:
		obj = mReader.ReadUInt64();
		break;
	case PersistedTypeCode.ObjectRef:
	{
		int num5 = mReader.ReadInt32();
		if (num5 == 0)
		{
			obj = null;
			break;
		}
		int num6 = num5 - 1;
		obj = mObjectTables[num6 >> 8][num6 & 0xFF];
		if (obj == null && loadMode != ObjectLoadMode.Skip)
		{
			obj = LoadObject(num6, ObjectLoadMode.Reference);
		}
		break;
	}
	case PersistedTypeCode.ObjectInst:
	{
		int num8 = mReader.ReadInt32();
		PersistedClass persistedClass2 = mClasses[num8];
		if (persistedClass2.mCustomFormatter != null)
		{
			if (loadMode == ObjectLoadMode.Precreate)
			{
				obj = persistedClass2.mCustomFormatter.Precreate(mReader, (IPersistReader)(object)this, persistedClass2.mType);
			}
			else
			{
				persistedClass2.mCustomFormatter.Read(ref obj, mReader, (IPersistReader)(object)this, persistedClass2.mType);
			}
			break;
		}
		if (obj == null)
		{
			try
			{
				if (persistedClass2.mPersistable)
				{
					if ((persistedClass2.mTypeFlags & 4) != 0)
					{
						obj = Array.CreateInstance(persistedClass2.mType, 1).GetValue(0);
					}
					else if ((object)persistedClass2.mCtor != null)
					{
						obj = persistedClass2.mCtor.Invoke(null);
					}
				}
			}
			catch (Exception)
			{
			}
		}
		if (loadMode == ObjectLoadMode.Precreate)
		{
			break;
		}
		_ = obj;
		if (persistedClass2.mFastFields != null)
		{
			int num9 = PersistImports.Serializer_ReadFastFields(obj, persistedClass2.mFastFields, mReader.Handle);
			if (num9 < 0)
			{
				break;
			}
		}
		PersistedFieldInfo[] mFields = persistedClass2.mFields;
		for (int j = 0; j < mFields.Length; j++)
		{
			PersistedFieldInfo persistedFieldInfo = mFields[j];
			FieldInfo mFieldInfo = persistedFieldInfo.mFieldInfo;
			Info val = null;
			if (obj != null && (object)mFieldInfo == null)
			{
				val = LoadFieldAttribute.FindLoadMethod(persistedClass2.mType, persistedFieldInfo.mFullName);
			}
			if (obj == null || ((object)mFieldInfo == null && val == null))
			{
				object obj2 = null;
				LoadObject(persistedFieldInfo.mCode, ref obj2, ObjectLoadMode.Skip);
				continue;
			}
			Type type2 = (((object)mFieldInfo == null) ? val.FieldType : mFieldInfo.FieldType);
			object obj3 = null;
			if ((object)mFieldInfo != null)
			{
				obj3 = mFieldInfo.GetValue(obj);
			}
			try
			{
				LoadObject(persistedFieldInfo.mCode, ref obj3, ObjectLoadMode.Reference);
				if (obj3 == null)
				{
					if ((object)mFieldInfo != null)
					{
						mFieldInfo.SetValue(obj, null);
					}
					else
					{
						val.MethodInfo.Invoke(obj, mObjectArrayOneNull);
					}
					continue;
				}
				ReflectionTypeFlags typeFlags = (ReflectionTypeFlags)Reflection.Reflection_GetTypeClassification(type2);
				Type unnullifiedType = Persist.GetUnnullifiedType(type2, typeFlags);
				if (Reflection.Reflection_IsTypeAssignableFrom(unnullifiedType, obj3.GetType()) || (unnullifiedType.IsEnum && Persist.CoerceToEnum(unnullifiedType, ref obj3)))
				{
					if ((object)mFieldInfo != null)
					{
						mFieldInfo.SetValue(obj, obj3);
						continue;
					}
					mObjectArrayOneObject[0] = obj3;
					val.MethodInfo.Invoke(obj, mObjectArrayOneObject);
					mObjectArrayOneObject[0] = null;
				}
			}
			catch (Exception)
			{
			}
		}
		if (obj != null && persistedClass2.mGroupMarshaler != null)
		{
			persistedClass2.mGroupMarshaler.Register(obj);
		}
		break;
	}
	case PersistedTypeCode.ArrayInst:
	{
		int num10 = mReader.ReadInt32();
		Type type3 = ReadElementType(out var ptc);
		if (ptc == PersistedTypeCode.ArrayInst || ptc == PersistedTypeCode.ObjectInst)
		{
			ptc = PersistedTypeCode.ObjectRef;
		}
		if ((object)type3 != null)
		{
			Array array3 = null;
			if (obj != null)
			{
				Type type4 = obj.GetType();
				if (type4.IsArray && (object)type4.GetElementType() == type3)
				{
					Array array4 = (Array)obj;
					if (array4.Length == num10)
					{
						array3 = array4;
					}
				}
			}
			if (array3 == null)
			{
				array3 = Array.CreateInstance(type3, num10);
			}
			obj = array3;
			if (loadMode == ObjectLoadMode.Precreate)
			{
				break;
			}
			switch (ptc)
			{
			case PersistedTypeCode.Byte:
			case PersistedTypeCode.Double:
			case PersistedTypeCode.Int16:
			case PersistedTypeCode.Int32:
			case PersistedTypeCode.Int64:
			case PersistedTypeCode.SByte:
			case PersistedTypeCode.Single:
			case PersistedTypeCode.UInt16:
			case PersistedTypeCode.UInt32:
			case PersistedTypeCode.UInt64:
				if (PersistImports.Serializer_ReadPrimitiveArray(array3, mReader.Handle, (byte)ptc))
				{
					return;
				}
				break;
			}
			for (int k = 0; k < num10; k++)
			{
				object obj4 = null;
				LoadObject(ptc, ref obj4, ObjectLoadMode.Reference);
				try
				{
					if (obj4 == null || Reflection.Reflection_IsTypeAssignableFrom(type3, obj4.GetType()))
					{
						array3.SetValue(obj4, k);
					}
				}
				catch (Exception)
				{
				}
			}
		}
		else
		{
			for (int l = 0; l < num10; l++)
			{
				object obj5 = null;
				LoadObject(ptc, ref obj5, ObjectLoadMode.Skip);
			}
		}
		break;
	}
	case PersistedTypeCode.TypeInstZeroBased:
	{
		int num11 = (int)Persist.ReadCompressedUint(mReader);
		PersistedClass persistedClass3 = mClasses[num11];
		obj = persistedClass3.mType;
		break;
	}
	case PersistedTypeCode.TypeInstOneBased:
	{
		int num7 = (int)Persist.ReadCompressedUint(mReader);
		if (num7 == 0)
		{
			obj = null;
			break;
		}
		PersistedClass persistedClass = mClasses[num7 - 1];
		obj = persistedClass.mType;
		break;
	}
	case PersistedTypeCode.ProtectedObjectInst:
		num2 = (int)Persist.ReadCompressedUint(mReader);
		goto IL_05c3;
	case PersistedTypeCode.BrokenProtectedObjectInst:
		num2 = Persist.ReadBrokenCompressedInt(mReader);
		goto IL_05c3;
	case PersistedTypeCode.ExternalObject:
	{
		int num13 = Persist.ReadCompressedInt(mReader);
		PersistedClass persistedClass5 = mClasses[num13];
		if (persistedClass5.mGroupMarshaler == null)
		{
			obj = null;
		}
		else
		{
			obj = persistedClass5.mGroupMarshaler.Read(mReader, (IPersistReader)(object)this);
		}
		break;
	}
	case PersistedTypeCode.EnumInst:
		num12 = Persist.ReadCompressedInt(mReader);
		goto IL_066d;
	case PersistedTypeCode.BrokenEnumInst:
		num12 = Persist.ReadBrokenCompressedInt(mReader);
		goto IL_066d;
	case PersistedTypeCode.MethodInst:
	{
		if (obj != null || loadMode == ObjectLoadMode.Skip)
		{
			break;
		}
		Type type = (Type)ReadReference();
		if ((object)type == null)
		{
			obj = null;
			break;
		}
		string text = (string)ReadReference();
		Type[] types = (Type[])ReadReferenceForceLive();
		Type[] array = (Type[])ReadReferenceForceLive();
		MethodInfo methodInfo = null;
		if ((object)type != null && text != null)
		{
			try
			{
				if (text.StartsWith("<"))
				{
					MethodInfo[] methods = type.GetMethods(BindingFlags.DeclaredOnly | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic);
					MethodInfo[] array2 = methods;
					foreach (MethodInfo methodInfo2 in array2)
					{
						if (methodInfo2.Name.StartsWith(text))
						{
							if ((object)methodInfo != null)
							{
								methodInfo = null;
								break;
							}
							methodInfo = methodInfo2;
						}
					}
				}
				else
				{
					methodInfo = type.GetMethod(text, BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.FlattenHierarchy | BindingFlags.ExactBinding, null, types, null);
				}
			}
			catch (Exception)
			{
				break;
			}
		}
		if ((object)methodInfo == null)
		{
			break;
		}
		if (array == null)
		{
			if (!methodInfo.IsGenericMethod)
			{
				obj = methodInfo;
			}
		}
		else if (methodInfo.IsGenericMethod)
		{
			MethodInfo methodInfo3 = methodInfo.MakeGenericMethod(array);
			if ((object)methodInfo3 != null)
			{
				obj = methodInfo3;
			}
		}
		break;
	}
	case PersistedTypeCode.ResourceKeyInst:
		{
			if (obj == null)
			{
				obj = (object)default(ResourceKey);
			}
			if (loadMode != ObjectLoadMode.Precreate)
			{
				int num = mReader.ReadInt32();
				if (num >= 0 && num < mResourceKeyTable.Length)
				{
					obj = mResourceKeyTable[num];
				}
			}
			break;
		}
		IL_05c3:
		num3 = mReader.Position;
		if (loadMode != ObjectLoadMode.Skip && num2 >= 0)
		{
			LoadObject(PersistedTypeCode.ObjectInst, ref obj, loadMode);
			long num4 = mReader.Position;
			if (num4 == num3 + num2)
			{
				break;
			}
		}
		mReader.Seek((int)(num3 + num2), SeekOrigin.Begin);
		break;
		IL_066d:
		persistedClass4 = mClasses[num12];
		persistedTypeCode = (PersistedTypeCode)mReader.ReadByte();
		if ((object)persistedClass4.mType == null || loadMode == ObjectLoadMode.Skip)
		{
			LoadObject(persistedTypeCode, ref obj, loadMode);
			break;
		}
		switch (persistedTypeCode)
		{
		case PersistedTypeCode.SByte:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadSByte());
			break;
		case PersistedTypeCode.Byte:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadByte());
			break;
		case PersistedTypeCode.Int16:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt16());
			break;
		case PersistedTypeCode.UInt16:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt16());
			break;
		case PersistedTypeCode.Int32:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt32());
			break;
		case PersistedTypeCode.UInt32:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt32());
			break;
		case PersistedTypeCode.Int64:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadInt64());
			break;
		case PersistedTypeCode.UInt64:
			obj = Enum.ToObject(persistedClass4.mType, mReader.ReadUInt64());
			break;
		case PersistedTypeCode.Char:
		case PersistedTypeCode.DateTime:
		case PersistedTypeCode.Decimal:
		case PersistedTypeCode.Double:
		case PersistedTypeCode.Single:
			break;
		}
		break;
	}
}
