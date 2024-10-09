// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentConversationInfoHash() =>
    r'fbd19013f35b9052c629df5704239d9761485a3a';

/// See also [currentConversationInfo].
@ProviderFor(currentConversationInfo)
final currentConversationInfoProvider =
    AutoDisposeFutureProvider<List<ConversationInfo>>.internal(
  currentConversationInfo,
  name: r'currentConversationInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentConversationInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentConversationInfoRef
    = AutoDisposeFutureProviderRef<List<ConversationInfo>>;
String _$messageInfoByConversationIdHash() =>
    r'f6393c98411acfdbe17bcf57e663eddb45461345';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [messageInfoByConversationId].
@ProviderFor(messageInfoByConversationId)
const messageInfoByConversationIdProvider = MessageInfoByConversationIdFamily();

/// See also [messageInfoByConversationId].
class MessageInfoByConversationIdFamily
    extends Family<AsyncValue<List<MessageInfo>>> {
  /// See also [messageInfoByConversationId].
  const MessageInfoByConversationIdFamily();

  /// See also [messageInfoByConversationId].
  MessageInfoByConversationIdProvider call(
    String conversationId,
  ) {
    return MessageInfoByConversationIdProvider(
      conversationId,
    );
  }

  @override
  MessageInfoByConversationIdProvider getProviderOverride(
    covariant MessageInfoByConversationIdProvider provider,
  ) {
    return call(
      provider.conversationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'messageInfoByConversationIdProvider';
}

/// See also [messageInfoByConversationId].
class MessageInfoByConversationIdProvider
    extends AutoDisposeFutureProvider<List<MessageInfo>> {
  /// See also [messageInfoByConversationId].
  MessageInfoByConversationIdProvider(
    String conversationId,
  ) : this._internal(
          (ref) => messageInfoByConversationId(
            ref as MessageInfoByConversationIdRef,
            conversationId,
          ),
          from: messageInfoByConversationIdProvider,
          name: r'messageInfoByConversationIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageInfoByConversationIdHash,
          dependencies: MessageInfoByConversationIdFamily._dependencies,
          allTransitiveDependencies:
              MessageInfoByConversationIdFamily._allTransitiveDependencies,
          conversationId: conversationId,
        );

  MessageInfoByConversationIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.conversationId,
  }) : super.internal();

  final String conversationId;

  @override
  Override overrideWith(
    FutureOr<List<MessageInfo>> Function(
            MessageInfoByConversationIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MessageInfoByConversationIdProvider._internal(
        (ref) => create(ref as MessageInfoByConversationIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        conversationId: conversationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MessageInfo>> createElement() {
    return _MessageInfoByConversationIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageInfoByConversationIdProvider &&
        other.conversationId == conversationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, conversationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MessageInfoByConversationIdRef
    on AutoDisposeFutureProviderRef<List<MessageInfo>> {
  /// The parameter `conversationId` of this provider.
  String get conversationId;
}

class _MessageInfoByConversationIdProviderElement
    extends AutoDisposeFutureProviderElement<List<MessageInfo>>
    with MessageInfoByConversationIdRef {
  _MessageInfoByConversationIdProviderElement(super.provider);

  @override
  String get conversationId =>
      (origin as MessageInfoByConversationIdProvider).conversationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
