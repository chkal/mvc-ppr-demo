package de.chkal.mvc.ppr.web;

import de.chkal.mvc.ppr.core.ChatService;

import javax.inject.Inject;
import javax.mvc.Models;
import javax.mvc.annotation.Controller;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

@Path("/chat")
@Controller
public class ChatController {

  @Inject
  private Models models;

  @Inject
  private ChatService chatService;

  @GET
  public String load() {
    models.put("messages", chatService.getMessages());
    return "chat.jsp";
  }

  @POST
  @Path("/post")
  public String post(@FormParam("name") String name, @FormParam("message") String message) {
    chatService.sendMessage(name, message);
    return "redirect:/chat";
  }

}
