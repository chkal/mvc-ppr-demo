package de.chkal.mvc.ppr.core;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ChatMessage {

  private final String name;
  private final String message;
  private final LocalDateTime time;

  public ChatMessage(String name, String message) {
    this.name = name;
    this.message = message;
    this.time = LocalDateTime.now();
  }

  public String getName() {
    return name;
  }

  public String getMessage() {
    return message;
  }

  public LocalDateTime getTime() {
    return time;
  }

  public String getTimeAsString() {
    return time.format(DateTimeFormatter.ofPattern("HH:mm:ss"));
  }

}
