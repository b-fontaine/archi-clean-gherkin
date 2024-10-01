// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get restaurant => throw _privateConstructorUsedError;

  /// Create a copy of RecipeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeEntityCopyWith<RecipeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEntityCopyWith<$Res> {
  factory $RecipeEntityCopyWith(
          RecipeEntity value, $Res Function(RecipeEntity) then) =
      _$RecipeEntityCopyWithImpl<$Res, RecipeEntity>;
  @useResult
  $Res call({int id, String title, String imageUrl, String restaurant});
}

/// @nodoc
class _$RecipeEntityCopyWithImpl<$Res, $Val extends RecipeEntity>
    implements $RecipeEntityCopyWith<$Res> {
  _$RecipeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeEntityImplCopyWith<$Res>
    implements $RecipeEntityCopyWith<$Res> {
  factory _$$RecipeEntityImplCopyWith(
          _$RecipeEntityImpl value, $Res Function(_$RecipeEntityImpl) then) =
      __$$RecipeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String imageUrl, String restaurant});
}

/// @nodoc
class __$$RecipeEntityImplCopyWithImpl<$Res>
    extends _$RecipeEntityCopyWithImpl<$Res, _$RecipeEntityImpl>
    implements _$$RecipeEntityImplCopyWith<$Res> {
  __$$RecipeEntityImplCopyWithImpl(
      _$RecipeEntityImpl _value, $Res Function(_$RecipeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? restaurant = null,
  }) {
    return _then(_$RecipeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeEntityImpl implements _RecipeEntity {
  _$RecipeEntityImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.restaurant});

  @override
  final int id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String restaurant;

  @override
  String toString() {
    return 'RecipeEntity(id: $id, title: $title, imageUrl: $imageUrl, restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl, restaurant);

  /// Create a copy of RecipeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeEntityImplCopyWith<_$RecipeEntityImpl> get copyWith =>
      __$$RecipeEntityImplCopyWithImpl<_$RecipeEntityImpl>(this, _$identity);
}

abstract class _RecipeEntity implements RecipeEntity {
  factory _RecipeEntity(
      {required final int id,
      required final String title,
      required final String imageUrl,
      required final String restaurant}) = _$RecipeEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get restaurant;

  /// Create a copy of RecipeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeEntityImplCopyWith<_$RecipeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
