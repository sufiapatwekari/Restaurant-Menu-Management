package com.rt.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class AIService {
	
	private static final String MODEL = "gemini-3.5-flash-lite";

    public String askGemini(String question, String menuContext, String restaurantName) {

        int maxAttempts = 3;

        for (int attempt = 1; attempt <= maxAttempts; attempt++) {

            HttpURLConnection connection = null;

            try {

                String apiKey = System.getenv("GEMINI_API_KEY");

                if (apiKey == null || apiKey.trim().isEmpty()) {
                    return "Gemini API key is not configured.";
                }

                String prompt =
                        "You are the AI assistant for a restaurant website.\n\n" +
                        "Restaurant: " + restaurantName + "\n\n" +

                        "IMPORTANT RULES:\n" +
                        "1. Answer questions about this restaurant and its menu.\n" +
                        "2. Use only the menu information provided below.\n" +
                        "3. Do not invent menu items, prices or availability.\n" +
                        "4. If the requested information is not in the menu, say that it is not available in the current menu.\n" +
                        "5. Keep answers short, friendly and useful.\n\n" +

                        "CURRENT RESTAURANT MENU:\n" +
                        menuContext + "\n\n" +

                        "CUSTOMER QUESTION:\n" +
                        question;


                JSONObject requestBody = new JSONObject();

                JSONArray contents = new JSONArray();

                JSONObject content = new JSONObject();

                JSONArray parts = new JSONArray();

                JSONObject part = new JSONObject();

                part.put("text", prompt);

                parts.put(part);

                content.put("parts", parts);

                contents.put(content);

                requestBody.put("contents", contents);


                URL url = new URL(
                        "https://generativelanguage.googleapis.com/v1beta/models/"
                        + MODEL
                        + ":generateContent"
                );


                connection =
                        (HttpURLConnection) url.openConnection();

                connection.setRequestMethod("POST");

                connection.setRequestProperty(
                        "Content-Type",
                        "application/json"
                );

                connection.setRequestProperty(
                        "x-goog-api-key",
                        apiKey
                );

                connection.setConnectTimeout(15000);

                connection.setReadTimeout(60000);

                connection.setDoOutput(true);


                String jsonRequest =
                        requestBody.toString();


                OutputStream outputStream =
                        connection.getOutputStream();

                outputStream.write(
                        jsonRequest.getBytes("UTF-8")
                );

                outputStream.flush();

                outputStream.close();


                int responseCode =
                        connection.getResponseCode();


                BufferedReader reader;

                if (responseCode >= 200 &&
                    responseCode < 300) {

                    reader = new BufferedReader(
                            new InputStreamReader(
                                    connection.getInputStream(),
                                    "UTF-8"
                            )
                    );

                } else {

                    reader = new BufferedReader(
                            new InputStreamReader(
                                    connection.getErrorStream(),
                                    "UTF-8"
                            )
                    );
                }


                StringBuilder response =
                        new StringBuilder();

                String line;

                while ((line = reader.readLine()) != null) {

                    response.append(line);
                }

                reader.close();


                /*
                 * SUCCESS
                 */

                if (responseCode >= 200 &&
                    responseCode < 300) {

                    JSONObject jsonResponse =
                            new JSONObject(response.toString());

                    JSONArray candidates =
                            jsonResponse.getJSONArray("candidates");

                    JSONObject firstCandidate =
                            candidates.getJSONObject(0);

                    JSONObject responseContent =
                            firstCandidate.getJSONObject("content");

                    JSONArray responseParts =
                            responseContent.getJSONArray("parts");

                    JSONObject responsePart =
                            responseParts.getJSONObject(0);

                    return responsePart.getString("text");
                }


                /*
                 * GEMINI SERVER BUSY
                 */

                if (responseCode == 503) {

                    System.out.println(
                            "Gemini server busy. Attempt "
                            + attempt
                            + " of "
                            + maxAttempts
                    );

                    System.out.println(response);


                    if (attempt < maxAttempts) {

                        try {

                            /*
                             * Exponential backoff:
                             *
                             * Attempt 1 -> wait 2 sec
                             * Attempt 2 -> wait 4 sec
                             */

                            long waitTime =
                                    2000L * (1L << (attempt - 1));

                            Thread.sleep(waitTime);

                        } catch (InterruptedException e) {

                            Thread.currentThread().interrupt();

                            return "AI request was interrupted.";
                        }

                        continue;
                    }


                    return "The AI service is temporarily busy. Please try again in a few seconds.";
                }


                /*
                 * OTHER API ERRORS
                 */

                System.out.println(
                        "===================================="
                );

                System.out.println(
                        "GEMINI API ERROR"
                );

                System.out.println(
                        "HTTP STATUS: "
                        + responseCode
                );

                System.out.println(
                        "RESPONSE: "
                        + response
                );

                System.out.println(
                        "===================================="
                );


                return "Sorry, I could not process your request right now.";


            } catch (Exception e) {

                System.out.println(
                        "===================================="
                );

                System.out.println(
                        "GEMINI CONNECTION ERROR"
                );

                System.out.println(
                        "ERROR: "
                        + e.getMessage()
                );

                e.printStackTrace();

                System.out.println(
                        "===================================="
                );


                if (attempt < maxAttempts) {

                    try {

                        Thread.sleep(2000);

                    } catch (InterruptedException ex) {

                        Thread.currentThread().interrupt();

                        return "AI request was interrupted.";
                    }

                    continue;
                }


                return "Sorry, something went wrong while connecting to the AI.";


            } finally {

                if (connection != null) {
                    connection.disconnect();
                }
            }
        }


        return "The AI service is temporarily unavailable.";
    }
}