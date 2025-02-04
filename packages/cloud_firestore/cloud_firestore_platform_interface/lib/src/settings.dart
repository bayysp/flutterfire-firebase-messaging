// ignore_for_file: require_trailing_commas
// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Specifies custom configurations for your Cloud Firestore instance.
///
/// You must set these before invoking any other methods.
@immutable
class Settings {
  /// Creates an instance for these [Settings].
  const Settings({
    this.persistenceEnabled,
    this.host,
    this.sslEnabled,
    this.cacheSizeBytes,
  });

  /// Constant used to indicate the LRU garbage collection should be disabled.
  ///
  /// Set this value as the cacheSizeBytes on the settings passed to the Firestore instance.
  static const int CACHE_SIZE_UNLIMITED = -1;

  /// Attempts to enable persistent storage, if possible.
  /// This setting has no effect on Web, for Web use [FirebaseFirestore.enablePersistence] instead.
  final bool? persistenceEnabled;

  /// The hostname to connect to.
  final String? host;

  /// Whether to use SSL when connecting.
  final bool? sslEnabled;

  /// An approximate cache size threshold for the on-disk data.
  ///
  /// If the cache grows beyond this size, Firestore will start removing data that hasn't
  /// been recently used. The size is not a guarantee that the cache will stay
  /// below that size, only that if the cache exceeds the given size, cleanup
  /// will be attempted.
  ///
  /// The default value is 40 MB. The threshold must be set to at least 1 MB,
  /// and can be set to [Settings.CACHE_SIZE_UNLIMITED] to disable garbage collection.
  final int? cacheSizeBytes;

  /// Returns the settings as a [Map]
  Map<String, dynamic> get asMap {
    return {
      'persistenceEnabled': persistenceEnabled,
      'host': host,
      'sslEnabled': sslEnabled,
      'cacheSizeBytes': cacheSizeBytes
    };
  }

  Settings copyWith({
    bool? persistenceEnabled,
    String? host,
    bool? sslEnabled,
    int? cacheSizeBytes,
  }) =>
      Settings(
        persistenceEnabled: persistenceEnabled ?? this.persistenceEnabled,
        host: host ?? this.host,
        sslEnabled: sslEnabled ?? this.sslEnabled,
        cacheSizeBytes: cacheSizeBytes ?? this.cacheSizeBytes,
      );

  @override
  bool operator ==(Object other) =>
      other is Settings &&
      other.runtimeType == runtimeType &&
      other.persistenceEnabled == persistenceEnabled &&
      other.host == host &&
      other.sslEnabled == sslEnabled &&
      other.cacheSizeBytes == cacheSizeBytes;

  @override
  int get hashCode => Object.hash(
        runtimeType,
        persistenceEnabled,
        host,
        sslEnabled,
        cacheSizeBytes,
      );

  @override
  String toString() => 'Settings(${asMap.toString()})';
}
