enum MessageStatus {
  created('created'),
  delivered('delivered'),
  sent('sent'),
  failed('failed');

  const MessageStatus(this.name);
  final String name;
}
