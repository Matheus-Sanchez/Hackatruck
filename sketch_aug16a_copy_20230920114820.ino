#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
//objetos das classes WiFiClient e HTTPClient 
WiFiClient client;
HTTPClient httpClient;
//configurações de Wi-Fi e URL que o ESP8266 usará para se conectar à rede Wi-Fi e enviar os dados para o servidor web.
const char *WIFI_SSID = "HackaTruck";
const char *WIFI_PASSWORD = "eiaTruck2016";
const char *URL = "http://192.168.128.172:1880/umidadePOST";

int output_value ;
int sensor_pin = A0;

int umidade;


 //inicia a comunicação serial para depuração, conecta-se à rede Wi-Fi especificada e aguarda até que a conexão seja estabelecida antes de continuar.

void setup(){
    Serial.begin(115200); 
    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    Serial.println("Connected");
    delay(2000);


Serial.begin(9600);
 Serial.println("www.usinainfo.com.br");
 pinMode(13, OUTPUT);
}
// faz o POST da variavel na URL do Node-Red.
void loop(){

 umidade = analogRead(A0);
 int Porcento = map(umidade, 1023, 0, 0, 100);
 String data = "umidade="+String(Porcento);

     httpClient.begin(client, URL);
    httpClient.addHeader("Content-Type", "application/x-www-form-urlencoded");
    //faz uma solicitação POST para o servidor web.
    httpClient.POST(String(data));
    String content = httpClient.getString();
    httpClient.end();

    Serial.print(Porcento); 
    Serial.print("\n resposta");   
    Serial.println(content);
  
 Serial.print(Porcento);
 Serial.println("%");
 if(Porcento <=70)
 {
 Serial.println("Irrigando...");
 digitalWrite(13, HIGH);
 }
 
 else
 {
 digitalWrite(13, LOW);
 }
 delay(1000);






    
}
