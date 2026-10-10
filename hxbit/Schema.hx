/*
 * Copyright (C)2015-2016 Nicolas Cannasse
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
package hxbit;

/**
	The type of a serialized field, as stored in a `Schema`.
**/
typedef FieldType = Macros.PropTypeDesc<FieldType>;

#if !macro
/**
	The description of the serialized fields of a class, an enum or a structure: stored with the data by `Serializer.endSave`, and compared with the current schema by `Serializer.beginLoad` to convert data saved with older versions.
**/
class Schema implements Serializable {

	/**
		The CRC32 of the serialized schema, to compare schemas.
	**/
	public var checkSum(get, never) : Int;
	/**
		Tells if the class has no serializable sub class (its objects are serialized without class identifier).
	**/
	@:s public var isFinal : Bool;
	/**
		The names of the serialized fields, in serialization order.
	**/
	@:s @:notMutable public var fieldsNames : Array<String>;
	/**
		The types of the serialized fields.
	**/
	@:s @:notMutable public var fieldsTypes : Array<FieldType>;

	/**
		Creates an empty schema.
	**/
	public function new() {
		fieldsNames = [];
		fieldsTypes = [];
	}

	function get_checkSum() {
		var s = new Serializer();
		s.begin();
		var old = __uid;
		__uid = 0;
		s.addKnownRef(this);
		__uid = old;
		var bytes = s.end();
		return haxe.crypto.Crc32.make(bytes);
	}

}
#end
