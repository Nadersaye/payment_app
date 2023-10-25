import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/core/utils/payment_keys.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class PaymentService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        token: PaymentKeys.secretKey,
        url: 'https://api.stripe.com/v1/payment_intents');
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
