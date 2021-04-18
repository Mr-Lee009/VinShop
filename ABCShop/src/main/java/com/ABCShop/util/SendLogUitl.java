package com.ABCShop.util;

import java.io.IOException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import javax.ws.rs.core.UriBuilder;

public class SendLogUitl {

	private static final String CHAT_ID = "-556156719";
	private static final String TOKEN = "1505118780:AAH6m_ocT1QAK_JwceH2E-4ZyocCLv4icJs";

	//https://api.telegram.org/bot1505118780:AAH6m_ocT1QAK_JwceH2E-4ZyocCLv4icJs/sendMessage?
	//chat_id=-556156719&text=Anh%20Em%20Co%20Khoe%20Khong
	public static void sendLogTelegram(String message) {
		HttpClient client = HttpClient.newBuilder()
                .connectTimeout(Duration.ofSeconds(5))
                .version(HttpClient.Version.HTTP_2)
                .build();
		UriBuilder builder = UriBuilder
                .fromUri("https://api.telegram.org")
                .path("/{token}/sendMessage")
                .queryParam("chat_id", CHAT_ID)
                .queryParam("text", message);
	
		HttpRequest request = HttpRequest.newBuilder()
	            .GET()
	            .uri(builder.build("bot" + TOKEN))
	            .timeout(Duration.ofSeconds(5))
	            .build();
	    HttpResponse<String> response;
		try {
			response = client.send(request, HttpResponse.BodyHandlers.ofString());
			System.out.println(response.statusCode());
		    System.out.println(response.body());
		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
	}
	
	
}
