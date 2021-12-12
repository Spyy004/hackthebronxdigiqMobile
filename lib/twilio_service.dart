import 'package:twilio_flutter/twilio_flutter.dart';

class TwilioService
{
  late TwilioFlutter twilioFlutter;
  void setAccount(){
    twilioFlutter = TwilioFlutter(accountSid: "AC7a292328a0d7b3014f17249e9ae42d79", authToken: "406733dbbe480de47ddc854b9c78df17", twilioNumber: "18383848512");
  }
  void verifyPhoneNumber(){

  }
  void sendSms(int z, String idline, String idName)async{

      await twilioFlutter.sendSMS(toNumber: "919834136328",
          messageBody: "Hey There Ayush, you are the leader of the queue #${idline}, ${idName}");
  }
}