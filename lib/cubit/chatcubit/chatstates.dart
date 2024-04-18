abstract class ChatStates {}

class InitialChatStates extends ChatStates {}

class MessageLoadingState extends ChatStates {}

class MessageSuccessState extends ChatStates {}

class MessageLoadingDataState extends ChatStates {}

class MessageClearingState extends ChatStates {}
