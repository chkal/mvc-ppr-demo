package de.chkal.mvc.ppr.core;

import javax.enterprise.context.ApplicationScoped;
import java.util.ArrayList;
import java.util.List;

@ApplicationScoped
public class ChatService {

  private final List<ChatMessage> messages = new ArrayList<>();

  public void sendMessage(String user, String message) {
    messages.add(0, new ChatMessage(user.trim(), message.trim()));
  }

  public List<ChatMessage> getMessages() {
    return messages;
  }

}
