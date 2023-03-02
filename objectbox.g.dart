// // GENERATED CODE - DO NOT MODIFY BY HAND
// // This code was generated by ObjectBox. To update it run the generator again:
// // With a Flutter package, run `flutter pub run build_runner build`.
// // With a Dart package, run `dart run build_runner build`.
// // See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// // ignore_for_file: camel_case_types
// // coverage:ignore-file

// import 'dart:typed_data';

// import 'package:flat_buffers/flat_buffers.dart' as fb;
// import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
// import 'package:objectbox/objectbox.dart';
// import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

// import 'model/locations.dart';
// import 'model/property.dart';
// import 'model/user.dart';

// export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

// final _entities = <ModelEntity>[
//   ModelEntity(
//       id: const IdUid(1, 7396607970243363047),
//       name: 'User',
//       lastPropertyId: const IdUid(14, 77140488986964498),
//       flags: 0,
//       properties: <ModelProperty>[
//         ModelProperty(
//             id: const IdUid(1, 8349550053851588128),
//             name: 'userId',
//             type: 9,
//             flags: 2080,
//             indexId: const IdUid(1, 8673086366255484993)),
//         ModelProperty(
//             id: const IdUid(4, 408631088515172712),
//             name: 'username',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(5, 7600567080006112356),
//             name: 'password',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(7, 5734728154781112461),
//             name: 'uId',
//             type: 6,
//             flags: 129),
//         ModelProperty(
//             id: const IdUid(12, 3965322980232776393),
//             name: 'fname',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(13, 8504754888133978857),
//             name: 'lname',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(14, 77140488986964498),
//             name: 'gender',
//             type: 9,
//             flags: 0)
//       ],
//       relations: <ModelRelation>[],
//       backlinks: <ModelBacklink>[]),
//   ModelEntity(
//       id: const IdUid(2, 829568312213596559),
//       name: 'Location',
//       lastPropertyId: const IdUid(4, 8475672463185177281),
//       flags: 0,
//       properties: <ModelProperty>[
//         ModelProperty(
//             id: const IdUid(1, 2101055510028002889),
//             name: 'locationId',
//             type: 6,
//             flags: 129),
//         ModelProperty(
//             id: const IdUid(2, 1229477863686726978),
//             name: 'id',
//             type: 9,
//             flags: 2080,
//             indexId: const IdUid(2, 7321120085811338052)),
//         ModelProperty(
//             id: const IdUid(3, 62139938474550522),
//             name: 'name',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(4, 8475672463185177281),
//             name: 'properties',
//             type: 30,
//             flags: 0)
//       ],
//       relations: <ModelRelation>[],
//       backlinks: <ModelBacklink>[]),
//   ModelEntity(
//       id: const IdUid(4, 339295739807353424),
//       name: 'PropertyModel',
//       lastPropertyId: const IdUid(9, 6442345997881238988),
//       flags: 0,
//       properties: <ModelProperty>[
//         ModelProperty(
//             id: const IdUid(1, 7198350728923021022),
//             name: 'propertyId',
//             type: 6,
//             flags: 129),
//         ModelProperty(
//             id: const IdUid(2, 487089992206435299),
//             name: 'id',
//             type: 9,
//             flags: 2080,
//             indexId: const IdUid(4, 1142031335200103306)),
//         ModelProperty(
//             id: const IdUid(3, 280176636808020880),
//             name: 'user',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(4, 5852707656877893647),
//             name: 'address',
//             type: 9,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(5, 277753230515972732),
//             name: 'squareFeet',
//             type: 6,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(6, 1082265738775176090),
//             name: 'bedrooms',
//             type: 6,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(7, 4860856926485204167),
//             name: 'bathrooms',
//             type: 6,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(8, 7046694571703602522),
//             name: 'price',
//             type: 6,
//             flags: 0),
//         ModelProperty(
//             id: const IdUid(9, 6442345997881238988),
//             name: 'locationId',
//             type: 9,
//             flags: 0)
//       ],
//       relations: <ModelRelation>[],
//       backlinks: <ModelBacklink>[])
// ];

// /// Open an ObjectBox store with the model declared in this file.
// Future<Store> openStore(
//         {String? directory,
//         int? maxDBSizeInKB,
//         int? fileMode,
//         int? maxReaders,
//         bool queriesCaseSensitiveDefault = true,
//         String? macosApplicationGroup}) async =>
//     Store(getObjectBoxModel(),
//         directory: directory ?? (await defaultStoreDirectory()).path,
//         maxDBSizeInKB: maxDBSizeInKB,
//         fileMode: fileMode,
//         maxReaders: maxReaders,
//         queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
//         macosApplicationGroup: macosApplicationGroup);

// /// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
// ModelDefinition getObjectBoxModel() {
//   final model = ModelInfo(
//       entities: _entities,
//       lastEntityId: const IdUid(4, 339295739807353424),
//       lastIndexId: const IdUid(4, 1142031335200103306),
//       lastRelationId: const IdUid(0, 0),
//       lastSequenceId: const IdUid(0, 0),
//       retiredEntityUids: const [724668898543702299],
//       retiredIndexUids: const [],
//       retiredPropertyUids: const [
//         7689552529372126866,
//         7400619578710374699,
//         4546666849303097289,
//         8116610497151813234,
//         1297007926435503503,
//         5601494781913468688,
//         5000436402527303967,
//         4102107497840419522,
//         2714100886335354643,
//         2951941711371110839,
//         6598656263316721628,
//         6785399463391390831,
//         2053871203816627059,
//         400812904493586819,
//         8435321452302267528,
//         8903604710971203745
//       ],
//       retiredRelationUids: const [],
//       modelVersion: 5,
//       modelVersionParserMinimum: 5,
//       version: 1);

//   final bindings = <Type, EntityDefinition>{
//     User: EntityDefinition<User>(
//         model: _entities[0],
//         toOneRelations: (User object) => [],
//         toManyRelations: (User object) => {},
//         getId: (User object) => object.uId,
//         setId: (User object, int id) {
//           object.uId = id;
//         },
//         objectToFB: (User object, fb.Builder fbb) {
//           final userIdOffset =
//               object.userId == null ? null : fbb.writeString(object.userId!);
//           final usernameOffset = object.username == null
//               ? null
//               : fbb.writeString(object.username!);
//           final passwordOffset = object.password == null
//               ? null
//               : fbb.writeString(object.password!);
//           final fnameOffset =
//               object.fname == null ? null : fbb.writeString(object.fname!);
//           final lnameOffset =
//               object.lname == null ? null : fbb.writeString(object.lname!);
//           final genderOffset =
//               object.gender == null ? null : fbb.writeString(object.gender!);
//           fbb.startTable(15);
//           fbb.addOffset(0, userIdOffset);
//           fbb.addOffset(3, usernameOffset);
//           fbb.addOffset(4, passwordOffset);
//           fbb.addInt64(6, object.uId);
//           fbb.addOffset(11, fnameOffset);
//           fbb.addOffset(12, lnameOffset);
//           fbb.addOffset(13, genderOffset);
//           fbb.finish(fbb.endTable());
//           return object.uId;
//         },
//         objectFromFB: (Store store, ByteData fbData) {
//           final buffer = fb.BufferContext(fbData);
//           final rootOffset = buffer.derefObject(0);

//           final object = User(
//               userId: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 4),
//               fname: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 26),
//               lname: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 28),
//               username: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 10),
//               password: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 12),
//               uId: const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0))
//             ..gender = const fb.StringReader(asciiOptimization: true)
//                 .vTableGetNullable(buffer, rootOffset, 30);

//           return object;
//         }),
//     Location: EntityDefinition<Location>(
//         model: _entities[1],
//         toOneRelations: (Location object) => [],
//         toManyRelations: (Location object) => {},
//         getId: (Location object) => object.locationId,
//         setId: (Location object, int id) {
//           object.locationId = id;
//         },
//         objectToFB: (Location object, fb.Builder fbb) {
//           final idOffset =
//               object.id == null ? null : fbb.writeString(object.id!);
//           final nameOffset =
//               object.name == null ? null : fbb.writeString(object.name!);
//           final propertiesOffset = object.properties == null
//               ? null
//               : fbb.writeList(object.properties!
//                   .map(fbb.writeString)
//                   .toList(growable: false));
//           fbb.startTable(5);
//           fbb.addInt64(0, object.locationId ?? 0);
//           fbb.addOffset(1, idOffset);
//           fbb.addOffset(2, nameOffset);
//           fbb.addOffset(3, propertiesOffset);
//           fbb.finish(fbb.endTable());
//           return object.locationId ?? 0;
//         },
//         objectFromFB: (Store store, ByteData fbData) {
//           final buffer = fb.BufferContext(fbData);
//           final rootOffset = buffer.derefObject(0);

//           final object = Location(
//               id: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 6),
//               name: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 8),
//               properties: const fb.ListReader<String>(
//                       fb.StringReader(asciiOptimization: true),
//                       lazy: false)
//                   .vTableGetNullable(buffer, rootOffset, 10),
//               locationId: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 4));

//           return object;
//         }),
//     PropertyModel: EntityDefinition<PropertyModel>(
//         model: _entities[2],
//         toOneRelations: (PropertyModel object) => [],
//         toManyRelations: (PropertyModel object) => {},
//         getId: (PropertyModel object) => object.propertyId,
//         setId: (PropertyModel object, int id) {
//           object.propertyId = id;
//         },
//         objectToFB: (PropertyModel object, fb.Builder fbb) {
//           final idOffset =
//               object.id == null ? null : fbb.writeString(object.id!);
//           final userOffset =
//               object.user == null ? null : fbb.writeString(object.user!);
//           final addressOffset =
//               object.address == null ? null : fbb.writeString(object.address!);
//           final locationIdOffset = object.locationId == null
//               ? null
//               : fbb.writeString(object.locationId!);
//           fbb.startTable(10);
//           fbb.addInt64(0, object.propertyId ?? 0);
//           fbb.addOffset(1, idOffset);
//           fbb.addOffset(2, userOffset);
//           fbb.addOffset(3, addressOffset);
//           fbb.addInt64(4, object.squareFeet);
//           fbb.addInt64(5, object.bedrooms);
//           fbb.addInt64(6, object.bathrooms);
//           fbb.addInt64(7, object.price);
//           fbb.addOffset(8, locationIdOffset);
//           fbb.finish(fbb.endTable());
//           return object.propertyId ?? 0;
//         },
//         objectFromFB: (Store store, ByteData fbData) {
//           final buffer = fb.BufferContext(fbData);
//           final rootOffset = buffer.derefObject(0);

//           final object = PropertyModel(
//               user: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 8),
//               address: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 10),
//               squareFeet: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 12),
//               bedrooms: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 14),
//               bathrooms: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 16),
//               price: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 18),
//               locationId: const fb.StringReader(asciiOptimization: true)
//                   .vTableGetNullable(buffer, rootOffset, 20),
//               propertyId: const fb.Int64Reader()
//                   .vTableGetNullable(buffer, rootOffset, 4),
//               id: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 6));

//           return object;
//         })
//   };

//   return ModelDefinition(model, bindings);
// }

// /// [User] entity fields to define ObjectBox queries.
// class User_ {
//   /// see [User.userId]
//   static final userId = QueryStringProperty<User>(_entities[0].properties[0]);

//   /// see [User.username]
//   static final username = QueryStringProperty<User>(_entities[0].properties[1]);

//   /// see [User.password]
//   static final password = QueryStringProperty<User>(_entities[0].properties[2]);

//   /// see [User.uId]
//   static final uId = QueryIntegerProperty<User>(_entities[0].properties[3]);

//   /// see [User.fname]
//   static final fname = QueryStringProperty<User>(_entities[0].properties[4]);

//   /// see [User.lname]
//   static final lname = QueryStringProperty<User>(_entities[0].properties[5]);

//   /// see [User.gender]
//   static final gender = QueryStringProperty<User>(_entities[0].properties[6]);
// }

// /// [Location] entity fields to define ObjectBox queries.
// class Location_ {
//   /// see [Location.locationId]
//   static final locationId =
//       QueryIntegerProperty<Location>(_entities[1].properties[0]);

//   /// see [Location.id]
//   static final id = QueryStringProperty<Location>(_entities[1].properties[1]);

//   /// see [Location.name]
//   static final name = QueryStringProperty<Location>(_entities[1].properties[2]);

//   /// see [Location.properties]
//   static final properties =
//       QueryStringVectorProperty<Location>(_entities[1].properties[3]);
// }

// /// [PropertyModel] entity fields to define ObjectBox queries.
// class PropertyModel_ {
//   /// see [PropertyModel.propertyId]
//   static final propertyId =
//       QueryIntegerProperty<PropertyModel>(_entities[2].properties[0]);

//   /// see [PropertyModel.id]
//   static final id =
//       QueryStringProperty<PropertyModel>(_entities[2].properties[1]);

//   /// see [PropertyModel.user]
//   static final user =
//       QueryStringProperty<PropertyModel>(_entities[2].properties[2]);

//   /// see [PropertyModel.address]
//   static final address =
//       QueryStringProperty<PropertyModel>(_entities[2].properties[3]);

//   /// see [PropertyModel.squareFeet]
//   static final squareFeet =
//       QueryIntegerProperty<PropertyModel>(_entities[2].properties[4]);

//   /// see [PropertyModel.bedrooms]
//   static final bedrooms =
//       QueryIntegerProperty<PropertyModel>(_entities[2].properties[5]);

//   /// see [PropertyModel.bathrooms]
//   static final bathrooms =
//       QueryIntegerProperty<PropertyModel>(_entities[2].properties[6]);

//   /// see [PropertyModel.price]
//   static final price =
//       QueryIntegerProperty<PropertyModel>(_entities[2].properties[7]);

//   /// see [PropertyModel.locationId]
//   static final locationId =
//       QueryStringProperty<PropertyModel>(_entities[2].properties[8]);
// }