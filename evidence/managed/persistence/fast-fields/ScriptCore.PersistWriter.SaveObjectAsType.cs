/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: MethodDef06000D1B. ObjectInst flushes stream before native fast-field writer, ignores its result, then serializes ordinary fields after fast prefix. */

using System;
using System.Reflection;
using Sims3.SimIFace;

private void SaveObjectAsType(object obj, PersistedTypeCode ptc)
{
	//IL_0183: Unknown result type (might be due to invalid IL or missing references)
	//IL_0189: Expected Obj, but got Unknown
	//IL_05d0: Unknown result type (might be due to invalid IL or missing references)
	//IL_05d5: Unknown result type (might be due to invalid IL or missing references)
	//IL_05d8: Unknown result type (might be due to invalid IL or missing references)
	switch (ptc)
	{
	case PersistedTypeCode.Boolean:
		mWriter.Write((bool)obj);
		break;
	case PersistedTypeCode.Byte:
		mWriter.Write((byte)obj);
		break;
	case PersistedTypeCode.Char:
		mWriter.Write((char)obj);
		break;
	case PersistedTypeCode.DateTime:
		mWriter.Write(((DateTime)obj).Ticks);
		break;
	case PersistedTypeCode.Decimal:
		mWriter.Write((decimal)obj);
		break;
	case PersistedTypeCode.Double:
		mWriter.Write((double)obj);
		break;
	case PersistedTypeCode.Int16:
		mWriter.Write((short)obj);
		break;
	case PersistedTypeCode.Int32:
		mWriter.Write((int)obj);
		break;
	case PersistedTypeCode.Int64:
		mWriter.Write((long)obj);
		break;
	case PersistedTypeCode.SByte:
		mWriter.Write((sbyte)obj);
		break;
	case PersistedTypeCode.Single:
		mWriter.Write((float)obj);
		break;
	case PersistedTypeCode.UInt16:
		mWriter.Write((ushort)obj);
		break;
	case PersistedTypeCode.UInt32:
		mWriter.Write((uint)obj);
		break;
	case PersistedTypeCode.UInt64:
		mWriter.Write((ulong)obj);
		break;
	case PersistedTypeCode.ProtectedObjectInst:
	{
		FastStreamWriter val = mWriter;
		FastStreamWriter val2 = (mWriter = new FastStreamWriter());
		int num3 = -1;
		try
		{
			SaveObjectAsType(obj, PersistedTypeCode.ObjectInst);
			num3 = val2.Position;
		}
		catch (Exception)
		{
		}
		mWriter = val;
		Persist.WriteCompressedUint(mWriter, (uint)num3);
		if (num3 > 0)
		{
			mWriter.CopyStream(val2);
		}
		val2.Dispose();
		break;
	}
	case PersistedTypeCode.ObjectInst:
	{
		Type type = obj.GetType();
		PersistedClass persistedClass = mClassDB.GetPersistedClass(type, requireClassReference: true);
		mWriter.Write(persistedClass.mIndex);
		if (persistedClass.mCustomFormatter != null)
		{
			persistedClass.mCustomFormatter.Write(obj, mWriter, (IPersistWriter)(object)this);
			break;
		}
		PersistFastField[] mFastFields = persistedClass.mFastFields;
		int num2 = 0;
		if (mFastFields != null)
		{
			mWriter.Flush();
			PersistImports.Serializer_WriteFastFields(obj, mFastFields, mWriter.Handle);
			num2 = mFastFields.Length;
		}
		PersistedFieldInfo[] mFields = persistedClass.mFields;
		for (int j = num2; j < mFields.Length; j++)
		{
			PersistedFieldInfo persistedFieldInfo = mFields[j];
			PersistedTypeCode mCode = persistedFieldInfo.mCode;
			object value = persistedFieldInfo.mFieldInfo.GetValue(obj);
			SaveObjectAsType(value, mCode);
		}
		break;
	}
	case PersistedTypeCode.ObjectRef:
	{
		int objectIndex = GetObjectIndex(obj);
		mWriter.Write(objectIndex);
		break;
	}
	case PersistedTypeCode.ArrayInst:
	{
		Array array2 = (Array)obj;
		Type elementType = array2.GetType().GetElementType();
		PersistedTypeCode persistedTypeCode2 = Persist.GetPersistedTypeCode(elementType, mClassDB);
		if (persistedTypeCode2 == PersistedTypeCode.ObjectInst || persistedTypeCode2 == PersistedTypeCode.ArrayInst)
		{
			persistedTypeCode2 = PersistedTypeCode.ObjectRef;
		}
		mWriter.Write(array2.Length);
		WriteElementType(array2.GetType().GetElementType());
		bool flag = false;
		switch (persistedTypeCode2)
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
			flag = true;
			break;
		}
		if (flag)
		{
			mWriter.Flush();
			PersistImports.Serializer_WritePrimitiveArray(array2, mWriter.Handle, (byte)persistedTypeCode2);
			break;
		}
		{
			foreach (object item in array2)
			{
				SaveObjectAsType(item, persistedTypeCode2);
			}
			break;
		}
	}
	case PersistedTypeCode.TypeInstOneBased:
		Persist.WriteCompressedUint(v: (obj != null) ? ((uint)(mClassDB.GetPersistedClassRef((Type)obj) + 1)) : 0u, writer: mWriter);
		break;
	case PersistedTypeCode.EnumInst:
	{
		Type type2 = obj.GetType();
		PersistedClass persistedClass2 = mClassDB.GetPersistedClass(type2, requireClassReference: true);
		Type underlyingType = Enum.GetUnderlyingType(type2);
		PersistedTypeCode persistedTypeCode = Persist.GetPersistedTypeCode(underlyingType, mClassDB);
		Persist.WriteCompressedInt(mWriter, persistedClass2.mIndex);
		mWriter.Write((byte)persistedTypeCode);
		switch (persistedTypeCode)
		{
		case PersistedTypeCode.SByte:
			mWriter.Write((sbyte)obj);
			break;
		case PersistedTypeCode.Byte:
			mWriter.Write((byte)obj);
			break;
		case PersistedTypeCode.Int16:
			mWriter.Write((short)obj);
			break;
		case PersistedTypeCode.UInt16:
			mWriter.Write((ushort)obj);
			break;
		case PersistedTypeCode.Int32:
			mWriter.Write((int)obj);
			break;
		case PersistedTypeCode.UInt32:
			mWriter.Write((uint)obj);
			break;
		case PersistedTypeCode.Int64:
			mWriter.Write((long)obj);
			break;
		case PersistedTypeCode.UInt64:
			mWriter.Write((ulong)obj);
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
	case PersistedTypeCode.MethodInst:
	{
		if (obj == null)
		{
			WriteReference(null);
			break;
		}
		MethodInfo methodInfo = (MethodInfo)obj;
		Type declaringType = methodInfo.DeclaringType;
		WriteReference(declaringType);
		string text = methodInfo.Name;
		if (text.StartsWith("<"))
		{
			int num = text.IndexOf('>');
			text = ((num >= 0) ? text.Substring(0, num + 1) : null);
		}
		WriteReference(text);
		ParameterInfo[] parameters = methodInfo.GetParameters();
		Type[] array = new Type[parameters.Length];
		for (int i = 0; i < parameters.Length; i++)
		{
			array[i] = parameters[i].ParameterType;
		}
		WriteReference(array);
		if (methodInfo.IsGenericMethod)
		{
			WriteReference(methodInfo.GetGenericArguments());
		}
		else
		{
			WriteReference(null);
		}
		break;
	}
	case PersistedTypeCode.ResourceKeyInst:
	{
		ResourceKey resKey = (ResourceKey)obj;
		int resourceKeyIndex = GetResourceKeyIndex(resKey);
		mWriter.Write(resourceKeyIndex);
		break;
	}
	case PersistedTypeCode.Null:
	case PersistedTypeCode.TypeInstZeroBased:
	case PersistedTypeCode.BrokenProtectedObjectInst:
	case PersistedTypeCode.ExternalObject:
	case PersistedTypeCode.BrokenEnumInst:
		break;
	}
}
