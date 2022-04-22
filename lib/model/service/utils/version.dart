class Version {
  static bool check({required String deviceVersion, required String remoteVersion}) {
    final deviceVersionNumber = int.parse(deviceVersion.split('.').join());
    final remoteVersionNumber = int.parse(remoteVersion.split('.').join());
    return deviceVersionNumber < remoteVersionNumber;
  }
}