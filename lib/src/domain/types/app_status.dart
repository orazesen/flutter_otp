enum AppStatus {
  started('started'),
  paused('paused'),
  stopped('stopped'),
  failed('failed');

  const AppStatus(this.name);
  final String name;
}
